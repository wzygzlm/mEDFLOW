// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Fri Nov 18 10:57:58 2022
// Host        : DESKTOP-3TNSMFC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               E:/PhD_project/vivado_prjs/mEDFLOW/mEDFLOWAERandVGA/mEDFLOWAERandVGA.srcs/sources_1/bd/brd/ip/brd_LEDShifter_0_0/brd_LEDShifter_0_0_stub.v
// Design      : brd_LEDShifter_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z035ffg676-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "LEDShifter,Vivado 2018.1" *)
module brd_LEDShifter_0_0(sys_clk_p, sys_clk_n, rst_n, LEDs)
/* synthesis syn_black_box black_box_pad_pin="sys_clk_p,sys_clk_n,rst_n,LEDs[5:0]" */;
  input sys_clk_p;
  input sys_clk_n;
  input rst_n;
  output [5:0]LEDs;
endmodule
