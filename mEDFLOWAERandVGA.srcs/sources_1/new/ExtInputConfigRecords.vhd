library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.Functions.SizeCountUpToN;
use work.Settings.LOGIC_CLOCK_FREQ;

package ExtInputConfigRecords is
	constant EXTINPUT_CONFIG_MODULE_ADDRESS : unsigned(6 downto 0) := to_unsigned(4, 7);

	-- Pulse lengths are in cycles at logic clock frequency. Since we want to support up to 1Hz signals,
	-- we need this value to go up to 1 million (20 bits) in microseconds.
	constant LOGIC_CLOCK_FREQ_SIZE : integer := SizeCountUpToN(LOGIC_CLOCK_FREQ);

	constant EXTINPUT_MAX_TIME_SIZE : integer := 20 + LOGIC_CLOCK_FREQ_SIZE;

	type tExtInputConfigParamAddresses is record
		RunDetector_S                 : unsigned(7 downto 0);
		DetectRisingEdges_S           : unsigned(7 downto 0);
		DetectFallingEdges_S          : unsigned(7 downto 0);
		DetectPulses_S                : unsigned(7 downto 0);
		DetectPulsePolarity_S         : unsigned(7 downto 0);
		DetectPulseLength_D           : unsigned(7 downto 0);
		HasGenerator_S                : unsigned(7 downto 0);
		RunGenerator_S                : unsigned(7 downto 0);
		GeneratePulsePolarity_S       : unsigned(7 downto 0);
		GeneratePulseInterval_D       : unsigned(7 downto 0);
		GeneratePulseLength_D         : unsigned(7 downto 0);
		GenerateInjectOnRisingEdge_S  : unsigned(7 downto 0);
		GenerateInjectOnFallingEdge_S : unsigned(7 downto 0);
	end record tExtInputConfigParamAddresses;

	constant EXTINPUT_CONFIG_PARAM_ADDRESSES : tExtInputConfigParamAddresses := (
		RunDetector_S                 => to_unsigned(0, 8),
		DetectRisingEdges_S           => to_unsigned(1, 8),
		DetectFallingEdges_S          => to_unsigned(2, 8),
		DetectPulses_S                => to_unsigned(3, 8),
		DetectPulsePolarity_S         => to_unsigned(4, 8),
		DetectPulseLength_D           => to_unsigned(5, 8),
		HasGenerator_S                => to_unsigned(10, 8),
		RunGenerator_S                => to_unsigned(11, 8),
		GeneratePulsePolarity_S       => to_unsigned(12, 8),
		GeneratePulseInterval_D       => to_unsigned(13, 8),
		GeneratePulseLength_D         => to_unsigned(14, 8),
		GenerateInjectOnRisingEdge_S  => to_unsigned(15, 8),
		GenerateInjectOnFallingEdge_S => to_unsigned(16, 8));

	type tExtInputConfig is record
		RunDetector_S                 : std_logic;
		DetectRisingEdges_S           : std_logic;
		DetectFallingEdges_S          : std_logic;
		DetectPulses_S                : std_logic;
		DetectPulsePolarity_S         : std_logic;
		DetectPulseLength_D           : unsigned(EXTINPUT_MAX_TIME_SIZE - 1 downto 0);
		HasGenerator_S                : std_logic;
		RunGenerator_S                : std_logic;
		GeneratePulsePolarity_S       : std_logic;
		GeneratePulseInterval_D       : unsigned(EXTINPUT_MAX_TIME_SIZE - 1 downto 0);
		GeneratePulseLength_D         : unsigned(EXTINPUT_MAX_TIME_SIZE - 1 downto 0);
		GenerateInjectOnRisingEdge_S  : std_logic;
		GenerateInjectOnFallingEdge_S : std_logic;
	end record tExtInputConfig;

	constant tExtInputConfigDefault : tExtInputConfig := (
		RunDetector_S                 => '0',
		DetectRisingEdges_S           => '0',
		DetectFallingEdges_S          => '0',
		DetectPulses_S                => '1',
		DetectPulsePolarity_S         => '1',
		DetectPulseLength_D           => to_unsigned(integer(LOGIC_CLOCK_FREQ), EXTINPUT_MAX_TIME_SIZE),
		RunGenerator_S                => '0',
		HasGenerator_S                => '0',
		GeneratePulsePolarity_S       => '1',
		GeneratePulseInterval_D       => to_unsigned(integer(LOGIC_CLOCK_FREQ), EXTINPUT_MAX_TIME_SIZE),
		GeneratePulseLength_D         => to_unsigned(integer(LOGIC_CLOCK_FREQ / 2.0), EXTINPUT_MAX_TIME_SIZE),
		GenerateInjectOnRisingEdge_S  => '0',
		GenerateInjectOnFallingEdge_S => '0');
end package ExtInputConfigRecords;
