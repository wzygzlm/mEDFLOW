-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
-- Date        : Wed Nov  2 19:18:44 2022
-- Host        : DESKTOP-3TNSMFC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top brd_xlslice_0_1 -prefix
--               brd_xlslice_0_1_ brd_xlslice_0_1_sim_netlist.vhdl
-- Design      : brd_xlslice_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z035ffg676-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity brd_xlslice_0_1 is
  port (
    Din : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of brd_xlslice_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of brd_xlslice_0_1 : entity is "brd_xlslice_0_1,xlslice_v1_0_1_xlslice,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of brd_xlslice_0_1 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of brd_xlslice_0_1 : entity is "xlslice_v1_0_1_xlslice,Vivado 2018.1";
end brd_xlslice_0_1;

architecture STRUCTURE of brd_xlslice_0_1 is
  signal \^din\ : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  Dout(0) <= \^din\(1);
  \^din\(1) <= Din(1);
end STRUCTURE;
