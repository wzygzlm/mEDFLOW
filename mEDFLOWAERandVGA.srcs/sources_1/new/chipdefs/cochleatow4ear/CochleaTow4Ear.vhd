library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

package CochleaTow4Ear is
	constant CHIP_IDENTIFIER : unsigned(3 downto 0) := to_unsigned(12, 4);

	constant AER_BUS_WIDTH : integer := 10;
end package CochleaTow4Ear;
