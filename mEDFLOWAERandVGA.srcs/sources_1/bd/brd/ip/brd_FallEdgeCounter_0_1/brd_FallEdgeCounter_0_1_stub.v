// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
// Date        : Mon Nov 21 23:01:42 2022
// Host        : DESKTOP-3TNSMFC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               e:/PhD_project/vivado_prjs/mEDFLOW/mEDFLOWAERandVGA/mEDFLOWAERandVGA.srcs/sources_1/bd/brd/ip/brd_FallEdgeCounter_0_1/brd_FallEdgeCounter_0_1_stub.v
// Design      : brd_FallEdgeCounter_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z035ffg676-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "FallEdgeCounter,Vivado 2018.1" *)
module brd_FallEdgeCounter_0_1(clk, button, buttonEdgeNum)
/* synthesis syn_black_box black_box_pad_pin="clk,button,buttonEdgeNum[3:0]" */;
  input clk;
  input button;
  output [3:0]buttonEdgeNum;
endmodule
