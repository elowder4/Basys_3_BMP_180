// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Thu Jul 18 10:08:22 2024
// Host        : Ethan-Lowder-Laptop running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/ethan/Vivado_Projects/basic_i2c/basic_i2c.gen/sources_1/ip/c_addsub_2/c_addsub_2_stub.v
// Design      : c_addsub_2
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "c_addsub_v12_0_16,Vivado 2023.2" *)
module c_addsub_2(A, B, CLK, CE, S)
/* synthesis syn_black_box black_box_pad_pin="A[25:0],B[38:0],CE,S[39:0]" */
/* synthesis syn_force_seq_prim="CLK" */;
  input [25:0]A;
  input [38:0]B;
  input CLK /* synthesis syn_isclock = 1 */;
  input CE;
  output [39:0]S;
endmodule
