library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.EventCodes.all;
use work.FIFORecords.all;
use work.GenericAERConfigRecords.all;

entity GenericAERStateMachine is
	generic(
		AER_BUS_WIDTH     : integer;
		ENABLE_STATISTICS : boolean := false);
	port(
		Clock_CI            : in  std_logic;
		Reset_RI            : in  std_logic;

		-- Fifo output (to Multiplexer)
		OutFifoControl_SI   : in  tFromFifoWriteSide;
		OutFifoControl_SO   : out tToFifoWriteSide;
		OutFifoData_DO      : out std_logic_vector(EVENT_WIDTH - 1 downto 0);

		AERData_DI          : in  std_logic_vector(AER_BUS_WIDTH - 1 downto 0);
		AERReq_SBI          : in  std_logic;
		AERAck_SBO          : out std_logic;
		AERReset_SBO        : out std_logic;

		-- Configuration input and output
		AERConfig_DI        : in  tGenericAERConfig;
		AERConfigInfoOut_DO : out tGenericAERConfigInfoOut);
end GenericAERStateMachine;

architecture Behavioral of GenericAERStateMachine is
	attribute syn_enum_encoding : string;

	type tState is (stIdle, stAERCapture, stAERWrite, stAERAck, stFIFOFull);
	attribute syn_enum_encoding of tState : type is "onehot";

	-- present and next state
	signal State_DP, State_DN : tState;

	-- Counter to influence acknowledge delays.
	signal AckCount_S, AckDone_S : std_logic;
	signal AckLimit_D            : unsigned(GENERIC_AER_ACK_COUNTER_WIDTH - 1 downto 0);

	-- Data incoming from AER bus.
	signal ChipAERDataCapture_S : std_logic;
	signal ChipAERData_D        : std_logic_vector(AER_BUS_WIDTH - 1 downto 0);

	-- AER event.
	signal AEREventDataReg_D  : std_logic_vector(EVENT_WIDTH - 1 downto 0);
	signal AEREventValidReg_S : std_logic;

	-- Register outputs to AER bus.
	signal AERAckReg_SB   : std_logic;
	signal AERResetReg_SB : std_logic;

	-- Register configuration input and output.
	signal AERConfigReg_D : tGenericAERConfig;

	-- Statistics support.
	signal StatisticsEvents_SP, StatisticsEvents_SN               : std_logic;
	signal StatisticsEventsDropped_SP, StatisticsEventsDropped_SN : std_logic;
begin
	assert (AER_BUS_WIDTH <= 12) report "AER bus width cannot be greater than 12 bits, due to event encoding." severity FAILURE;

	aerAckCounter : entity work.ContinuousCounter
		generic map(
			SIZE => GENERIC_AER_ACK_COUNTER_WIDTH)
		port map(Clock_CI     => Clock_CI,
		         Reset_RI     => Reset_RI,
		         Clear_SI     => '0',
		         Enable_SI    => AckCount_S,
		         DataLimit_DI => AckLimit_D,
		         Overflow_SO  => AckDone_S,
		         Data_DO      => open);

	handleAERComb : process(State_DP, OutFifoControl_SI, AERReq_SBI, AERConfigReg_D, AckDone_S, ChipAERData_D)
	begin
		State_DN <= State_DP;           -- Keep current state by default.

		AEREventValidReg_S <= '0';
		AEREventDataReg_D  <= (others => '0');

		ChipAERDataCapture_S <= '0';

		AERAckReg_SB   <= '1';          -- No AER ACK by default.
		AERResetReg_SB <= '1';          -- Keep AER bus out of reset by default, so we don't have to repeat this in every state.

		AckCount_S <= '0';
		AckLimit_D <= (others => '1');

		StatisticsEvents_SN        <= '0';
		StatisticsEventsDropped_SN <= '0';

		case State_DP is
			when stIdle =>
				-- Only exit idle state if AER bus data producer is active.
				if AERConfigReg_D.Run_S then
					if not AERReq_SBI then
						if not OutFifoControl_SI.Full_S then
							-- Got a request on the AER bus, let's get the data.
							-- We do have space in the output FIFO for it.
							State_DN <= stAERCapture;
						elsif not AERConfigReg_D.WaitOnTransferStall_S then
							-- FIFO full, keep ACKing.
							State_DN <= stFIFOFull;

							StatisticsEventsDropped_SN <= '1';
						end if;
					end if;
				else
					if AERConfigReg_D.ExternalAERControl_S then
						-- Support handing off control of AER to external systems connected through the CAVIAR
						-- connector on the board. This ensures the chip is kept out of reset and the ACK is
						-- not driven from our logic.
						AERAckReg_SB   <= 'Z';
						AERResetReg_SB <= '1';
					else
						-- Keep the AER bus in reset if data producer turned off.
						AERResetReg_SB <= '0';
					end if;
				end if;

			when stFIFOFull =>
				-- Output FIFO is full, just ACK the data, so that, when
				-- we'll have space in the FIFO again, the newest piece of
				-- data is the next to be inserted, and not stale old data.
				AERAckReg_SB <= AERReq_SBI;

				-- Only go back to idle when FIFO has space again, and when
				-- the sender is not requesting (to avoid AER races).
				if not OutFifoControl_SI.Full_S and AERReq_SBI then
					State_DN <= stIdle;
				end if;

			when stAERCapture =>
				AckLimit_D <= AERConfigReg_D.AckDelay_D;

				-- We might need to delay the data capture and subsequent ACK.
				if AckDone_S then
					ChipAERDataCapture_S <= '1';

					State_DN <= stAERWrite;
				end if;

				AckCount_S <= '1';

			when stAERWrite =>
				AERAckReg_SB <= '0';

				-- AER address.
				AEREventDataReg_D(EVENT_WIDTH - 1 downto EVENT_WIDTH - 3) <= EVENT_CODE_Y_ADDR;
				AEREventDataReg_D(AER_BUS_WIDTH - 1 downto 0)             <= ChipAERData_D;

				AEREventValidReg_S <= '1';

				StatisticsEvents_SN <= '1';

				State_DN <= stAERAck;

			when stAERAck =>
				AERAckReg_SB <= '0';

				AckLimit_D <= AERConfigReg_D.AckExtension_D;

				if AERReq_SBI then
					-- We might need to extend the ACK period.
					if AckDone_S then
						State_DN <= stIdle;
					end if;

					AckCount_S <= '1';
				end if;

			when others => null;
		end case;
	end process handleAERComb;

	-- Change state on clock edge (synchronous).
	handleAERRegisterUpdate : process(Clock_CI, Reset_RI)
	begin
		if Reset_RI then                -- asynchronous reset (active-high for FPGAs)
			State_DP <= stIdle;

			AERAck_SBO   <= '1';
			AERReset_SBO <= '0';

			AERConfigReg_D <= tGenericAERConfigDefault;
		elsif rising_edge(Clock_CI) then
			State_DP <= State_DN;

			AERAck_SBO   <= AERAckReg_SB;
			AERReset_SBO <= AERResetReg_SB;

			AERConfigReg_D <= AERConfig_DI;
		end if;
	end process handleAERRegisterUpdate;

	chipAERDataRegister : entity work.SimpleRegister
		generic map(
			SIZE => AER_BUS_WIDTH)
		port map(
			Clock_CI  => Clock_CI,
			Reset_RI  => Reset_RI,
			Enable_SI => ChipAERDataCapture_S,
			Input_SI  => AERData_DI,
			Output_SO => ChipAERData_D);

	aerEventDataRegister : entity work.SimpleRegister
		generic map(
			SIZE => EVENT_WIDTH)
		port map(
			Clock_CI  => Clock_CI,
			Reset_RI  => Reset_RI,
			Enable_SI => AEREventValidReg_S,
			Input_SI  => AEREventDataReg_D,
			Output_SO => OutFifoData_DO);

	aerEventValidRegister : entity work.SimpleRegister
		generic map(
			SIZE => 1)
		port map(
			Clock_CI     => Clock_CI,
			Reset_RI     => Reset_RI,
			Enable_SI    => '1',
			Input_SI(0)  => AEREventValidReg_S,
			Output_SO(0) => OutFifoControl_SO.Write_S);

	statisticsSupport : if ENABLE_STATISTICS generate
		StatisticsEventsReg : entity work.SimpleRegister
			generic map(
				SIZE => 1)
			port map(
				Clock_CI     => Clock_CI,
				Reset_RI     => Reset_RI,
				Enable_SI    => '1',
				Input_SI(0)  => StatisticsEvents_SN,
				Output_SO(0) => StatisticsEvents_SP);

		StatisticsEventsCounter : entity work.Counter
			generic map(
				SIZE => TRANSACTION_COUNTER_WIDTH)
			port map(
				Clock_CI  => Clock_CI,
				Reset_RI  => Reset_RI,
				Clear_SI  => not AERConfigReg_D.Run_S,
				Enable_SI => StatisticsEvents_SP,
				Data_DO   => AERConfigInfoOut_DO.StatisticsEvents_D);

		StatisticsEventsDroppedReg : entity work.SimpleRegister
			generic map(
				SIZE => 1)
			port map(
				Clock_CI     => Clock_CI,
				Reset_RI     => Reset_RI,
				Enable_SI    => '1',
				Input_SI(0)  => StatisticsEventsDropped_SN,
				Output_SO(0) => StatisticsEventsDropped_SP);

		StatisticsEventsDroppedCounter : entity work.Counter
			generic map(
				SIZE => TRANSACTION_COUNTER_WIDTH)
			port map(
				Clock_CI  => Clock_CI,
				Reset_RI  => Reset_RI,
				Clear_SI  => not AERConfigReg_D.Run_S,
				Enable_SI => StatisticsEventsDropped_SP,
				Data_DO   => AERConfigInfoOut_DO.StatisticsEventsDropped_D);
	end generate statisticsSupport;
end Behavioral;
