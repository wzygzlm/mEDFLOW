-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
-- Date        : Mon Nov 21 23:01:41 2022
-- Host        : DESKTOP-3TNSMFC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               e:/PhD_project/vivado_prjs/mEDFLOW/mEDFLOWAERandVGA/mEDFLOWAERandVGA.srcs/sources_1/bd/brd/ip/brd_FallEdgeCounter_0_0/brd_FallEdgeCounter_0_0_stub.vhdl
-- Design      : brd_FallEdgeCounter_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z035ffg676-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity brd_FallEdgeCounter_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    button : in STD_LOGIC;
    buttonEdgeNum : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );

end brd_FallEdgeCounter_0_0;

architecture stub of brd_FallEdgeCounter_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,button,buttonEdgeNum[3:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "FallEdgeCounter,Vivado 2018.1";
begin
end;
