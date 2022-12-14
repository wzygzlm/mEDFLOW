-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
-- Date        : Fri Nov 18 10:57:58 2022
-- Host        : DESKTOP-3TNSMFC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               E:/PhD_project/vivado_prjs/mEDFLOW/mEDFLOWAERandVGA/mEDFLOWAERandVGA.srcs/sources_1/bd/brd/ip/brd_LEDShifter_0_0/brd_LEDShifter_0_0_stub.vhdl
-- Design      : brd_LEDShifter_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z035ffg676-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity brd_LEDShifter_0_0 is
  Port ( 
    sys_clk_p : in STD_LOGIC;
    sys_clk_n : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    LEDs : out STD_LOGIC_VECTOR ( 5 downto 0 )
  );

end brd_LEDShifter_0_0;

architecture stub of brd_LEDShifter_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "sys_clk_p,sys_clk_n,rst_n,LEDs[5:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "LEDShifter,Vivado 2018.1";
begin
end;
