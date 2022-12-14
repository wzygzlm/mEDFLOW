library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.ceil;
use ieee.math_real.log2;
use work.EventCodes.all;
use work.Settings.LOGIC_CLOCK_FREQ_REAL;
use work.FIFORecords.all;
use work.ShiftRegisterModes.all;
use work.IMUConfigRecords.all;

entity IMUStateMachine is
	port(
		Clock_CI          : in    std_logic;
		Reset_RI          : in    std_logic;

		-- Fifo output (to Multiplexer)
		OutFifoControl_SI : in    tFromFifoWriteSide;
		OutFifoControl_SO : out   tToFifoWriteSide;
		OutFifoData_DO    : out   std_logic_vector(EVENT_WIDTH - 1 downto 0);

		IMUClock_CZO      : out   std_logic;
		IMUData_DZIO      : inout std_logic;
		IMUInterrupt_SI   : in    std_logic;

		-- Configuration input
		IMUConfig_DI      : in    tIMUConfig);
end entity IMUStateMachine;

architecture Behavioral of IMUStateMachine is
	attribute syn_enum_encoding : string;

	type tState is (stIdle, stAckAndLoadSampleRateDivider, stAckAndLoadDigitalLowPassFilter, stAckAndLoadAccelFullScale, stAckAndLoadGyroFullScale, stWriteConfigRegister, stPrepareReadDataRegister, stReadDataRegister, stWriteEventStart, stWriteEvent0, stWriteEvent1, stWriteEvent2, stWriteEvent3,
	                stWriteEvent4, stWriteEvent5, stWriteEvent6, stWriteEvent7, stWriteEvent8, stWriteEvent9, stWriteEvent10, stWriteEvent11, stWriteEvent12, stWriteEvent13, stWriteEventEnd, stAckAndLoadLPCycleTempStandby, stAckAndLoadLPWakeupAccelStandbyGyroStandby, stAckAndLoadInterruptConfig,
	                stAckAndLoadInterruptEnable, stDoneAcknowledge, stVerifyScaleNoChange, stWriteEventScale);
	attribute syn_enum_encoding of tState : type is "onehot";

	-- present and next state
	signal State_DP, State_DN : tState;

	type tI2CState is (stI2CIdle, stI2CHandleTransaction, stI2CDone, stI2CStart, stI2CStop, stI2CWriteByte, stI2CWriteAck, stI2CReadByte, stI2CReadAck, stI2CReadNotAck);
	attribute syn_enum_encoding of tI2CState : type is "onehot";

	-- present and next state
	signal I2CState_DP, I2CState_DN : tI2CState;

	constant I2C_ADDRESS : std_logic_vector(6 downto 0) := "1101000";

	type tI2CRegisterAddresses is record
		Data              : unsigned(7 downto 0);
		PowerManagement1  : unsigned(7 downto 0);
		PowerManagement2  : unsigned(7 downto 0);
		IntConfig         : unsigned(7 downto 0);
		IntEnable         : unsigned(7 downto 0);
		SampleRateDivider : unsigned(7 downto 0);
		DLFPConfig        : unsigned(7 downto 0);
		GyroConfig        : unsigned(7 downto 0);
		AccelConfig       : unsigned(7 downto 0);
	end record tI2CRegisterAddresses;

	constant I2C_REGISTER_ADDRESSES : tI2CRegisterAddresses := (
		Data              => to_unsigned(59, 8),
		PowerManagement1  => to_unsigned(107, 8),
		PowerManagement2  => to_unsigned(108, 8),
		IntConfig         => to_unsigned(55, 8),
		IntEnable         => to_unsigned(56, 8),
		SampleRateDivider => to_unsigned(25, 8),
		DLFPConfig        => to_unsigned(26, 8),
		GyroConfig        => to_unsigned(27, 8),
		AccelConfig       => to_unsigned(28, 8));

	constant I2C_CYCLES            : integer := integer((LOGIC_CLOCK_FREQ_REAL * 10.0) / 16.0);
	constant I2C_CYCLES_SIZE       : integer := integer(ceil(log2(real(I2C_CYCLES + 1))));
	constant I2C_WRITE_SIZE        : integer := 3;
	constant I2C_READ_SIZE         : integer := 14;
	constant I2C_BYTE_COUNTER_SIZE : integer := integer(ceil(log2(real(I2C_WRITE_SIZE + I2C_READ_SIZE + 3))));

	signal I2CStartTransaction_SP, I2CStartTransaction_SN : std_logic;
	signal I2CReadTransaction_SP, I2CReadTransaction_SN   : std_logic;
	signal I2CDone_SP, I2CDone_SN                         : std_logic;
	signal I2CError_SP, I2CError_SN                       : std_logic;

	signal I2CPulseGenReset_S  : std_logic;
	signal I2CPulseGenOutput_S : std_logic;

	signal I2CWriteSRMode_S    : std_logic_vector(SHIFTREGISTER_MODE_SIZE - 1 downto 0);
	signal I2CWriteSRModeExt_S : std_logic_vector(SHIFTREGISTER_MODE_SIZE - 1 downto 0);
	signal I2CWriteSRInput_D   : std_logic_vector((I2C_WRITE_SIZE * 8) - 1 downto 0);
	signal I2CWriteSROutput_D  : std_logic_vector((I2C_WRITE_SIZE * 8) - 1 downto 0);

	signal I2CReadSRMode_S   : std_logic_vector(SHIFTREGISTER_MODE_SIZE - 1 downto 0);
	signal I2CReadSRInput_D  : std_logic;
	signal I2CReadSROutput_D : std_logic_vector((I2C_READ_SIZE * 8) - 1 downto 0);

	signal I2CPulseCounterClear_S : std_logic;
	signal I2CPulseCounterData_D  : unsigned(1 downto 0);

	signal I2CBitCounterClear_S  : std_logic;
	signal I2CBitCounterEnable_S : std_logic;
	signal I2CBitCounterData_D   : unsigned(2 downto 0);

	signal I2CByteCounterClear_S  : std_logic;
	signal I2CByteCounterEnable_S : std_logic;
	signal I2CByteCounterData_D   : unsigned(I2C_BYTE_COUNTER_SIZE - 1 downto 0);

	signal IMUClockInt_SP, IMUClockInt_SN : std_logic;
	signal IMUDataInt_SP, IMUDataInt_SN   : std_logic;

	-- Register scale information for sending after read done.
	signal ScaleRegEnable_S : std_logic;
	signal ScaleReg_D       : std_logic_vector(3 downto 0);

	-- Register outputs to FIFO.
	signal OutFifoWriteReg_S : std_logic;
	signal OutFifoDataReg_D  : std_logic_vector(EVENT_WIDTH - 1 downto 0);

	-- Register configuration inputs.
	signal IMUConfigReg_D : tIMUConfig;

	signal RunDelayed_S                                                      : std_logic;
	signal RunChanged_S, RunSent_S                                           : std_logic;
	signal InterruptConfigChanged_S, InterruptConfigSent_S                   : std_logic;
	signal InterruptEnableChanged_S, InterruptEnableSent_S                   : std_logic;
	signal LPCycleTempStandbyChanged_S, LPCycleTempStandbySent_S             : std_logic;
	signal LPWakeupAccelGyroStandbyChanged_S, LPWakeupAccelGyroStandbySent_S : std_logic;
	signal SampleRateDividerChanged_S, SampleRateDividerSent_S               : std_logic;
	signal DigitalLowPassFilterChanged_S, DigitalLowPassFilterSent_S         : std_logic;
	signal AccelFullScaleChanged_S, AccelFullScaleSent_S                     : std_logic;
	signal GyroFullScaleChanged_S, GyroFullScaleSent_S                       : std_logic;
begin
	IMUClock_CZO <= '0' when IMUClockInt_SP = '0' else 'Z';
	IMUData_DZIO <= '0' when IMUDataInt_SP = '0' else 'Z';

	-- Input to the I2C shift registers comes always from outside.
	-- The read SR from the I2C bus directly, the write SR from the IMU StateMachine.
	I2CReadSRInput_D <= IMUData_DZIO;

	i2cRegisterUpdate : process(Clock_CI, Reset_RI) is
	begin
		if Reset_RI = '1' then
			I2CState_DP <= stI2CIdle;

			I2CStartTransaction_SP <= '0';
			I2CReadTransaction_SP  <= '0';
			I2CDone_SP             <= '0';
			I2CError_SP            <= '0';

			IMUClockInt_SP <= '1';
			IMUDataInt_SP  <= '1';
		elsif rising_edge(Clock_CI) then
			I2CState_DP <= I2CState_DN;

			I2CStartTransaction_SP <= I2CStartTransaction_SN;
			I2CReadTransaction_SP  <= I2CReadTransaction_SN;
			I2CDone_SP             <= I2CDone_SN;
			I2CError_SP            <= I2CError_SN;

			IMUClockInt_SP <= IMUClockInt_SN;
			IMUDataInt_SP  <= IMUDataInt_SN;
		end if;
	end process i2cRegisterUpdate;

	i2cWriteShiftRegister : entity work.ShiftRegister
		generic map(
			SIZE => (I2C_WRITE_SIZE * 8))
		port map(
			Clock_CI         => Clock_CI,
			Reset_RI         => Reset_RI,
			Mode_SI          => I2CWriteSRMode_S or I2CWriteSRModeExt_S,
			DataIn_DI        => '0',
			ParallelWrite_DI => I2CWriteSRInput_D,
			ParallelRead_DO  => I2CWriteSROutput_D);

	i2cReadShiftRegister : entity work.ShiftRegister
		generic map(
			SIZE => (I2C_READ_SIZE * 8))
		port map(
			Clock_CI         => Clock_CI,
			Reset_RI         => Reset_RI,
			Mode_SI          => I2CReadSRMode_S,
			DataIn_DI        => I2CReadSRInput_D,
			ParallelWrite_DI => (others => '0'),
			ParallelRead_DO  => I2CReadSROutput_D);

	i2cPulseGenerator : entity work.PulseGenerator
		generic map(
			SIZE => I2C_CYCLES_SIZE)
		port map(
			Clock_CI         => Clock_CI,
			Reset_RI         => Reset_RI,
			PulsePolarity_SI => '1',
			PulseInterval_DI => to_unsigned(I2C_CYCLES, I2C_CYCLES_SIZE),
			PulseLength_DI   => to_unsigned(1, I2C_CYCLES_SIZE),
			Zero_SI          => I2CPulseGenReset_S,
			PulseOut_SO      => I2CPulseGenOutput_S);

	i2cPulseCounter : entity work.Counter
		generic map(
			SIZE => I2CPulseCounterData_D'length)
		port map(
			Clock_CI     => Clock_CI,
			Reset_RI     => Reset_RI,
			Clear_SI     => I2CPulseCounterClear_S,
			Enable_SI    => I2CPulseGenOutput_S,
			Data_DO      => I2CPulseCounterData_D);

	i2cBitCounter : entity work.Counter
		generic map(
			SIZE => I2CBitCounterData_D'length)
		port map(
			Clock_CI     => Clock_CI,
			Reset_RI     => Reset_RI,
			Clear_SI     => I2CBitCounterClear_S,
			Enable_SI    => I2CBitCounterEnable_S,
			Data_DO      => I2CBitCounterData_D);

	i2cByteCounter : entity work.Counter
		generic map(
			SIZE => I2C_BYTE_COUNTER_SIZE)
		port map(
			Clock_CI     => Clock_CI,
			Reset_RI     => Reset_RI,
			Clear_SI     => I2CByteCounterClear_S,
			Enable_SI    => I2CByteCounterEnable_S,
			Data_DO      => I2CByteCounterData_D);

	i2cClock : process(I2CPulseCounterData_D)
	begin
		if I2CPulseCounterData_D = to_unsigned(2, 2) or I2CPulseCounterData_D = to_unsigned(3, 2) then
			IMUClockInt_SN <= '0';
		else
			IMUClockInt_SN <= '1';
		end if;
	end process i2cClock;

	i2cData : process(I2CState_DP, I2CStartTransaction_SP, I2CReadTransaction_SP, I2CError_SP, I2CBitCounterData_D, I2CByteCounterData_D, I2CPulseCounterData_D, I2CPulseGenOutput_S, I2CWriteSROutput_D, IMUDataInt_SP, IMUData_DZIO)
	begin
		I2CState_DN <= I2CState_DP;

		I2CDone_SN             <= '0';
		I2CError_SN            <= '0';
		I2CPulseGenReset_S     <= '0';
		I2CPulseCounterClear_S <= '0';

		I2CWriteSRMode_S <= SHIFTREGISTER_MODE_DO_NOTHING;
		I2CReadSRMode_S  <= SHIFTREGISTER_MODE_DO_NOTHING;

		I2CBitCounterClear_S  <= '0';
		I2CBitCounterEnable_S <= '0';

		I2CByteCounterClear_S  <= '0';
		I2CByteCounterEnable_S <= '0';

		IMUDataInt_SN <= '1';

		case I2CState_DP is
			when stI2CIdle =>
				if I2CStartTransaction_SP = '1' then
					I2CState_DN <= stI2CHandleTransaction;
				end if;

				-- Keep I2C pulse generator and counter in reset while idle.
				-- This way, the I2C clock will be generated again only when exiting the idle state.
				I2CPulseGenReset_S     <= '1';
				I2CPulseCounterClear_S <= '1';

				-- Ensure all counters are reset.
				I2CBitCounterClear_S  <= '1';
				I2CByteCounterClear_S <= '1';

			when stI2CHandleTransaction =>
				-- Handle read and write transactions, by delegating to the appropriate START/STOP
				-- states, as well as the byte read/write states. Always start with a START.
				-- First byte is always address+WR, followed by the register number. Then, for read
				-- transactions, we get a repeated START, followed by 14 bytes to read. For a write,
				-- we simply write the new register content. Then a STOP to end the transaction.
				-- Keep SDA value when in here.
				IMUDataInt_SN <= IMUDataInt_SP;

				-- Always increment the byte/action counter by one when in this state.
				I2CByteCounterEnable_S <= '1';

				-- First thing, START condition.
				if I2CByteCounterData_D = to_unsigned(0, I2C_BYTE_COUNTER_SIZE) then
					I2CState_DN <= stI2CStart;
				end if;

				-- Then we write two bytes.
				if I2CByteCounterData_D = to_unsigned(1, I2C_BYTE_COUNTER_SIZE) or I2CByteCounterData_D = to_unsigned(2, I2C_BYTE_COUNTER_SIZE) then
					I2CState_DN <= stI2CWriteByte;
				end if;

				-- Then it depends on the transaction type.
				if I2CByteCounterData_D >= to_unsigned(3, I2C_BYTE_COUNTER_SIZE) then
					if I2CReadTransaction_SP = '0' then
						-- Write transaction: just write one more byte, then STOP.
						if I2CByteCounterData_D = to_unsigned(3, I2C_BYTE_COUNTER_SIZE) then
							I2CState_DN <= stI2CWriteByte;
						end if;

						if I2CByteCounterData_D = to_unsigned(4, I2C_BYTE_COUNTER_SIZE) then
							I2CState_DN <= stI2CStop;
						end if;
					else
						-- Read transaction: repeat the START condition, write the address again,
						-- and then read the needed bytes. To simplify, we keep the state that
						-- reads the bytes as default, since that happens most of the time.
						I2CState_DN <= stI2CReadByte;

						if I2CByteCounterData_D = to_unsigned(3, I2C_BYTE_COUNTER_SIZE) then
							I2CState_DN <= stI2CStart;
						end if;

						if I2CByteCounterData_D = to_unsigned(4, I2C_BYTE_COUNTER_SIZE) then
							I2CState_DN <= stI2CWriteByte;
						end if;

						if I2CByteCounterData_D = to_unsigned(I2C_READ_SIZE + 4 + 1, I2C_BYTE_COUNTER_SIZE) then
							I2CState_DN <= stI2CStop;
						end if;
					end if;
				end if;

			when stI2CStart =>
				-- We start off with both SCL and SDA high. Each I2CPulseGenOutput_S occurrence signals
				-- 1/4 of the I2C clock: the data and clock lines, SDA and SCL, are out of phase by
				-- one quarter clock, meaning that data changes in the middle of the clock low phase, as
				-- mandated by the I2C standard, and START/STOP conditions occur while the clock is high.
				if I2CPulseCounterData_D = to_unsigned(1, 2) or I2CPulseCounterData_D = to_unsigned(2, 2) then
					-- Send START condition: SDA goes low, while SCL remains high.
					IMUDataInt_SN <= '0';
				end if;

				-- On the very first phase 2->3 transition, switch to the WriteByte state, so that we can
				-- output our first 8 bits.
				if I2CPulseGenOutput_S = '1' and I2CPulseCounterData_D = to_unsigned(2, 2) then
					I2CState_DN <= stI2CHandleTransaction;
				end if;

			when stI2CStop =>
				if I2CPulseCounterData_D = to_unsigned(3, 2) or I2CPulseCounterData_D = to_unsigned(0, 2) then
					-- Send STOP condition: SDA goes high, while SCL remains high.
					IMUDataInt_SN <= '0';
				end if;

				-- On the phase 0->1 transition, go to the done state, which will pull SDA high,
				-- and pull SCL high by resetting the pulse counter to zero and keeping it there.
				if I2CPulseGenOutput_S = '1' and I2CPulseCounterData_D = to_unsigned(0, 2) then
					I2CState_DN <= stI2CDone;
				end if;

			when stI2CDone =>
				-- Signal DONE and ERROR, and keep them asserted for at least 2 cycles.
				-- SDA is back high, and SCL too, thanks to the pulse counter being kept at zero or one.
				I2CDone_SN             <= '1';
				I2CError_SN            <= I2CError_SP; -- Maintain error.
				I2CPulseCounterClear_S <= '1';

				-- We wait two clock cycles to ensure some delay between consecutive I2C transactions.
				-- Two clock cycles means eight pulses, so we use the bit counter for this.
				if I2CPulseGenOutput_S = '1' then
					I2CBitCounterEnable_S <= '1';
				end if;

				if I2CBitCounterData_D = to_unsigned(7, 3) then
					I2CState_DN <= stI2CIdle;
				end if;

			when stI2CWriteByte =>
				-- We always output the current bit over all four pulse counter values.
				-- The proper handling of when to switch that bit, and later, when to
				-- react to an ACK, is important.
				IMUDataInt_SN <= I2CWriteSROutput_D((I2C_WRITE_SIZE * 8) - 1);

				if I2CPulseGenOutput_S = '1' and I2CPulseCounterData_D = to_unsigned(2, 2) then
					-- On changing from phase 2->3, emit the new bit and count it.
					I2CWriteSRMode_S      <= SHIFTREGISTER_MODE_SHIFT_LEFT;
					I2CBitCounterEnable_S <= '1';

					if I2CBitCounterData_D = to_unsigned(7, 3) then
						I2CState_DN <= stI2CWriteAck;
					end if;
				end if;

			when stI2CWriteAck =>
				-- Keep SDA high (Hi-Z) during ACK, so slave can pull low.
				IMUDataInt_SN <= '1';

				-- Detect if slave pulled low on phase 0->1 transition.
				if I2CPulseGenOutput_S = '1' and I2CPulseCounterData_D = to_unsigned(0, 2) then
					if IMUData_DZIO = '1' then
						-- Failed to ACK, return error and go back to idle.
						I2CState_DN <= stI2CDone;
						I2CError_SN <= '1';
					end if;
				end if;

				if I2CPulseGenOutput_S = '1' and I2CPulseCounterData_D = to_unsigned(2, 2) then
					-- Slave pulled SDA low, acknowledging the sent byte correctly.
					I2CState_DN <= stI2CHandleTransaction;
				end if;

			when stI2CReadByte =>
				-- The I2C write shift register contains the 24 bits needed to start the read
				-- back of the data: address+WR, reg number, address+RD. A repeated START is needed
				-- before the second address. Afterwards, we read 14 bytes into the read shift register.
				-- Keep SDA high (Hi-Z) to allow slave to pull it.
				IMUDataInt_SN <= '1';

				if I2CPulseGenOutput_S = '1' and I2CPulseCounterData_D = to_unsigned(0, 2) then
					-- On changing from phase 0->1, read the slave bit .
					-- IMUData_ZIO is permanently connected as read shift register input.
					I2CReadSRMode_S <= SHIFTREGISTER_MODE_SHIFT_LEFT;
				end if;

				-- Count bits to note when the byte is done and acknowledge it appropriately.
				if I2CPulseGenOutput_S = '1' and I2CPulseCounterData_D = to_unsigned(2, 2) then
					I2CBitCounterEnable_S <= '1';

					if I2CBitCounterData_D = to_unsigned(7, 3) then
						if I2CByteCounterData_D = to_unsigned(I2C_READ_SIZE + 4 + 1, I2C_BYTE_COUNTER_SIZE) then
							-- After reading the last byte, we have to ACK negatively.
							I2CState_DN <= stI2CReadNotAck;
						else
							I2CState_DN <= stI2CReadAck;
						end if;
					end if;
				end if;

			when stI2CReadAck =>
				-- This time, we, as the master, have to acknowledge the successful
				-- receipt of a byte to the slave, by pulling SDA low strongly.
				IMUDataInt_SN <= '0';

				if I2CPulseGenOutput_S = '1' and I2CPulseCounterData_D = to_unsigned(2, 2) then
					I2CState_DN <= stI2CHandleTransaction;
				end if;

			when stI2CReadNotAck =>
				-- This was the last byte of data we wanted, so we do not acknowledge to signal
				-- to the slave that we are done, by keeping SDA high.
				IMUDataInt_SN <= '1';

				if I2CPulseGenOutput_S = '1' and I2CPulseCounterData_D = to_unsigned(2, 2) then
					I2CState_DN <= stI2CHandleTransaction;
				end if;

			when others => null;
		end case;
	end process i2cData;

	imuLogic : process(State_DP, OutFifoControl_SI, IMUConfigReg_D, IMUInterrupt_SI, I2CDone_SP, I2CError_SP, I2CReadSROutput_D, AccelFullScaleChanged_S, DigitalLowPassFilterChanged_S, GyroFullScaleChanged_S, InterruptConfigChanged_S, InterruptEnableChanged_S, LPCycleTempStandbyChanged_S, LPWakeupAccelGyroStandbyChanged_S, RunChanged_S, RunDelayed_S, SampleRateDividerChanged_S, ScaleReg_D)
	begin
		State_DN <= State_DP;           -- Keep current state by default.

		OutFifoWriteReg_S <= '0';
		OutFifoDataReg_D  <= (others => '0');

		I2CStartTransaction_SN <= '0';
		I2CReadTransaction_SN  <= '0';

		I2CWriteSRInput_D   <= (others => '0');
		I2CWriteSRModeExt_S <= SHIFTREGISTER_MODE_DO_NOTHING;

		ScaleRegEnable_S <= '0';

		RunSent_S                      <= '0';
		LPCycleTempStandbySent_S       <= '0';
		LPWakeupAccelGyroStandbySent_S <= '0';
		SampleRateDividerSent_S        <= '0';
		DigitalLowPassFilterSent_S     <= '0';
		AccelFullScaleSent_S           <= '0';
		GyroFullScaleSent_S            <= '0';
		InterruptConfigSent_S          <= '0';
		InterruptEnableSent_S          <= '0';

		case State_DP is
			when stIdle =>
				-- When the Run_S signal changes, we need to configure the IMU appropriately.
				-- Else, when it's stable and high, we wait for either the IMU interrupt to tell
				-- us there is new data and get it, or we wait for any configuration changes to send.
				-- If it's low however, we just idle here.
				if RunChanged_S = '1' then
					RunSent_S <= '1';

					-- The LPCycleTempStandby state also takes the device out of sleep, and as such is
					-- the first configuration we have to send at startup.
					State_DN <= stAckAndLoadLPCycleTempStandby;
				else
					if RunDelayed_S = '1' then
						if IMUInterrupt_SI = '1' and OutFifoControl_SI.AlmostFull_S = '0' then
							State_DN         <= stVerifyScaleNoChange;
							ScaleRegEnable_S <= '1';
						end if;

						if InterruptConfigChanged_S = '1' then
							State_DN <= stAckAndLoadInterruptConfig;
						end if;
						if InterruptEnableChanged_S = '1' then
							State_DN <= stAckAndLoadInterruptEnable;
						end if;
						if LPCycleTempStandbyChanged_S = '1' then
							State_DN <= stAckAndLoadLPCycleTempStandby;
						end if;
						if LPWakeupAccelGyroStandbyChanged_S = '1' then
							State_DN <= stAckAndLoadLPWakeupAccelStandbyGyroStandby;
						end if;
						if SampleRateDividerChanged_S = '1' then
							State_DN <= stAckAndLoadSampleRateDivider;
						end if;
						if DigitalLowPassFilterChanged_S = '1' then
							State_DN <= stAckAndLoadDigitalLowPassFilter;
						end if;
						if AccelFullScaleChanged_S = '1' then
							State_DN <= stAckAndLoadAccelFullScale;
						end if;
						if GyroFullScaleChanged_S = '1' then
							State_DN <= stAckAndLoadGyroFullScale;
						end if;
					end if;
				end if;

			when stAckAndLoadInterruptConfig =>
				InterruptConfigSent_S <= '1';

				I2CWriteSRInput_D(23 downto 16) <= I2C_ADDRESS & '0';
				I2CWriteSRInput_D(15 downto 8)  <= std_logic_vector(I2C_REGISTER_ADDRESSES.IntConfig);
				I2CWriteSRInput_D(5)            <= '1';
				I2CWriteSRInput_D(4)            <= '1';

				I2CWriteSRModeExt_S <= SHIFTREGISTER_MODE_PARALLEL_LOAD;

				State_DN <= stWriteConfigRegister;

			when stAckAndLoadInterruptEnable =>
				InterruptEnableSent_S <= '1';

				I2CWriteSRInput_D(23 downto 16) <= I2C_ADDRESS & '0';
				I2CWriteSRInput_D(15 downto 8)  <= std_logic_vector(I2C_REGISTER_ADDRESSES.IntEnable);
				I2CWriteSRInput_D(0)            <= '1';

				I2CWriteSRModeExt_S <= SHIFTREGISTER_MODE_PARALLEL_LOAD;

				State_DN <= stWriteConfigRegister;

			when stAckAndLoadLPCycleTempStandby =>
				LPCycleTempStandbySent_S <= '1';

				I2CWriteSRInput_D(23 downto 16) <= I2C_ADDRESS & '0';
				I2CWriteSRInput_D(15 downto 8)  <= std_logic_vector(I2C_REGISTER_ADDRESSES.PowerManagement1);
				I2CWriteSRInput_D(6)            <= not IMUConfigReg_D.Run_S;
				I2CWriteSRInput_D(5)            <= IMUConfigReg_D.LPCycle_S;
				I2CWriteSRInput_D(3)            <= IMUConfigReg_D.TempStandby_S;
				I2CWriteSRInput_D(2 downto 0)   <= "001"; -- Enable clock (PLL with X axis gyro reference).

				I2CWriteSRModeExt_S <= SHIFTREGISTER_MODE_PARALLEL_LOAD;

				State_DN <= stWriteConfigRegister;

			when stAckAndLoadLPWakeupAccelStandbyGyroStandby =>
				LPWakeupAccelGyroStandbySent_S <= '1';

				I2CWriteSRInput_D(23 downto 16) <= I2C_ADDRESS & '0';
				I2CWriteSRInput_D(15 downto 8)  <= std_logic_vector(I2C_REGISTER_ADDRESSES.PowerManagement2);
				I2CWriteSRInput_D(7 downto 6)   <= std_logic_vector(IMUConfigReg_D.LPWakeup_D);
				I2CWriteSRInput_D(5 downto 3)   <= std_logic_vector(IMUConfigReg_D.AccelStandby_S);
				I2CWriteSRInput_D(2 downto 0)   <= std_logic_vector(IMUConfigReg_D.GyroStandby_S);

				I2CWriteSRModeExt_S <= SHIFTREGISTER_MODE_PARALLEL_LOAD;

				State_DN <= stWriteConfigRegister;

			when stAckAndLoadSampleRateDivider =>
				SampleRateDividerSent_S <= '1';

				I2CWriteSRInput_D(23 downto 16) <= I2C_ADDRESS & '0';
				I2CWriteSRInput_D(15 downto 8)  <= std_logic_vector(I2C_REGISTER_ADDRESSES.SampleRateDivider);
				I2CWriteSRInput_D(7 downto 0)   <= std_logic_vector(IMUConfigReg_D.SampleRateDivider_D);

				I2CWriteSRModeExt_S <= SHIFTREGISTER_MODE_PARALLEL_LOAD;

				State_DN <= stWriteConfigRegister;

			when stAckAndLoadDigitalLowPassFilter =>
				DigitalLowPassFilterSent_S <= '1';

				I2CWriteSRInput_D(23 downto 16) <= I2C_ADDRESS & '0';
				I2CWriteSRInput_D(15 downto 8)  <= std_logic_vector(I2C_REGISTER_ADDRESSES.DLFPConfig);
				I2CWriteSRInput_D(2 downto 0)   <= std_logic_vector(IMUConfigReg_D.DigitalLowPassFilter_D);

				I2CWriteSRModeExt_S <= SHIFTREGISTER_MODE_PARALLEL_LOAD;

				State_DN <= stWriteConfigRegister;

			when stAckAndLoadAccelFullScale =>
				AccelFullScaleSent_S <= '1';

				I2CWriteSRInput_D(23 downto 16) <= I2C_ADDRESS & '0';
				I2CWriteSRInput_D(15 downto 8)  <= std_logic_vector(I2C_REGISTER_ADDRESSES.AccelConfig);
				I2CWriteSRInput_D(4 downto 3)   <= std_logic_vector(IMUConfigReg_D.AccelFullScale_D);

				I2CWriteSRModeExt_S <= SHIFTREGISTER_MODE_PARALLEL_LOAD;

				State_DN <= stWriteConfigRegister;

			when stAckAndLoadGyroFullScale =>
				GyroFullScaleSent_S <= '1';

				I2CWriteSRInput_D(23 downto 16) <= I2C_ADDRESS & '0';
				I2CWriteSRInput_D(15 downto 8)  <= std_logic_vector(I2C_REGISTER_ADDRESSES.GyroConfig);
				I2CWriteSRInput_D(4 downto 3)   <= std_logic_vector(IMUConfigReg_D.GyroFullScale_D);

				I2CWriteSRModeExt_S <= SHIFTREGISTER_MODE_PARALLEL_LOAD;

				State_DN <= stWriteConfigRegister;

			when stWriteConfigRegister =>
				-- Signal the I2C state machine to start the current write transaction.
				I2CStartTransaction_SN <= '1';

				-- Wait until I2C signals done.
				-- Ignore I2C errors, there's nothing we can do here.
				if I2CDone_SP = '1' then
					State_DN <= stDoneAcknowledge;
				end if;

			when stVerifyScaleNoChange =>
				-- Check that the accel and gyro full scale settings didn't change since we
				-- actually saved them in the stIdle state. It is possible that they changed
				-- just as we saved them, so we'd have saved the new values, but those haven't
				-- yet been sent to the IMU chip, since the Changed_S signals trigger one cycle
				-- later. So we verify again here, and eventually go back to stIdle if needed
				-- to ensure the device has the right values.
				if AccelFullScaleChanged_S = '1' or GyroFullScaleChanged_S = '1' then
					State_DN <= stIdle;
				else
					State_DN <= stPrepareReadDataRegister;
				end if;

			when stPrepareReadDataRegister =>
				I2CWriteSRInput_D(23 downto 16) <= I2C_ADDRESS & '0';
				I2CWriteSRInput_D(15 downto 8)  <= std_logic_vector(I2C_REGISTER_ADDRESSES.Data);
				I2CWriteSRInput_D(7 downto 0)   <= I2C_ADDRESS & '1';

				I2CWriteSRModeExt_S <= SHIFTREGISTER_MODE_PARALLEL_LOAD;

				State_DN <= stReadDataRegister;

			when stReadDataRegister =>
				-- Signal the I2C state machine to start the current read transaction.
				I2CStartTransaction_SN <= '1';
				I2CReadTransaction_SN  <= '1';

				-- Wait until I2C signals done.
				if I2CDone_SP = '1' then
					-- If there was an error, we discard the data and go back to idle.
					if I2CError_SP = '1' then
						State_DN <= stDoneAcknowledge;
					else
						State_DN <= stWriteEventStart;
					end if;
				end if;

			when stWriteEventStart =>
				OutFifoDataReg_D  <= EVENT_CODE_SPECIAL & EVENT_CODE_SPECIAL_IMU_START6;
				OutFifoWriteReg_S <= '1';
				State_DN          <= stWriteEventScale;

			when stWriteEventScale =>
				OutFifoDataReg_D  <= EVENT_CODE_SPECIAL & EVENT_CODE_SPECIAL_IMU_SCALE_CONFIG & ScaleReg_D;
				OutFifoWriteReg_S <= '1';
				State_DN          <= stWriteEvent0;

			when stWriteEvent0 =>
				-- Upper 8 bits of Accel X.
				OutFifoDataReg_D  <= EVENT_CODE_MISC_DATA8 & EVENT_CODE_MISC_DATA8_IMU & I2CReadSROutput_D(111 downto 104);
				OutFifoWriteReg_S <= '1';
				State_DN          <= stWriteEvent1;

			when stWriteEvent1 =>
				-- Lower 8 bits of Accel X.
				OutFifoDataReg_D  <= EVENT_CODE_MISC_DATA8 & EVENT_CODE_MISC_DATA8_IMU & I2CReadSROutput_D(103 downto 96);
				OutFifoWriteReg_S <= '1';
				State_DN          <= stWriteEvent2;

			when stWriteEvent2 =>
				-- Upper 8 bits of Accel Y.
				OutFifoDataReg_D  <= EVENT_CODE_MISC_DATA8 & EVENT_CODE_MISC_DATA8_IMU & I2CReadSROutput_D(95 downto 88);
				OutFifoWriteReg_S <= '1';
				State_DN          <= stWriteEvent3;

			when stWriteEvent3 =>
				-- Lower 8 bits of Accel Y.
				OutFifoDataReg_D  <= EVENT_CODE_MISC_DATA8 & EVENT_CODE_MISC_DATA8_IMU & I2CReadSROutput_D(87 downto 80);
				OutFifoWriteReg_S <= '1';
				State_DN          <= stWriteEvent4;

			when stWriteEvent4 =>
				-- Upper 8 bits of Accel Z.
				OutFifoDataReg_D  <= EVENT_CODE_MISC_DATA8 & EVENT_CODE_MISC_DATA8_IMU & I2CReadSROutput_D(79 downto 72);
				OutFifoWriteReg_S <= '1';
				State_DN          <= stWriteEvent5;

			when stWriteEvent5 =>
				-- Lower 8 bits of Accel Z.
				OutFifoDataReg_D  <= EVENT_CODE_MISC_DATA8 & EVENT_CODE_MISC_DATA8_IMU & I2CReadSROutput_D(71 downto 64);
				OutFifoWriteReg_S <= '1';
				State_DN          <= stWriteEvent6;

			when stWriteEvent6 =>
				-- Upper 8 bits of Temperature.
				OutFifoDataReg_D  <= EVENT_CODE_MISC_DATA8 & EVENT_CODE_MISC_DATA8_IMU & I2CReadSROutput_D(63 downto 56);
				OutFifoWriteReg_S <= '1';
				State_DN          <= stWriteEvent7;

			when stWriteEvent7 =>
				-- Lower 8 bits of Temperature.
				OutFifoDataReg_D  <= EVENT_CODE_MISC_DATA8 & EVENT_CODE_MISC_DATA8_IMU & I2CReadSROutput_D(55 downto 48);
				OutFifoWriteReg_S <= '1';
				State_DN          <= stWriteEvent8;

			when stWriteEvent8 =>
				-- Upper 8 bits of Gyro X.
				OutFifoDataReg_D  <= EVENT_CODE_MISC_DATA8 & EVENT_CODE_MISC_DATA8_IMU & I2CReadSROutput_D(47 downto 40);
				OutFifoWriteReg_S <= '1';
				State_DN          <= stWriteEvent9;

			when stWriteEvent9 =>
				-- Lower 8 bits of Gyro X.
				OutFifoDataReg_D  <= EVENT_CODE_MISC_DATA8 & EVENT_CODE_MISC_DATA8_IMU & I2CReadSROutput_D(39 downto 32);
				OutFifoWriteReg_S <= '1';
				State_DN          <= stWriteEvent10;

			when stWriteEvent10 =>
				-- Upper 8 bits of Gyro Y.
				OutFifoDataReg_D  <= EVENT_CODE_MISC_DATA8 & EVENT_CODE_MISC_DATA8_IMU & I2CReadSROutput_D(31 downto 24);
				OutFifoWriteReg_S <= '1';
				State_DN          <= stWriteEvent11;

			when stWriteEvent11 =>
				-- Lower 8 bits of Gyro Y.
				OutFifoDataReg_D  <= EVENT_CODE_MISC_DATA8 & EVENT_CODE_MISC_DATA8_IMU & I2CReadSROutput_D(23 downto 16);
				OutFifoWriteReg_S <= '1';
				State_DN          <= stWriteEvent12;

			when stWriteEvent12 =>
				-- Upper 8 bits of Gyro Y.
				OutFifoDataReg_D  <= EVENT_CODE_MISC_DATA8 & EVENT_CODE_MISC_DATA8_IMU & I2CReadSROutput_D(15 downto 8);
				OutFifoWriteReg_S <= '1';
				State_DN          <= stWriteEvent13;

			when stWriteEvent13 =>
				-- Lower 8 bits of Gyro Y.
				OutFifoDataReg_D  <= EVENT_CODE_MISC_DATA8 & EVENT_CODE_MISC_DATA8_IMU & I2CReadSROutput_D(7 downto 0);
				OutFifoWriteReg_S <= '1';
				State_DN          <= stWriteEventEnd;

			when stWriteEventEnd =>
				OutFifoDataReg_D  <= EVENT_CODE_SPECIAL & EVENT_CODE_SPECIAL_IMU_END;
				OutFifoWriteReg_S <= '1';
				State_DN          <= stDoneAcknowledge;

			when stDoneAcknowledge =>
				-- Deassert transaction, and wait for I2C Done to also go back low, which
				-- means I2C is ready for the next transaction to happen.
				if I2CDone_SP = '0' then
					State_DN <= stIdle;
				end if;

			when others => null;
		end case;
	end process imuLogic;

	-- Change state on clock edge (synchronous).
	imuRegisterUpdate : process(Clock_CI, Reset_RI)
	begin
		if Reset_RI = '1' then          -- asynchronous reset (active-high for FPGAs)
			State_DP <= stIdle;

			OutFifoControl_SO.Write_S <= '0';
			OutFifoData_DO            <= (others => '0');

			IMUConfigReg_D <= tIMUConfigDefault;
		elsif rising_edge(Clock_CI) then
			State_DP <= State_DN;

			OutFifoControl_SO.Write_S <= OutFifoWriteReg_S;
			OutFifoData_DO            <= OutFifoDataReg_D;

			IMUConfigReg_D <= IMUConfig_DI;
		end if;
	end process imuRegisterUpdate;

	-- Remember the values of the accelerometer and gyroscope full scale settings.
	-- This is updated when entering the read data state, so that when writing out the
	-- sample that was just read from the device, we can also give the precise values
	-- for those two scales, which do impact how the sample is interpreted on the host.
	-- The value is remembered at the start of the sample read procedure, to ensure that
	-- it reflects the actual reality of the IMU device configuration, and not some later
	-- state that can change while the read is still in progress.
	scaleRegister : entity work.SimpleRegister
		generic map(
			SIZE => 4)
		port map(
			Clock_CI             => Clock_CI,
			Reset_RI             => Reset_RI,
			Enable_SI            => ScaleRegEnable_S,
			Input_SI(3 downto 0) => std_logic_vector(IMUConfigReg_D.AccelFullScale_D) & std_logic_vector(IMUConfigReg_D.GyroFullScale_D),
			Output_SO            => ScaleReg_D);

	-- Delay the Run_S signal by one clock cycle to be in sync with the RunChanged_S signal.
	-- This avoids taking the wrong branch too early in stIdle.
	delayRun : entity work.SimpleRegister
		port map(
			Clock_CI     => Clock_CI,
			Reset_RI     => Reset_RI,
			Enable_SI    => '1',
			Input_SI(0)  => IMUConfigReg_D.Run_S,
			Output_SO(0) => RunDelayed_S);

	-- Use BufferClears to be able to check and send the Interrupt Config and Enable registers
	-- exactly the same as the other ones, and tie them to run changing.
	fakeInterruptConfigChange : entity work.BufferClear
		port map(
			Clock_CI        => Clock_CI,
			Reset_RI        => Reset_RI,
			Clear_SI        => InterruptConfigSent_S,
			InputSignal_SI  => RunChanged_S,
			OutputSignal_SO => InterruptConfigChanged_S);

	fakeInterruptEnableChange : entity work.BufferClear
		port map(
			Clock_CI        => Clock_CI,
			Reset_RI        => Reset_RI,
			Clear_SI        => InterruptEnableSent_S,
			InputSignal_SI  => RunChanged_S,
			OutputSignal_SO => InterruptEnableChanged_S);

	detectRunChange : entity work.ChangeDetector
		generic map(
			SIZE => 1)
		port map(
			Clock_CI              => Clock_CI,
			Reset_RI              => Reset_RI,
			InputData_DI(0)       => IMUConfigReg_D.Run_S,
			ChangeDetected_SO     => RunChanged_S,
			ChangeAcknowledged_SI => RunSent_S);

	detectLPCycleTempStandbyChange : entity work.ChangeDetector
		generic map(
			SIZE => (1 + 1))
		port map(
			Clock_CI                 => Clock_CI,
			Reset_RI                 => Reset_RI,
			InputData_DI(1 downto 0) => IMUConfigReg_D.LPCycle_S & IMUConfigReg_D.TempStandby_S,
			ChangeDetected_SO        => LPCycleTempStandbyChanged_S,
			ChangeAcknowledged_SI    => LPCycleTempStandbySent_S);

	detectLPWakeupAccelGyroStandbyChange : entity work.ChangeDetector
		generic map(
			SIZE => tIMUConfig.LPWakeup_D'length + tIMUConfig.AccelStandby_S'length + tIMUConfig.GyroStandby_S'length)
		port map(
			Clock_CI                 => Clock_CI,
			Reset_RI                 => Reset_RI,
			InputData_DI(7 downto 0) => std_logic_vector(IMUConfigReg_D.LPWakeup_D) & IMUConfigReg_D.AccelStandby_S & IMUConfigReg_D.GyroStandby_S,
			ChangeDetected_SO        => LPWakeupAccelGyroStandbyChanged_S,
			ChangeAcknowledged_SI    => LPWakeupAccelGyroStandbySent_S);

	detectSampleRateDividerChange : entity work.ChangeDetector
		generic map(
			SIZE => tIMUConfig.SampleRateDivider_D'length)
		port map(
			Clock_CI              => Clock_CI,
			Reset_RI              => Reset_RI,
			InputData_DI          => std_logic_vector(IMUConfigReg_D.SampleRateDivider_D),
			ChangeDetected_SO     => SampleRateDividerChanged_S,
			ChangeAcknowledged_SI => SampleRateDividerSent_S);

	detectDigitalLowPassFilterChange : entity work.ChangeDetector
		generic map(
			SIZE => tIMUConfig.DigitalLowPassFilter_D'length)
		port map(
			Clock_CI              => Clock_CI,
			Reset_RI              => Reset_RI,
			InputData_DI          => std_logic_vector(IMUConfigReg_D.DigitalLowPassFilter_D),
			ChangeDetected_SO     => DigitalLowPassFilterChanged_S,
			ChangeAcknowledged_SI => DigitalLowPassFilterSent_S);

	detectAccelFullScaleChange : entity work.ChangeDetector
		generic map(
			SIZE => tIMUConfig.AccelFullScale_D'length)
		port map(
			Clock_CI              => Clock_CI,
			Reset_RI              => Reset_RI,
			InputData_DI          => std_logic_vector(IMUConfigReg_D.AccelFullScale_D),
			ChangeDetected_SO     => AccelFullScaleChanged_S,
			ChangeAcknowledged_SI => AccelFullScaleSent_S);

	detectGyroFullScaleChange : entity work.ChangeDetector
		generic map(
			SIZE => tIMUConfig.GyroFullScale_D'length)
		port map(
			Clock_CI              => Clock_CI,
			Reset_RI              => Reset_RI,
			InputData_DI          => std_logic_vector(IMUConfigReg_D.GyroFullScale_D),
			ChangeDetected_SO     => GyroFullScaleChanged_S,
			ChangeAcknowledged_SI => GyroFullScaleSent_S);
end architecture Behavioral;
