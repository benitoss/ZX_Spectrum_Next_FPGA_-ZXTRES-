// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Tue May  2 11:35:39 2023
// Host        : Laptop-XPS running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Projects/Z80/ZX_Spectrum_Next/ZX_Spectrum_Next_FPGA/cores/zxnext/synth-zxnext/zxnext-issue4/zxnext-issue4.runs/keyjoy_sdpram_64_6_synth_1/keyjoy_sdpram_64_6_stub.v
// Design      : keyjoy_sdpram_64_6
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a15tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2022.2" *)
module keyjoy_sdpram_64_6(a, d, dpra, clk, we, dpo)
/* synthesis syn_black_box black_box_pad_pin="a[5:0],d[5:0],dpra[5:0],clk,we,dpo[5:0]" */;
  input [5:0]a;
  input [5:0]d;
  input [5:0]dpra;
  input clk;
  input we;
  output [5:0]dpo;
endmodule
