library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.Functions.SizeCountNTimes;
use work.Settings.USB_BURST_WRITE_LENGTH;
use work.FIFORecords.all;
use work.FX3ConfigRecords.all;

entity FX3Statemachine is
	port(
		Clock_CI                    : in  std_logic;
		Reset_RI                    : in  std_logic;

		-- USB FIFO flags
		USBFifoThread0Full_SI       : in  std_logic;
		USBFifoThread0AlmostFull_SI : in  std_logic;
		USBFifoThread1Full_SI       : in  std_logic;
		USBFifoThread1AlmostFull_SI : in  std_logic;

		-- USB FIFO control lines
		USBFifoWrite_SBO            : out std_logic;
		USBFifoPktEnd_SBO           : out std_logic;
		USBFifoAddress_DO           : out std_logic_vector(1 downto 0);

		-- Input FIFO (from Multiplexer)
		InFifoControl_SI            : in  tFromFifoReadSide;
		InFifoControl_SO            : out tToFifoReadSide;

		-- Configuration input
		FX3Config_DI                : in  tFX3Config);
end FX3Statemachine;

architecture Behavioral of FX3Statemachine is
	attribute syn_enum_encoding : string;

	type tState is (stSwitchToIdle0, stSwitchToPrepareWrite0, stIdle0, stEarlyPacket0, stEarlyPacketSwitch0, stPrepareWrite0, stWriteFirst0, stWriteMiddle0, stWriteLast0, stPrepareSwitch0, stSwitch0,
	                stSwitchToIdle1, stSwitchToPrepareWrite1, stIdle1, stEarlyPacket1, stEarlyPacketSwitch1, stPrepareWrite1, stWriteFirst1, stWriteMiddle1, stWriteLast1, stPrepareSwitch1, stSwitch1);
	attribute syn_enum_encoding of tState : type is "onehot";

	-- present and next state
	signal State_DP, State_DN : tState;

	-- USB thread constants (for switching when current buffer full)
	constant USB_THREAD0 : std_logic_vector := "00";
	constant USB_THREAD1 : std_logic_vector := "01";
	-- constant USB_THREAD2 : std_logic_vector := "10";
	-- constant USB_THREAD3 : std_logic_vector := "11";

	-- number of intermediate writes to perform
	constant USB_BURST_WRITE_CYCLES : integer := USB_BURST_WRITE_LENGTH - 2;
	constant USB_BURST_WRITE_WIDTH  : integer := SizeCountNTimes(USB_BURST_WRITE_CYCLES);

	-- write burst counter
	signal CyclesCount_S, CyclesNotify_S : std_logic;

	-- early packet counter, to keep a certain flow of USB traffic going even in the case of low event rates
	signal EarlyPacketClear_S, EarlyPacketNotify_S : std_logic;

	-- Delay switch between different threads to allow for clean signal transitions.
	signal SwitchDelayCount_S, SwitchDelayDone_S : std_logic;

	-- register outputs for better behavior
	signal USBFifoWriteReg_SB, USBFifoPktEndReg_SB    : std_logic;
	signal USBFifoAddressReg_DP, USBFifoAddressReg_DN : std_logic_vector(1 downto 0);

	-- Double register configuration input, since it comes from a different clock domain (LogicClock), it
	-- needs to go through a double-flip-flop synchronizer to guarantee correctness.
	signal FX3ConfigSyncReg_D, FX3ConfigReg_D : tFX3Config;
begin
	writeCyclesCounter : entity work.ContinuousCounter
		generic map(
			SIZE => USB_BURST_WRITE_WIDTH)
		port map(
			Clock_CI     => Clock_CI,
			Reset_RI     => Reset_RI,
			Clear_SI     => '0',
			Enable_SI    => CyclesCount_S,
			DataLimit_DI => to_unsigned(USB_BURST_WRITE_CYCLES - 1, USB_BURST_WRITE_WIDTH),
			Overflow_SO  => CyclesNotify_S,
			Data_DO      => open);

	earlyPacketCounter : entity work.ContinuousCounter
		generic map(
			SIZE              => USB_EARLY_PACKET_SIZE,
			RESET_ON_OVERFLOW => false)
		port map(
			Clock_CI     => Clock_CI,
			Reset_RI     => Reset_RI,
			Clear_SI     => EarlyPacketClear_S,
			Enable_SI    => '1',
			DataLimit_DI => FX3ConfigReg_D.EarlyPacketDelay_D,
			Overflow_SO  => EarlyPacketNotify_S,
			Data_DO      => open);

	-- Delay thread switch by two cycles.
	switchDelayCounter : entity work.ContinuousCounter
		generic map(
			SIZE => 2)
		port map(
			Clock_CI     => Clock_CI,
			Reset_RI     => Reset_RI,
			Clear_SI     => '0',
			Enable_SI    => SwitchDelayCount_S,
			DataLimit_DI => to_unsigned(2, 2),
			Overflow_SO  => SwitchDelayDone_S,
			Data_DO      => open);

	p_memoryless : process(State_DP, CyclesNotify_S, EarlyPacketNotify_S, SwitchDelayDone_S, USBFifoThread0Full_SI, USBFifoThread0AlmostFull_SI, USBFifoThread1Full_SI, USBFifoThread1AlmostFull_SI, InFifoControl_SI, FX3ConfigReg_D, USBFifoAddressReg_DP)
	begin
		State_DN <= State_DP;           -- Keep current state by default.

		CyclesCount_S <= '0';           -- Do not count up in the write-cycles counter.

		EarlyPacketClear_S <= '0';      -- Do not clear the early packet counter.

		SwitchDelayCount_S <= '0';

		USBFifoWriteReg_SB   <= '1';
		USBFifoPktEndReg_SB  <= '1';
		USBFifoAddressReg_DN <= USBFifoAddressReg_DP;

		InFifoControl_SO.Read_S <= '0'; -- Don't read from input FIFO until we know we can write.

		case State_DP is
			when stSwitchToIdle0 =>
				USBFifoAddressReg_DN <= USB_THREAD0; -- Access Thread 0.

				-- Add some cycles delay when switching threads. So that the old address
				-- is kept stable a few more cycles after we finish writing, and the new
				-- one is for sure stable before we resume writing in the new thread.
				SwitchDelayCount_S <= '1';

				if SwitchDelayDone_S then
					State_DN           <= stIdle0;
					EarlyPacketClear_S <= '1';
				end if;

			when stSwitchToPrepareWrite0 =>
				USBFifoAddressReg_DN <= USB_THREAD0; -- Access Thread 0.

				-- Add some cycles delay when switching threads. So that the old address
				-- is kept stable a few more cycles after we finish writing, and the new
				-- one is for sure stable before we resume writing in the new thread.
				SwitchDelayCount_S <= '1';

				if SwitchDelayDone_S then
					State_DN           <= stPrepareWrite0;
					EarlyPacketClear_S <= '1';
				end if;

			when stIdle0 =>
				if FX3ConfigReg_D.Run_S then
					if not USBFifoThread0Full_SI then
						if EarlyPacketNotify_S then
							State_DN <= stEarlyPacket0;
						elsif not InFifoControl_SI.AlmostEmpty_S then
							State_DN <= stPrepareWrite0;
						end if;
					end if;
				else
					-- If not running, just drain the FIFO.
					if not InFifoControl_SI.Empty_S then
						InFifoControl_SO.Read_S <= '1';
					end if;

					-- Keep the Early Packet counter in reset when not running.
					EarlyPacketClear_S <= '1';
				end if;

			when stEarlyPacket0 =>
				-- Wait for one more piece of data to be ready, then write it and assert
				-- PKTEND at the same time. This results in a short packet containing the
				-- current buffer contents. Without also writing here (asserting SLWR),
				-- the FX3 would generate only a ZLP (Zero Length Packet).
				if not InFifoControl_SI.Empty_S then
					State_DN                <= stEarlyPacketSwitch0;
					InFifoControl_SO.Read_S <= '1';

					USBFifoWriteReg_SB  <= '0';
					USBFifoPktEndReg_SB <= '0';
				elsif not FX3ConfigReg_D.Run_S then
					-- Prevent the state machine from getting stuck here waiting on data
					-- that may never come. If Run_S is zero, ensure we go back to Idle.
					State_DN <= stIdle0;
				end if;

			when stEarlyPacketSwitch0 =>
				-- Add some cycles delay when switching threads. So that the old address
				-- is kept stable a few more cycles after we finish writing, and the new
				-- one is for sure stable before we resume writing in the new thread.
				SwitchDelayCount_S <= '1';

				if SwitchDelayDone_S then
					State_DN <= stSwitchToIdle1;
				end if;

			when stPrepareWrite0 =>
				State_DN                <= stWriteFirst0;
				InFifoControl_SO.Read_S <= '1';
				USBFifoWriteReg_SB      <= '0';

			when stWriteFirst0 =>
				if USBFifoThread0AlmostFull_SI then
					State_DN <= stPrepareSwitch0;
				else
					State_DN <= stWriteMiddle0;
				end if;

				InFifoControl_SO.Read_S <= '1';
				USBFifoWriteReg_SB      <= '0';

			when stWriteMiddle0 =>
				if CyclesNotify_S then
					State_DN <= stWriteLast0;
				end if;

				CyclesCount_S <= '1';

				InFifoControl_SO.Read_S <= '1';
				USBFifoWriteReg_SB      <= '0';

			when stWriteLast0 =>
				if InFifoControl_SI.AlmostEmpty_S or not FX3ConfigReg_D.Run_S then
					State_DN <= stIdle0;
				else
					State_DN                <= stWriteFirst0;
					InFifoControl_SO.Read_S <= '1';
					USBFifoWriteReg_SB      <= '0';
				end if;

			when stPrepareSwitch0 =>
				if CyclesNotify_S then
					State_DN <= stSwitch0;
				end if;

				CyclesCount_S <= '1';

				InFifoControl_SO.Read_S <= '1';
				USBFifoWriteReg_SB      <= '0';

			when stSwitch0 =>
				-- Add some cycles delay when switching threads. So that the old address
				-- is kept stable a few more cycles after we finish writing, and the new
				-- one is for sure stable before we resume writing in the new thread.
				SwitchDelayCount_S <= '1';

				if SwitchDelayDone_S then
					if InFifoControl_SI.AlmostEmpty_S or USBFifoThread1Full_SI or not FX3ConfigReg_D.Run_S then
						State_DN <= stSwitchToIdle1;
					else
						State_DN <= stSwitchToPrepareWrite1;
					end if;
				end if;

			when stSwitchToIdle1 =>
				USBFifoAddressReg_DN <= USB_THREAD1; -- Access Thread 1.

				-- Add some cycles delay when switching threads. So that the old address
				-- is kept stable a few more cycles after we finish writing, and the new
				-- one is for sure stable before we resume writing in the new thread.
				SwitchDelayCount_S <= '1';

				if SwitchDelayDone_S then
					State_DN           <= stIdle1;
					EarlyPacketClear_S <= '1';
				end if;

			when stSwitchToPrepareWrite1 =>
				USBFifoAddressReg_DN <= USB_THREAD1; -- Access Thread 1.

				-- Add some cycles delay when switching threads. So that the old address
				-- is kept stable a few more cycles after we finish writing, and the new
				-- one is for sure stable before we resume writing in the new thread.
				SwitchDelayCount_S <= '1';

				if SwitchDelayDone_S then
					State_DN           <= stPrepareWrite1;
					EarlyPacketClear_S <= '1';
				end if;

			when stIdle1 =>
				if FX3ConfigReg_D.Run_S then
					if not USBFifoThread1Full_SI then
						if EarlyPacketNotify_S then
							State_DN <= stEarlyPacket1;
						elsif not InFifoControl_SI.AlmostEmpty_S then
							State_DN <= stPrepareWrite1;
						end if;
					end if;
				else
					-- On definitive NOT_RUN, we go back to Idle0, so that on resume
					-- USB_THREAD0 is selected as address.
					State_DN <= stSwitchToIdle0;
				end if;

			when stEarlyPacket1 =>
				-- Wait for one more piece of data to be ready, then write it and assert
				-- PKTEND at the same time. This results in a short packet containing the
				-- current buffer contents. Without also writing here (asserting SLWR),
				-- the FX3 would generate only a ZLP (Zero Length Packet).
				if not InFifoControl_SI.Empty_S then
					State_DN                <= stEarlyPacketSwitch1;
					InFifoControl_SO.Read_S <= '1';

					USBFifoWriteReg_SB  <= '0';
					USBFifoPktEndReg_SB <= '0';
				elsif not FX3ConfigReg_D.Run_S then
					-- Prevent the state machine from getting stuck here waiting on data
					-- that may never come. If Run_S is zero, ensure we go back to Idle.
					State_DN <= stIdle1;
				end if;

			when stEarlyPacketSwitch1 =>
				-- Add some cycles delay when switching threads. So that the old address
				-- is kept stable a few more cycles after we finish writing, and the new
				-- one is for sure stable before we resume writing in the new thread.
				SwitchDelayCount_S <= '1';

				if SwitchDelayDone_S then
					State_DN <= stSwitchToIdle0;
				end if;

			when stPrepareWrite1 =>
				State_DN                <= stWriteFirst1;
				InFifoControl_SO.Read_S <= '1';
				USBFifoWriteReg_SB      <= '0';

			when stWriteFirst1 =>
				if USBFifoThread1AlmostFull_SI then
					State_DN <= stPrepareSwitch1;
				else
					State_DN <= stWriteMiddle1;
				end if;

				InFifoControl_SO.Read_S <= '1';
				USBFifoWriteReg_SB      <= '0';

			when stWriteMiddle1 =>
				if CyclesNotify_S then
					State_DN <= stWriteLast1;
				end if;

				CyclesCount_S <= '1';

				InFifoControl_SO.Read_S <= '1';
				USBFifoWriteReg_SB      <= '0';

			when stWriteLast1 =>
				if InFifoControl_SI.AlmostEmpty_S or not FX3ConfigReg_D.Run_S then
					State_DN <= stIdle1;
				else
					State_DN                <= stWriteFirst1;
					InFifoControl_SO.Read_S <= '1';
					USBFifoWriteReg_SB      <= '0';
				end if;

			when stPrepareSwitch1 =>
				if CyclesNotify_S then
					State_DN <= stSwitch1;
				end if;

				CyclesCount_S <= '1';

				InFifoControl_SO.Read_S <= '1';
				USBFifoWriteReg_SB      <= '0';

			when stSwitch1 =>
				-- Add some cycles delay when switching threads. So that the old address
				-- is kept stable a few more cycles after we finish writing, and the new
				-- one is for sure stable before we resume writing in the new thread.
				SwitchDelayCount_S <= '1';

				if SwitchDelayDone_S then
					if InFifoControl_SI.AlmostEmpty_S or USBFifoThread0Full_SI or not FX3ConfigReg_D.Run_S then
						State_DN <= stSwitchToIdle0;
					else
						State_DN <= stSwitchToPrepareWrite0;
					end if;
				end if;

			when others => null;
		end case;
	end process p_memoryless;

	-- Change state on clock edge (synchronous).
	p_memoryzing : process(Clock_CI, Reset_RI)
	begin
		if Reset_RI then                -- asynchronous reset (active-high for FPGAs)
			State_DP <= stIdle0;

			USBFifoWrite_SBO     <= '1';
			USBFifoPktEnd_SBO    <= '1';
			USBFifoAddressReg_DP <= USB_THREAD0;

			-- USB config from another clock domain.
			FX3ConfigReg_D     <= tFX3ConfigDefault;
			FX3ConfigSyncReg_D <= tFX3ConfigDefault;
		elsif rising_edge(Clock_CI) then
			State_DP <= State_DN;

			USBFifoWrite_SBO     <= USBFifoWriteReg_SB;
			USBFifoPktEnd_SBO    <= USBFifoPktEndReg_SB;
			USBFifoAddressReg_DP <= USBFifoAddressReg_DN;

			-- USB config from another clock domain.
			FX3ConfigReg_D     <= FX3ConfigSyncReg_D;
			FX3ConfigSyncReg_D <= FX3Config_DI;
		end if;
	end process p_memoryzing;

	USBFifoAddress_DO <= USBFifoAddressReg_DP;
end Behavioral;
