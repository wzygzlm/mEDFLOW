library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.ChipGeometry.all;

-- Chip to be used for this logic.
use work.DAVIS346b.all;

package Settings is
	constant DEVICE_FAMILY : string := "zynq_7000";

	constant CLOCK_DEVIATION_FACTOR : real := 1.000;

	constant USB_CLOCK_FREQ         : real    := 100.00; -- 50, 80 or 100 are viable settings, depending on FX3 and routing.
	constant USB_FIFO_WIDTH         : integer := 16;
	constant USB_BURST_WRITE_LENGTH : integer := 8;

	constant LOGIC_CLOCK_FREQ : real := 100.00; -- PLL can generate between 5 and 500 MHz here.

	constant ADC_CLOCK_FREQ : real := 100.00;

	constant DVS_BAFILTER_ENABLE        : boolean := true;
	constant DVS_BAFILTER_SUBSAMPLE_COL : integer := 2;
	constant DVS_BAFILTER_SUBSAMPLE_ROW : integer := 2;

	constant USBLOGIC_FIFO_SIZE               : integer := 8192;
	constant USBLOGIC_FIFO_ALMOST_EMPTY_SIZE  : integer := USB_BURST_WRITE_LENGTH;
	constant USBLOGIC_FIFO_ALMOST_FULL_SIZE   : integer := 2; -- EVENT + TS
	constant DVSAER_FIFO_SIZE                 : integer := 2048;
	constant DVSAER_FIFO_ALMOST_EMPTY_SIZE    : integer := 8;
	constant DVSAER_FIFO_ALMOST_FULL_SIZE     : integer := 18; -- FILTERS REG
	constant APSADC_FIFO_SIZE                 : integer := 2048;
	constant APSADC_FIFO_ALMOST_EMPTY_SIZE    : integer := 16;
	constant APSADC_FIFO_ALMOST_FULL_SIZE     : integer := 2; -- FIFOOUT REG
	constant IMU_FIFO_SIZE                    : integer := 68; -- four samples (4x17)
	constant IMU_FIFO_ALMOST_EMPTY_SIZE       : integer := 1; -- drain all
	constant IMU_FIFO_ALMOST_FULL_SIZE        : integer := 17; -- one sample (1x17)
	constant EXT_INPUT_FIFO_SIZE              : integer := 128;
	constant EXT_INPUT_FIFO_ALMOST_EMPTY_SIZE : integer := 1; -- drain all
	constant EXT_INPUT_FIFO_ALMOST_FULL_SIZE  : integer := 2; -- FIFOOUT REG

	constant LOGIC_VERSION : unsigned(4 downto 0) := to_unsigned(18, 5);
	constant LOGIC_PATCH   : unsigned(2 downto 0) := to_unsigned(1, 3);

	-- The idea behing common-source/ is to have generic implementations of features, that can
	-- easily be adapted to a specific platform+chip combination. As such, only Settings.vhd and
	-- TopLevel.vhd are private to a specific system, while the rest of the code is shared.
	-- Some code (APSADC, SystemInfo for example) depends on information about the chip.
	-- This information is stored in the various chip definitions files under chipdefs/, but those
	-- files have to be included when they are needed. If this inclusion happened inside of the
	-- files inside common-source/, the whole purpose of it would be defeated: you'd have to edit
	-- several files in common-source/ each time you want to try another chip. We don't want that.
	-- As such, the chip def files are included here, only once, in Settings.vhd, so that code may
	-- refer to a common location, that is intended to be private to the particular system.
	-- VHDL use clauses are local to the file they are declared in, so anybody just including
	-- Settings.h wouldn't get the content of ChipDef.vhd automatically, which is why we re-define
	-- that common set of variables here and assign them their values from ChipDef.vhd.
	constant CHIP_IDENTIFIER : unsigned(3 downto 0) := CHIP_IDENTIFIER;

	constant CHIP_APS_HAS_GLOBAL_SHUTTER : std_logic := CHIP_APS_HAS_GLOBAL_SHUTTER;
	constant CHIP_APS_HAS_INTEGRATED_ADC : std_logic := CHIP_APS_HAS_INTEGRATED_ADC;

	constant CHIP_APS_SIZE_COLUMNS : unsigned(CHIP_APS_SIZE_COLUMNS'range) := CHIP_APS_SIZE_COLUMNS;
	constant CHIP_APS_SIZE_ROWS    : unsigned(CHIP_APS_SIZE_ROWS'range)    := CHIP_APS_SIZE_ROWS;
	constant CHIP_APS_STREAM_START : std_logic_vector(1 downto 0)          := START_LOWER_LEFT;
	constant CHIP_APS_AXES_INVERT  : std_logic                             := AXES_INVERT;

	constant CHIP_DVS_SIZE_COLUMNS : unsigned(CHIP_DVS_SIZE_COLUMNS'range) := CHIP_DVS_SIZE_COLUMNS;
	constant CHIP_DVS_SIZE_ROWS    : unsigned(CHIP_DVS_SIZE_ROWS'range)    := CHIP_DVS_SIZE_ROWS;
	constant CHIP_DVS_ORIGIN_POINT : std_logic_vector(1 downto 0)          := START_UPPER_LEFT;
	constant CHIP_DVS_AXES_INVERT  : std_logic                             := AXES_INVERT;

	constant DVS_AER_BUS_WIDTH : integer := DVS_AER_BUS_WIDTH;
	constant APS_ADC_BUS_WIDTH : integer := APS_ADC_BUS_WIDTH;
end Settings;
