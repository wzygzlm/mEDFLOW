library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.ExtInputConfigRecords.all;

entity ExtInputSPIConfig is
	generic(
		ENABLE_GENERATOR : boolean := false);
	port(
		Clock_CI                     : in  std_logic;
		Reset_RI                     : in  std_logic;
		ExtInputConfig_DO            : out tExtInputConfig;

		-- SPI configuration inputs and outputs.
		ConfigModuleAddress_DI       : in  unsigned(6 downto 0);
		ConfigParamAddress_DI        : in  unsigned(7 downto 0);
		ConfigParamInput_DI          : in  std_logic_vector(31 downto 0);
		ConfigLatchInput_SI          : in  std_logic;
		ExtInputConfigParamOutput_DO : out std_logic_vector(31 downto 0));
end entity ExtInputSPIConfig;

architecture Behavioral of ExtInputSPIConfig is
	signal LatchExtInputReg_S                         : std_logic;
	signal ExtInputOutput_DP, ExtInputOutput_DN       : std_logic_vector(31 downto 0);
	signal ExtInputConfigReg_DP, ExtInputConfigReg_DN : tExtInputConfig;
begin
	ExtInputConfig_DO            <= ExtInputConfigReg_DP;
	ExtInputConfigParamOutput_DO <= ExtInputOutput_DP;

	LatchExtInputReg_S <= '1' when (ConfigModuleAddress_DI = EXTINPUT_CONFIG_MODULE_ADDRESS) else '0';

	extInputIO : process(ConfigParamAddress_DI, ConfigParamInput_DI, ExtInputConfigReg_DP)
	begin
		ExtInputConfigReg_DN <= ExtInputConfigReg_DP;
		ExtInputOutput_DN    <= (others => '0');

		case ConfigParamAddress_DI is
			when EXTINPUT_CONFIG_PARAM_ADDRESSES.RunDetector_S =>
				ExtInputConfigReg_DN.RunDetector_S <= ConfigParamInput_DI(0);
				ExtInputOutput_DN(0)               <= ExtInputConfigReg_DP.RunDetector_S;

			when EXTINPUT_CONFIG_PARAM_ADDRESSES.DetectRisingEdges_S =>
				ExtInputConfigReg_DN.DetectRisingEdges_S <= ConfigParamInput_DI(0);
				ExtInputOutput_DN(0)                     <= ExtInputConfigReg_DP.DetectRisingEdges_S;

			when EXTINPUT_CONFIG_PARAM_ADDRESSES.DetectFallingEdges_S =>
				ExtInputConfigReg_DN.DetectFallingEdges_S <= ConfigParamInput_DI(0);
				ExtInputOutput_DN(0)                      <= ExtInputConfigReg_DP.DetectFallingEdges_S;

			when EXTINPUT_CONFIG_PARAM_ADDRESSES.DetectPulses_S =>
				ExtInputConfigReg_DN.DetectPulses_S <= ConfigParamInput_DI(0);
				ExtInputOutput_DN(0)                <= ExtInputConfigReg_DP.DetectPulses_S;

			when EXTINPUT_CONFIG_PARAM_ADDRESSES.DetectPulsePolarity_S =>
				ExtInputConfigReg_DN.DetectPulsePolarity_S <= ConfigParamInput_DI(0);
				ExtInputOutput_DN(0)                       <= ExtInputConfigReg_DP.DetectPulsePolarity_S;

			when EXTINPUT_CONFIG_PARAM_ADDRESSES.DetectPulseLength_D =>
				ExtInputConfigReg_DN.DetectPulseLength_D                     <= unsigned(ConfigParamInput_DI(tExtInputConfig.DetectPulseLength_D'range));
				ExtInputOutput_DN(tExtInputConfig.DetectPulseLength_D'range) <= std_logic_vector(ExtInputConfigReg_DP.DetectPulseLength_D);

			when EXTINPUT_CONFIG_PARAM_ADDRESSES.HasGenerator_S =>
				if ENABLE_GENERATOR then
					ExtInputConfigReg_DN.HasGenerator_S <= '1';
					ExtInputOutput_DN(0)                <= '1';
				end if;

			when EXTINPUT_CONFIG_PARAM_ADDRESSES.RunGenerator_S =>
				if ENABLE_GENERATOR then
					ExtInputConfigReg_DN.RunGenerator_S <= ConfigParamInput_DI(0);
					ExtInputOutput_DN(0)                <= ExtInputConfigReg_DP.RunGenerator_S;
				end if;

			when EXTINPUT_CONFIG_PARAM_ADDRESSES.GeneratePulsePolarity_S =>
				if ENABLE_GENERATOR then
					ExtInputConfigReg_DN.GeneratePulsePolarity_S <= ConfigParamInput_DI(0);
					ExtInputOutput_DN(0)                         <= ExtInputConfigReg_DP.GeneratePulsePolarity_S;
				end if;

			when EXTINPUT_CONFIG_PARAM_ADDRESSES.GeneratePulseInterval_D =>
				if ENABLE_GENERATOR then
					ExtInputConfigReg_DN.GeneratePulseInterval_D                     <= unsigned(ConfigParamInput_DI(tExtInputConfig.GeneratePulseInterval_D'range));
					ExtInputOutput_DN(tExtInputConfig.GeneratePulseInterval_D'range) <= std_logic_vector(ExtInputConfigReg_DP.GeneratePulseInterval_D);
				end if;

			when EXTINPUT_CONFIG_PARAM_ADDRESSES.GeneratePulseLength_D =>
				if ENABLE_GENERATOR then
					ExtInputConfigReg_DN.GeneratePulseLength_D                     <= unsigned(ConfigParamInput_DI(tExtInputConfig.GeneratePulseLength_D'range));
					ExtInputOutput_DN(tExtInputConfig.GeneratePulseLength_D'range) <= std_logic_vector(ExtInputConfigReg_DP.GeneratePulseLength_D);
				end if;

			when EXTINPUT_CONFIG_PARAM_ADDRESSES.GenerateInjectOnRisingEdge_S =>
				if ENABLE_GENERATOR then
					ExtInputConfigReg_DN.GenerateInjectOnRisingEdge_S <= ConfigParamInput_DI(0);
					ExtInputOutput_DN(0)                              <= ExtInputConfigReg_DP.GenerateInjectOnRisingEdge_S;
				end if;

			when EXTINPUT_CONFIG_PARAM_ADDRESSES.GenerateInjectOnFallingEdge_S =>
				if ENABLE_GENERATOR then
					ExtInputConfigReg_DN.GenerateInjectOnFallingEdge_S <= ConfigParamInput_DI(0);
					ExtInputOutput_DN(0)                               <= ExtInputConfigReg_DP.GenerateInjectOnFallingEdge_S;
				end if;

			when others => null;
		end case;
	end process extInputIO;

	extInputUpdate : process(Clock_CI, Reset_RI) is
	begin
		if Reset_RI then                -- asynchronous reset (active high)
			ExtInputOutput_DP <= (others => '0');

			ExtInputConfigReg_DP <= tExtInputConfigDefault;
		elsif rising_edge(Clock_CI) then -- rising clock edge
			ExtInputOutput_DP <= ExtInputOutput_DN;

			if LatchExtInputReg_S and ConfigLatchInput_SI then
				ExtInputConfigReg_DP <= ExtInputConfigReg_DN;
			end if;
		end if;
	end process extInputUpdate;
end architecture Behavioral;
