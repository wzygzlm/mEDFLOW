library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.FX3ConfigRecords.all;

entity FX3SPIConfig is
	port(
		Clock_CI                : in  std_logic;
		Reset_RI                : in  std_logic;
		FX3Config_DO            : out tFX3Config;

		-- SPI configuration inputs and outputs.
		ConfigModuleAddress_DI  : in  unsigned(6 downto 0);
		ConfigParamAddress_DI   : in  unsigned(7 downto 0);
		ConfigParamInput_DI     : in  std_logic_vector(31 downto 0);
		ConfigLatchInput_SI     : in  std_logic;
		FX3ConfigParamOutput_DO : out std_logic_vector(31 downto 0));
end entity FX3SPIConfig;

architecture Behavioral of FX3SPIConfig is
	signal LatchFX3Reg_S                    : std_logic;
	signal FX3Output_DP, FX3Output_DN       : std_logic_vector(31 downto 0);
	signal FX3ConfigReg_DP, FX3ConfigReg_DN : tFX3Config;
begin
	FX3Config_DO            <= FX3ConfigReg_DP;
	FX3ConfigParamOutput_DO <= FX3Output_DP;

	LatchFX3Reg_S <= '1' when (ConfigModuleAddress_DI = FX3_CONFIG_MODULE_ADDRESS) else '0';

	fx3IO : process(ConfigParamAddress_DI, ConfigParamInput_DI, FX3ConfigReg_DP)
	begin
		FX3ConfigReg_DN <= FX3ConfigReg_DP;
		FX3Output_DN    <= (others => '0');

		case ConfigParamAddress_DI is
			when FX3_CONFIG_PARAM_ADDRESSES.Run_S =>
				FX3ConfigReg_DN.Run_S <= ConfigParamInput_DI(0);
				FX3Output_DN(0)       <= FX3ConfigReg_DP.Run_S;

			when FX3_CONFIG_PARAM_ADDRESSES.EarlyPacketDelay_D =>
				FX3ConfigReg_DN.EarlyPacketDelay_D                <= unsigned(ConfigParamInput_DI(tFX3Config.EarlyPacketDelay_D'range));
				FX3Output_DN(tFX3Config.EarlyPacketDelay_D'range) <= std_logic_vector(FX3ConfigReg_DP.EarlyPacketDelay_D);

			when others => null;
		end case;
	end process fx3IO;

	fx3Update : process(Clock_CI, Reset_RI) is
	begin
		if Reset_RI then                -- asynchronous reset (active high)
			FX3Output_DP <= (others => '0');

			FX3ConfigReg_DP <= tFX3ConfigDefault;
		elsif rising_edge(Clock_CI) then -- rising clock edge
			FX3Output_DP <= FX3Output_DN;

			if LatchFX3Reg_S and ConfigLatchInput_SI then
				FX3ConfigReg_DP <= FX3ConfigReg_DN;
			end if;
		end if;
	end process fx3Update;
end architecture Behavioral;
