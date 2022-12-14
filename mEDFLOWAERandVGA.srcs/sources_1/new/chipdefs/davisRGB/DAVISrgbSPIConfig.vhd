library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.ChipBiasConfigRecords.all;
use work.DAVISrgbChipBiasConfigRecords.all;

entity DAVISrgbSPIConfig is
	port(
		Clock_CI                 : in  std_logic;
		Reset_RI                 : in  std_logic;
		BiasConfig_DO            : out tDAVISrgbBiasConfig;
		ChipConfig_DO            : out tDAVISrgbChipConfig;

		-- SPI configuration inputs and outputs.
		ConfigModuleAddress_DI   : in  unsigned(6 downto 0);
		ConfigParamAddress_DI    : in  unsigned(7 downto 0);
		ConfigParamInput_DI      : in  std_logic_vector(31 downto 0);
		ConfigLatchInput_SI      : in  std_logic;
		BiasConfigParamOutput_DO : out std_logic_vector(31 downto 0);
		ChipConfigParamOutput_DO : out std_logic_vector(31 downto 0));
end entity DAVISrgbSPIConfig;

architecture Behavioral of DAVISrgbSPIConfig is
	signal LatchBiasReg_S                     : std_logic;
	signal BiasOutput_DP, BiasOutput_DN       : std_logic_vector(31 downto 0);
	signal BiasConfigReg_DP, BiasConfigReg_DN : tDAVISrgbBiasConfig;

	signal LatchChipReg_S                     : std_logic;
	signal ChipOutput_DP, ChipOutput_DN       : std_logic_vector(31 downto 0);
	signal ChipConfigReg_DP, ChipConfigReg_DN : tDAVISrgbChipConfig;
begin
	BiasConfig_DO            <= BiasConfigReg_DP;
	BiasConfigParamOutput_DO <= BiasOutput_DP;

	ChipConfig_DO            <= ChipConfigReg_DP;
	ChipConfigParamOutput_DO <= ChipOutput_DP;

	LatchBiasReg_S <= '1' when (ConfigModuleAddress_DI = CHIPBIASCONFIG_MODULE_ADDRESS and ConfigParamAddress_DI(7) = '0') else '0';
	LatchChipReg_S <= '1' when (ConfigModuleAddress_DI = CHIPBIASCONFIG_MODULE_ADDRESS and ConfigParamAddress_DI(7) = '1') else '0';

	biasIO : process(ConfigParamAddress_DI, ConfigParamInput_DI, BiasConfigReg_DP)
	begin
		BiasConfigReg_DN <= BiasConfigReg_DP;
		BiasOutput_DN    <= (others => '0');

		case ConfigParamAddress_DI is
			when DAVISRGB_BIASCONFIG_PARAM_ADDRESSES.ApsCasBpc_D =>
				BiasConfigReg_DN.ApsCasBpc_D                         <= ConfigParamInput_DI(tDAVISrgbBiasConfig.ApsCasBpc_D'range);
				BiasOutput_DN(tDAVISrgbBiasConfig.ApsCasBpc_D'range) <= BiasConfigReg_DP.ApsCasBpc_D;

			when DAVISRGB_BIASCONFIG_PARAM_ADDRESSES.OVG1Lo_D =>
				BiasConfigReg_DN.OVG1Lo_D                         <= ConfigParamInput_DI(tDAVISrgbBiasConfig.OVG1Lo_D'range);
				BiasOutput_DN(tDAVISrgbBiasConfig.OVG1Lo_D'range) <= BiasConfigReg_DP.OVG1Lo_D;

			when DAVISRGB_BIASCONFIG_PARAM_ADDRESSES.OVG2Lo_D =>
				BiasConfigReg_DN.OVG2Lo_D                         <= ConfigParamInput_DI(tDAVISrgbBiasConfig.OVG2Lo_D'range);
				BiasOutput_DN(tDAVISrgbBiasConfig.OVG2Lo_D'range) <= BiasConfigReg_DP.OVG2Lo_D;

			when DAVISRGB_BIASCONFIG_PARAM_ADDRESSES.TX2OVG2Hi_D =>
				BiasConfigReg_DN.TX2OVG2Hi_D                         <= ConfigParamInput_DI(tDAVISrgbBiasConfig.TX2OVG2Hi_D'range);
				BiasOutput_DN(tDAVISrgbBiasConfig.TX2OVG2Hi_D'range) <= BiasConfigReg_DP.TX2OVG2Hi_D;

			when DAVISRGB_BIASCONFIG_PARAM_ADDRESSES.Gnd07_D =>
				BiasConfigReg_DN.Gnd07_D                         <= ConfigParamInput_DI(tDAVISrgbBiasConfig.Gnd07_D'range);
				BiasOutput_DN(tDAVISrgbBiasConfig.Gnd07_D'range) <= BiasConfigReg_DP.Gnd07_D;

			when DAVISRGB_BIASCONFIG_PARAM_ADDRESSES.vADCTest_D =>
				BiasConfigReg_DN.vADCTest_D                         <= ConfigParamInput_DI(tDAVISrgbBiasConfig.vADCTest_D'range);
				BiasOutput_DN(tDAVISrgbBiasConfig.vADCTest_D'range) <= BiasConfigReg_DP.vADCTest_D;

			when DAVISRGB_BIASCONFIG_PARAM_ADDRESSES.AdcRefHigh_D =>
				BiasConfigReg_DN.AdcRefHigh_D                         <= ConfigParamInput_DI(tDAVISrgbBiasConfig.AdcRefHigh_D'range);
				BiasOutput_DN(tDAVISrgbBiasConfig.AdcRefHigh_D'range) <= BiasConfigReg_DP.AdcRefHigh_D;

			when DAVISRGB_BIASCONFIG_PARAM_ADDRESSES.AdcRefLow_D =>
				BiasConfigReg_DN.AdcRefLow_D                         <= ConfigParamInput_DI(tDAVISrgbBiasConfig.AdcRefLow_D'range);
				BiasOutput_DN(tDAVISrgbBiasConfig.AdcRefLow_D'range) <= BiasConfigReg_DP.AdcRefLow_D;

			when DAVISRGB_BIASCONFIG_PARAM_ADDRESSES.IFRefrBn_D =>
				BiasConfigReg_DN.IFRefrBn_D                         <= ConfigParamInput_DI(tDAVISrgbBiasConfig.IFRefrBn_D'range);
				BiasOutput_DN(tDAVISrgbBiasConfig.IFRefrBn_D'range) <= BiasConfigReg_DP.IFRefrBn_D;

			when DAVISRGB_BIASCONFIG_PARAM_ADDRESSES.IFThrBn_D =>
				BiasConfigReg_DN.IFThrBn_D                         <= ConfigParamInput_DI(tDAVISrgbBiasConfig.IFThrBn_D'range);
				BiasOutput_DN(tDAVISrgbBiasConfig.IFThrBn_D'range) <= BiasConfigReg_DP.IFThrBn_D;

			when DAVISRGB_BIASCONFIG_PARAM_ADDRESSES.LocalBufBn_D =>
				BiasConfigReg_DN.LocalBufBn_D                         <= ConfigParamInput_DI(tDAVISrgbBiasConfig.LocalBufBn_D'range);
				BiasOutput_DN(tDAVISrgbBiasConfig.LocalBufBn_D'range) <= BiasConfigReg_DP.LocalBufBn_D;

			when DAVISRGB_BIASCONFIG_PARAM_ADDRESSES.PadFollBn_D =>
				BiasConfigReg_DN.PadFollBn_D                         <= ConfigParamInput_DI(tDAVISrgbBiasConfig.PadFollBn_D'range);
				BiasOutput_DN(tDAVISrgbBiasConfig.PadFollBn_D'range) <= BiasConfigReg_DP.PadFollBn_D;

			when DAVISRGB_BIASCONFIG_PARAM_ADDRESSES.PixInvBn_D =>
				BiasConfigReg_DN.PixInvBn_D                         <= ConfigParamInput_DI(tDAVISrgbBiasConfig.PixInvBn_D'range);
				BiasOutput_DN(tDAVISrgbBiasConfig.PixInvBn_D'range) <= BiasConfigReg_DP.PixInvBn_D;

			when DAVISRGB_BIASCONFIG_PARAM_ADDRESSES.DiffBn_D =>
				BiasConfigReg_DN.DiffBn_D                         <= ConfigParamInput_DI(tDAVISrgbBiasConfig.DiffBn_D'range);
				BiasOutput_DN(tDAVISrgbBiasConfig.DiffBn_D'range) <= BiasConfigReg_DP.DiffBn_D;

			when DAVISRGB_BIASCONFIG_PARAM_ADDRESSES.OnBn_D =>
				BiasConfigReg_DN.OnBn_D                         <= ConfigParamInput_DI(tDAVISrgbBiasConfig.OnBn_D'range);
				BiasOutput_DN(tDAVISrgbBiasConfig.OnBn_D'range) <= BiasConfigReg_DP.OnBn_D;

			when DAVISRGB_BIASCONFIG_PARAM_ADDRESSES.OffBn_D =>
				BiasConfigReg_DN.OffBn_D                         <= ConfigParamInput_DI(tDAVISrgbBiasConfig.OffBn_D'range);
				BiasOutput_DN(tDAVISrgbBiasConfig.OffBn_D'range) <= BiasConfigReg_DP.OffBn_D;

			when DAVISRGB_BIASCONFIG_PARAM_ADDRESSES.PrBp_D =>
				BiasConfigReg_DN.PrBp_D                         <= ConfigParamInput_DI(tDAVISrgbBiasConfig.PrBp_D'range);
				BiasOutput_DN(tDAVISrgbBiasConfig.PrBp_D'range) <= BiasConfigReg_DP.PrBp_D;

			when DAVISRGB_BIASCONFIG_PARAM_ADDRESSES.PrSFBp_D =>
				BiasConfigReg_DN.PrSFBp_D                         <= ConfigParamInput_DI(tDAVISrgbBiasConfig.PrSFBp_D'range);
				BiasOutput_DN(tDAVISrgbBiasConfig.PrSFBp_D'range) <= BiasConfigReg_DP.PrSFBp_D;

			when DAVISRGB_BIASCONFIG_PARAM_ADDRESSES.RefrBp_D =>
				BiasConfigReg_DN.RefrBp_D                         <= ConfigParamInput_DI(tDAVISrgbBiasConfig.RefrBp_D'range);
				BiasOutput_DN(tDAVISrgbBiasConfig.RefrBp_D'range) <= BiasConfigReg_DP.RefrBp_D;

			when DAVISRGB_BIASCONFIG_PARAM_ADDRESSES.ArrayBiasBufferBn_D =>
				BiasConfigReg_DN.ArrayBiasBufferBn_D                         <= ConfigParamInput_DI(tDAVISrgbBiasConfig.ArrayBiasBufferBn_D'range);
				BiasOutput_DN(tDAVISrgbBiasConfig.ArrayBiasBufferBn_D'range) <= BiasConfigReg_DP.ArrayBiasBufferBn_D;

			when DAVISRGB_BIASCONFIG_PARAM_ADDRESSES.ArrayLogicBufferBn_D =>
				BiasConfigReg_DN.ArrayLogicBufferBn_D                         <= ConfigParamInput_DI(tDAVISrgbBiasConfig.ArrayLogicBufferBn_D'range);
				BiasOutput_DN(tDAVISrgbBiasConfig.ArrayLogicBufferBn_D'range) <= BiasConfigReg_DP.ArrayLogicBufferBn_D;

			when DAVISRGB_BIASCONFIG_PARAM_ADDRESSES.FalltimeBn_D =>
				BiasConfigReg_DN.FalltimeBn_D                         <= ConfigParamInput_DI(tDAVISrgbBiasConfig.FalltimeBn_D'range);
				BiasOutput_DN(tDAVISrgbBiasConfig.FalltimeBn_D'range) <= BiasConfigReg_DP.FalltimeBn_D;

			when DAVISRGB_BIASCONFIG_PARAM_ADDRESSES.RisetimeBp_D =>
				BiasConfigReg_DN.RisetimeBp_D                         <= ConfigParamInput_DI(tDAVISrgbBiasConfig.RisetimeBp_D'range);
				BiasOutput_DN(tDAVISrgbBiasConfig.RisetimeBp_D'range) <= BiasConfigReg_DP.RisetimeBp_D;

			when DAVISRGB_BIASCONFIG_PARAM_ADDRESSES.ReadoutBufBp_D =>
				BiasConfigReg_DN.ReadoutBufBp_D                         <= ConfigParamInput_DI(tDAVISrgbBiasConfig.ReadoutBufBp_D'range);
				BiasOutput_DN(tDAVISrgbBiasConfig.ReadoutBufBp_D'range) <= BiasConfigReg_DP.ReadoutBufBp_D;

			when DAVISRGB_BIASCONFIG_PARAM_ADDRESSES.ApsROSFBn_D =>
				BiasConfigReg_DN.ApsROSFBn_D                         <= ConfigParamInput_DI(tDAVISrgbBiasConfig.ApsROSFBn_D'range);
				BiasOutput_DN(tDAVISrgbBiasConfig.ApsROSFBn_D'range) <= BiasConfigReg_DP.ApsROSFBn_D;

			when DAVISRGB_BIASCONFIG_PARAM_ADDRESSES.AdcCompBp_D =>
				BiasConfigReg_DN.AdcCompBp_D                         <= ConfigParamInput_DI(tDAVISrgbBiasConfig.AdcCompBp_D'range);
				BiasOutput_DN(tDAVISrgbBiasConfig.AdcCompBp_D'range) <= BiasConfigReg_DP.AdcCompBp_D;

			when DAVISRGB_BIASCONFIG_PARAM_ADDRESSES.DACBufBp_D =>
				BiasConfigReg_DN.DACBufBp_D                         <= ConfigParamInput_DI(tDAVISrgbBiasConfig.DACBufBp_D'range);
				BiasOutput_DN(tDAVISrgbBiasConfig.DACBufBp_D'range) <= BiasConfigReg_DP.DACBufBp_D;

			when DAVISRGB_BIASCONFIG_PARAM_ADDRESSES.LcolTimeoutBn_D =>
				BiasConfigReg_DN.LcolTimeoutBn_D                         <= ConfigParamInput_DI(tDAVISrgbBiasConfig.LcolTimeoutBn_D'range);
				BiasOutput_DN(tDAVISrgbBiasConfig.LcolTimeoutBn_D'range) <= BiasConfigReg_DP.LcolTimeoutBn_D;

			when DAVISRGB_BIASCONFIG_PARAM_ADDRESSES.AEPdBn_D =>
				BiasConfigReg_DN.AEPdBn_D                         <= ConfigParamInput_DI(tDAVISrgbBiasConfig.AEPdBn_D'range);
				BiasOutput_DN(tDAVISrgbBiasConfig.AEPdBn_D'range) <= BiasConfigReg_DP.AEPdBn_D;

			when DAVISRGB_BIASCONFIG_PARAM_ADDRESSES.AEPuXBp_D =>
				BiasConfigReg_DN.AEPuXBp_D                         <= ConfigParamInput_DI(tDAVISrgbBiasConfig.AEPuXBp_D'range);
				BiasOutput_DN(tDAVISrgbBiasConfig.AEPuXBp_D'range) <= BiasConfigReg_DP.AEPuXBp_D;

			when DAVISRGB_BIASCONFIG_PARAM_ADDRESSES.AEPuYBp_D =>
				BiasConfigReg_DN.AEPuYBp_D                         <= ConfigParamInput_DI(tDAVISrgbBiasConfig.AEPuYBp_D'range);
				BiasOutput_DN(tDAVISrgbBiasConfig.AEPuYBp_D'range) <= BiasConfigReg_DP.AEPuYBp_D;

			when DAVISRGB_BIASCONFIG_PARAM_ADDRESSES.BiasBuffer_D =>
				BiasConfigReg_DN.BiasBuffer_D                         <= ConfigParamInput_DI(tDAVISrgbBiasConfig.BiasBuffer_D'range);
				BiasOutput_DN(tDAVISrgbBiasConfig.BiasBuffer_D'range) <= BiasConfigReg_DP.BiasBuffer_D;

			when DAVISRGB_BIASCONFIG_PARAM_ADDRESSES.SSP_D =>
				BiasConfigReg_DN.SSP_D                         <= ConfigParamInput_DI(tDAVISrgbBiasConfig.SSP_D'range);
				BiasOutput_DN(tDAVISrgbBiasConfig.SSP_D'range) <= BiasConfigReg_DP.SSP_D;

			when DAVISRGB_BIASCONFIG_PARAM_ADDRESSES.SSN_D =>
				BiasConfigReg_DN.SSN_D                         <= ConfigParamInput_DI(tDAVISrgbBiasConfig.SSN_D'range);
				BiasOutput_DN(tDAVISrgbBiasConfig.SSN_D'range) <= BiasConfigReg_DP.SSN_D;

			when others => null;
		end case;
	end process biasIO;

	biasUpdate : process(Clock_CI, Reset_RI) is
	begin
		if Reset_RI = '1' then          -- asynchronous reset (active high)
			BiasOutput_DP <= (others => '0');

			BiasConfigReg_DP <= tDAVISrgbBiasConfigDefault;
		elsif rising_edge(Clock_CI) then -- rising clock edge
			BiasOutput_DP <= BiasOutput_DN;

			if LatchBiasReg_S = '1' and ConfigLatchInput_SI = '1' then
				BiasConfigReg_DP <= BiasConfigReg_DN;
			end if;
		end if;
	end process biasUpdate;

	chipIO : process(ConfigParamAddress_DI, ConfigParamInput_DI, ChipConfigReg_DP)
	begin
		ChipConfigReg_DN <= ChipConfigReg_DP;
		ChipOutput_DN    <= (others => '0');

		case ConfigParamAddress_DI is
			when DAVISRGB_CHIPCONFIG_PARAM_ADDRESSES.DigitalMux0_D =>
				ChipConfigReg_DN.DigitalMux0_D                         <= unsigned(ConfigParamInput_DI(tDAVISrgbChipConfig.DigitalMux0_D'range));
				ChipOutput_DN(tDAVISrgbChipConfig.DigitalMux0_D'range) <= std_logic_vector(ChipConfigReg_DP.DigitalMux0_D);

			when DAVISRGB_CHIPCONFIG_PARAM_ADDRESSES.DigitalMux1_D =>
				ChipConfigReg_DN.DigitalMux1_D                         <= unsigned(ConfigParamInput_DI(tDAVISrgbChipConfig.DigitalMux1_D'range));
				ChipOutput_DN(tDAVISrgbChipConfig.DigitalMux1_D'range) <= std_logic_vector(ChipConfigReg_DP.DigitalMux1_D);

			when DAVISRGB_CHIPCONFIG_PARAM_ADDRESSES.DigitalMux2_D =>
				ChipConfigReg_DN.DigitalMux2_D                         <= unsigned(ConfigParamInput_DI(tDAVISrgbChipConfig.DigitalMux2_D'range));
				ChipOutput_DN(tDAVISrgbChipConfig.DigitalMux2_D'range) <= std_logic_vector(ChipConfigReg_DP.DigitalMux2_D);

			when DAVISRGB_CHIPCONFIG_PARAM_ADDRESSES.DigitalMux3_D =>
				ChipConfigReg_DN.DigitalMux3_D                         <= unsigned(ConfigParamInput_DI(tDAVISrgbChipConfig.DigitalMux3_D'range));
				ChipOutput_DN(tDAVISrgbChipConfig.DigitalMux3_D'range) <= std_logic_vector(ChipConfigReg_DP.DigitalMux3_D);

			when DAVISRGB_CHIPCONFIG_PARAM_ADDRESSES.AnalogMux0_D =>
				ChipConfigReg_DN.AnalogMux0_D                         <= unsigned(ConfigParamInput_DI(tDAVISrgbChipConfig.AnalogMux0_D'range));
				ChipOutput_DN(tDAVISrgbChipConfig.AnalogMux0_D'range) <= std_logic_vector(ChipConfigReg_DP.AnalogMux0_D);

			when DAVISRGB_CHIPCONFIG_PARAM_ADDRESSES.AnalogMux1_D =>
				ChipConfigReg_DN.AnalogMux1_D                         <= unsigned(ConfigParamInput_DI(tDAVISrgbChipConfig.AnalogMux1_D'range));
				ChipOutput_DN(tDAVISrgbChipConfig.AnalogMux1_D'range) <= std_logic_vector(ChipConfigReg_DP.AnalogMux1_D);

			when DAVISRGB_CHIPCONFIG_PARAM_ADDRESSES.AnalogMux2_D =>
				ChipConfigReg_DN.AnalogMux2_D                         <= unsigned(ConfigParamInput_DI(tDAVISrgbChipConfig.AnalogMux2_D'range));
				ChipOutput_DN(tDAVISrgbChipConfig.AnalogMux2_D'range) <= std_logic_vector(ChipConfigReg_DP.AnalogMux2_D);

			when DAVISRGB_CHIPCONFIG_PARAM_ADDRESSES.BiasMux0_D =>
				ChipConfigReg_DN.BiasMux0_D                         <= unsigned(ConfigParamInput_DI(tDAVISrgbChipConfig.BiasMux0_D'range));
				ChipOutput_DN(tDAVISrgbChipConfig.BiasMux0_D'range) <= std_logic_vector(ChipConfigReg_DP.BiasMux0_D);

			when DAVISRGB_CHIPCONFIG_PARAM_ADDRESSES.ResetCalibNeuron_S =>
				ChipConfigReg_DN.ResetCalibNeuron_S <= ConfigParamInput_DI(0);
				ChipOutput_DN(0)                    <= ChipConfigReg_DP.ResetCalibNeuron_S;

			when DAVISRGB_CHIPCONFIG_PARAM_ADDRESSES.TypeNCalibNeuron_S =>
				ChipConfigReg_DN.TypeNCalibNeuron_S <= ConfigParamInput_DI(0);
				ChipOutput_DN(0)                    <= ChipConfigReg_DP.TypeNCalibNeuron_S;

			when DAVISRGB_CHIPCONFIG_PARAM_ADDRESSES.ResetTestPixel_S =>
				ChipConfigReg_DN.ResetTestPixel_S <= ConfigParamInput_DI(0);
				ChipOutput_DN(0)                  <= ChipConfigReg_DP.ResetTestPixel_S;

			when DAVISRGB_CHIPCONFIG_PARAM_ADDRESSES.AERnArow_S =>
				ChipConfigReg_DN.AERnArow_S <= ConfigParamInput_DI(0);
				ChipOutput_DN(0)            <= ChipConfigReg_DP.AERnArow_S;

			when DAVISRGB_CHIPCONFIG_PARAM_ADDRESSES.UseAOut_S =>
				ChipConfigReg_DN.UseAOut_S <= ConfigParamInput_DI(0);
				ChipOutput_DN(0)           <= ChipConfigReg_DP.UseAOut_S;

			when DAVISRGB_CHIPCONFIG_PARAM_ADDRESSES.SelectGrayCounter_S =>
				ChipConfigReg_DN.SelectGrayCounter_S <= ConfigParamInput_DI(0);
				ChipOutput_DN(0)                     <= ChipConfigReg_DP.SelectGrayCounter_S;

			when DAVISRGB_CHIPCONFIG_PARAM_ADDRESSES.TestADC_S =>
				ChipConfigReg_DN.TestADC_S <= ConfigParamInput_DI(0);
				ChipOutput_DN(0)           <= ChipConfigReg_DP.TestADC_S;

			when DAVISRGB_CHIPCONFIG_PARAM_ADDRESSES.AdjustOVG1Lo_S =>
				ChipConfigReg_DN.AdjustOVG1Lo_S <= ConfigParamInput_DI(0);
				ChipOutput_DN(0)                <= ChipConfigReg_DP.AdjustOVG1Lo_S;

			when DAVISRGB_CHIPCONFIG_PARAM_ADDRESSES.AdjustOVG2Lo_S =>
				ChipConfigReg_DN.AdjustOVG2Lo_S <= ConfigParamInput_DI(0);
				ChipOutput_DN(0)                <= ChipConfigReg_DP.AdjustOVG2Lo_S;

			when DAVISRGB_CHIPCONFIG_PARAM_ADDRESSES.AdjustTX2OVG2Hi_S =>
				ChipConfigReg_DN.AdjustTX2OVG2Hi_S <= ConfigParamInput_DI(0);
				ChipOutput_DN(0)                   <= ChipConfigReg_DP.AdjustTX2OVG2Hi_S;

			when others => null;
		end case;
	end process chipIO;

	chipUpdate : process(Clock_CI, Reset_RI) is
	begin
		if Reset_RI = '1' then          -- asynchronous reset (active high)
			ChipOutput_DP <= (others => '0');

			ChipConfigReg_DP <= tDAVISrgbChipConfigDefault;
		elsif rising_edge(Clock_CI) then -- rising clock edge
			ChipOutput_DP <= ChipOutput_DN;

			if LatchChipReg_S = '1' and ConfigLatchInput_SI = '1' then
				ChipConfigReg_DP <= ChipConfigReg_DN;
			end if;
		end if;
	end process chipUpdate;
end architecture Behavioral;
