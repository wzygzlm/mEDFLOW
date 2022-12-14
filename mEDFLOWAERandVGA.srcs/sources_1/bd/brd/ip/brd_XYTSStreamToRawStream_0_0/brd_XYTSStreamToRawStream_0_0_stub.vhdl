-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
-- Date        : Thu Nov  3 10:18:56 2022
-- Host        : DESKTOP-3TNSMFC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top brd_XYTSStreamToRawStream_0_0 -prefix
--               brd_XYTSStreamToRawStream_0_0_ brd_XYTSStreamToRawStream_0_0_stub.vhdl
-- Design      : brd_XYTSStreamToRawStream_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z035ffg676-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity brd_XYTSStreamToRawStream_0_0 is
  Port ( 
    tsReg_V_ap_vld : out STD_LOGIC;
    glLastTSReg_V_ap_vld : out STD_LOGIC;
    yReg_V_ap_vld : out STD_LOGIC;
    glLastYReg_V_ap_vld : out STD_LOGIC;
    tsDiffFlgReg_V_ap_vld : out STD_LOGIC;
    yDiffFlgReg_V_ap_vld : out STD_LOGIC;
    rotateInfoOutReg_V_ap_vld : out STD_LOGIC;
    sentCnt_V_ap_vld : out STD_LOGIC;
    nonMonTSDiffFlgReg_V_ap_vld : out STD_LOGIC;
    tsWrappedVal_V_ap_vld : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    ap_start : in STD_LOGIC;
    ap_done : out STD_LOGIC;
    ap_idle : out STD_LOGIC;
    ap_ready : out STD_LOGIC;
    streamOut_V_V_TVALID : out STD_LOGIC;
    streamOut_V_V_TREADY : in STD_LOGIC;
    streamOut_V_V_TDATA : out STD_LOGIC_VECTOR ( 15 downto 0 );
    xStreamIn_V_V_TVALID : in STD_LOGIC;
    xStreamIn_V_V_TREADY : out STD_LOGIC;
    xStreamIn_V_V_TDATA : in STD_LOGIC_VECTOR ( 15 downto 0 );
    yStreamIn_V_V_TVALID : in STD_LOGIC;
    yStreamIn_V_V_TREADY : out STD_LOGIC;
    yStreamIn_V_V_TDATA : in STD_LOGIC_VECTOR ( 15 downto 0 );
    tsStreamIn_V_V_TVALID : in STD_LOGIC;
    tsStreamIn_V_V_TREADY : out STD_LOGIC;
    tsStreamIn_V_V_TDATA : in STD_LOGIC_VECTOR ( 63 downto 0 );
    polStreamIn_V_V_TVALID : in STD_LOGIC;
    polStreamIn_V_V_TREADY : out STD_LOGIC;
    polStreamIn_V_V_TDATA : in STD_LOGIC_VECTOR ( 7 downto 0 );
    custDataStreamIn_V_V_TVALID : in STD_LOGIC;
    custDataStreamIn_V_V_TREADY : out STD_LOGIC;
    custDataStreamIn_V_V_TDATA : in STD_LOGIC_VECTOR ( 15 downto 0 );
    tsReg_V : out STD_LOGIC_VECTOR ( 63 downto 0 );
    glLastTSReg_V : out STD_LOGIC_VECTOR ( 63 downto 0 );
    yReg_V : out STD_LOGIC_VECTOR ( 15 downto 0 );
    glLastYReg_V : out STD_LOGIC_VECTOR ( 15 downto 0 );
    tsDiffFlgReg_V : out STD_LOGIC_VECTOR ( 0 to 0 );
    yDiffFlgReg_V : out STD_LOGIC_VECTOR ( 0 to 0 );
    rotateInfoOutReg_V : out STD_LOGIC_VECTOR ( 63 downto 0 );
    sentCnt_V : out STD_LOGIC_VECTOR ( 31 downto 0 );
    nonMonTSDiffFlgReg_V : out STD_LOGIC_VECTOR ( 0 to 0 );
    tsWrappedVal_V : out STD_LOGIC_VECTOR ( 11 downto 0 )
  );

end brd_XYTSStreamToRawStream_0_0;

architecture stub of brd_XYTSStreamToRawStream_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "tsReg_V_ap_vld,glLastTSReg_V_ap_vld,yReg_V_ap_vld,glLastYReg_V_ap_vld,tsDiffFlgReg_V_ap_vld,yDiffFlgReg_V_ap_vld,rotateInfoOutReg_V_ap_vld,sentCnt_V_ap_vld,nonMonTSDiffFlgReg_V_ap_vld,tsWrappedVal_V_ap_vld,ap_clk,ap_rst_n,ap_start,ap_done,ap_idle,ap_ready,streamOut_V_V_TVALID,streamOut_V_V_TREADY,streamOut_V_V_TDATA[15:0],xStreamIn_V_V_TVALID,xStreamIn_V_V_TREADY,xStreamIn_V_V_TDATA[15:0],yStreamIn_V_V_TVALID,yStreamIn_V_V_TREADY,yStreamIn_V_V_TDATA[15:0],tsStreamIn_V_V_TVALID,tsStreamIn_V_V_TREADY,tsStreamIn_V_V_TDATA[63:0],polStreamIn_V_V_TVALID,polStreamIn_V_V_TREADY,polStreamIn_V_V_TDATA[7:0],custDataStreamIn_V_V_TVALID,custDataStreamIn_V_V_TREADY,custDataStreamIn_V_V_TDATA[15:0],tsReg_V[63:0],glLastTSReg_V[63:0],yReg_V[15:0],glLastYReg_V[15:0],tsDiffFlgReg_V[0:0],yDiffFlgReg_V[0:0],rotateInfoOutReg_V[63:0],sentCnt_V[31:0],nonMonTSDiffFlgReg_V[0:0],tsWrappedVal_V[11:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "XYTSStreamToRawStream,Vivado 2018.1";
begin
end;
