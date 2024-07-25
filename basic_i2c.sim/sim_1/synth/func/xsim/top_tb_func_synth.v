// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Tue Jun 25 10:36:01 2024
// Host        : Ethan-Lowder-Laptop running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               C:/Users/ethan/Vivado_Projects/basic_i2c/basic_i2c.sim/sim_1/synth/func/xsim/top_tb_func_synth.v
// Design      : i2c_master
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* module_address = "7'b0000000" *) (* recACK = "6'b001010" *) (* recLSB0 = "6'b011100" *) 
(* recLSB1 = "6'b011101" *) (* recLSB2 = "6'b011110" *) (* recLSB3 = "6'b011111" *) 
(* recLSB4 = "6'b100000" *) (* recLSB5 = "6'b100001" *) (* recLSB6 = "6'b100010" *) 
(* recLSB7 = "6'b100011" *) (* recMSB0 = "6'b010011" *) (* recMSB1 = "6'b010100" *) 
(* recMSB2 = "6'b010101" *) (* recMSB3 = "6'b010110" *) (* recMSB4 = "6'b010111" *) 
(* recMSB5 = "6'b011000" *) (* recMSB6 = "6'b011001" *) (* recMSB7 = "6'b011010" *) 
(* sendACK = "6'b011011" *) (* sendMAdd0 = "6'b000010" *) (* sendMAdd1 = "6'b000011" *) 
(* sendMAdd2 = "6'b000100" *) (* sendMAdd3 = "6'b000101" *) (* sendMAdd4 = "6'b000110" *) 
(* sendMAdd5 = "6'b000111" *) (* sendMAdd6 = "6'b001000" *) (* sendNACK = "6'b100100" *) 
(* sendR = "6'b010010" *) (* sendRAdd0 = "6'b001011" *) (* sendRAdd1 = "6'b001100" *) 
(* sendRAdd2 = "6'b001101" *) (* sendRAdd3 = "6'b001110" *) (* sendRAdd4 = "6'b001111" *) 
(* sendRAdd5 = "6'b010000" *) (* sendRAdd6 = "6'b010001" *) (* sendRAdd7 = "6'b100110" *) 
(* sendStart = "6'b000001" *) (* sendStop = "6'b100101" *) (* sendW = "6'b001001" *) 
(* start = "6'b000000" *) 
(* NotValidForBitStream *)
module i2c_master
   (register_address,
    clk_4MHz,
    scl,
    sda,
    status,
    temp);
  input [7:0]register_address;
  input clk_4MHz;
  output scl;
  inout sda;
  output status;
  output [15:0]temp;

  wire \FSM_sequential_state[0]_i_2_n_0 ;
  wire \FSM_sequential_state[0]_i_3_n_0 ;
  wire \FSM_sequential_state[0]_i_4_n_0 ;
  wire \FSM_sequential_state[0]_i_5_n_0 ;
  wire \FSM_sequential_state[0]_i_6_n_0 ;
  wire \FSM_sequential_state[0]_i_7_n_0 ;
  wire \FSM_sequential_state[2]_i_2_n_0 ;
  wire \FSM_sequential_state[2]_i_3_n_0 ;
  wire \FSM_sequential_state[2]_i_4_n_0 ;
  wire \FSM_sequential_state[2]_i_5_n_0 ;
  wire \FSM_sequential_state[2]_i_6_n_0 ;
  wire \FSM_sequential_state[3]_i_10_n_0 ;
  wire \FSM_sequential_state[3]_i_11_n_0 ;
  wire \FSM_sequential_state[3]_i_12_n_0 ;
  wire \FSM_sequential_state[3]_i_2_n_0 ;
  wire \FSM_sequential_state[3]_i_3_n_0 ;
  wire \FSM_sequential_state[3]_i_4_n_0 ;
  wire \FSM_sequential_state[3]_i_5_n_0 ;
  wire \FSM_sequential_state[3]_i_6_n_0 ;
  wire \FSM_sequential_state[3]_i_7_n_0 ;
  wire \FSM_sequential_state[3]_i_8_n_0 ;
  wire \FSM_sequential_state[3]_i_9_n_0 ;
  wire \FSM_sequential_state[4]_i_2_n_0 ;
  wire \FSM_sequential_state[4]_i_3_n_0 ;
  wire \FSM_sequential_state[4]_i_4_n_0 ;
  wire \FSM_sequential_state[4]_i_5_n_0 ;
  wire \FSM_sequential_state[4]_i_6_n_0 ;
  wire \FSM_sequential_state[4]_i_7_n_0 ;
  wire \FSM_sequential_state[5]_i_10_n_0 ;
  wire \FSM_sequential_state[5]_i_11_n_0 ;
  wire \FSM_sequential_state[5]_i_12_n_0 ;
  wire \FSM_sequential_state[5]_i_13_n_0 ;
  wire \FSM_sequential_state[5]_i_14_n_0 ;
  wire \FSM_sequential_state[5]_i_15_n_0 ;
  wire \FSM_sequential_state[5]_i_16_n_0 ;
  wire \FSM_sequential_state[5]_i_17_n_0 ;
  wire \FSM_sequential_state[5]_i_18_n_0 ;
  wire \FSM_sequential_state[5]_i_19_n_0 ;
  wire \FSM_sequential_state[5]_i_1_n_0 ;
  wire \FSM_sequential_state[5]_i_20_n_0 ;
  wire \FSM_sequential_state[5]_i_21_n_0 ;
  wire \FSM_sequential_state[5]_i_22_n_0 ;
  wire \FSM_sequential_state[5]_i_23_n_0 ;
  wire \FSM_sequential_state[5]_i_24_n_0 ;
  wire \FSM_sequential_state[5]_i_25_n_0 ;
  wire \FSM_sequential_state[5]_i_26_n_0 ;
  wire \FSM_sequential_state[5]_i_27_n_0 ;
  wire \FSM_sequential_state[5]_i_28_n_0 ;
  wire \FSM_sequential_state[5]_i_29_n_0 ;
  wire \FSM_sequential_state[5]_i_30_n_0 ;
  wire \FSM_sequential_state[5]_i_31_n_0 ;
  wire \FSM_sequential_state[5]_i_32_n_0 ;
  wire \FSM_sequential_state[5]_i_33_n_0 ;
  wire \FSM_sequential_state[5]_i_34_n_0 ;
  wire \FSM_sequential_state[5]_i_35_n_0 ;
  wire \FSM_sequential_state[5]_i_36_n_0 ;
  wire \FSM_sequential_state[5]_i_37_n_0 ;
  wire \FSM_sequential_state[5]_i_38_n_0 ;
  wire \FSM_sequential_state[5]_i_39_n_0 ;
  wire \FSM_sequential_state[5]_i_3_n_0 ;
  wire \FSM_sequential_state[5]_i_40_n_0 ;
  wire \FSM_sequential_state[5]_i_41_n_0 ;
  wire \FSM_sequential_state[5]_i_42_n_0 ;
  wire \FSM_sequential_state[5]_i_43_n_0 ;
  wire \FSM_sequential_state[5]_i_44_n_0 ;
  wire \FSM_sequential_state[5]_i_45_n_0 ;
  wire \FSM_sequential_state[5]_i_46_n_0 ;
  wire \FSM_sequential_state[5]_i_47_n_0 ;
  wire \FSM_sequential_state[5]_i_48_n_0 ;
  wire \FSM_sequential_state[5]_i_49_n_0 ;
  wire \FSM_sequential_state[5]_i_4_n_0 ;
  wire \FSM_sequential_state[5]_i_50_n_0 ;
  wire \FSM_sequential_state[5]_i_51_n_0 ;
  wire \FSM_sequential_state[5]_i_52_n_0 ;
  wire \FSM_sequential_state[5]_i_53_n_0 ;
  wire \FSM_sequential_state[5]_i_54_n_0 ;
  wire \FSM_sequential_state[5]_i_55_n_0 ;
  wire \FSM_sequential_state[5]_i_56_n_0 ;
  wire \FSM_sequential_state[5]_i_57_n_0 ;
  wire \FSM_sequential_state[5]_i_58_n_0 ;
  wire \FSM_sequential_state[5]_i_59_n_0 ;
  wire \FSM_sequential_state[5]_i_5_n_0 ;
  wire \FSM_sequential_state[5]_i_60_n_0 ;
  wire \FSM_sequential_state[5]_i_61_n_0 ;
  wire \FSM_sequential_state[5]_i_62_n_0 ;
  wire \FSM_sequential_state[5]_i_63_n_0 ;
  wire \FSM_sequential_state[5]_i_64_n_0 ;
  wire \FSM_sequential_state[5]_i_65_n_0 ;
  wire \FSM_sequential_state[5]_i_66_n_0 ;
  wire \FSM_sequential_state[5]_i_67_n_0 ;
  wire \FSM_sequential_state[5]_i_68_n_0 ;
  wire \FSM_sequential_state[5]_i_69_n_0 ;
  wire \FSM_sequential_state[5]_i_6_n_0 ;
  wire \FSM_sequential_state[5]_i_70_n_0 ;
  wire \FSM_sequential_state[5]_i_71_n_0 ;
  wire \FSM_sequential_state[5]_i_72_n_0 ;
  wire \FSM_sequential_state[5]_i_73_n_0 ;
  wire \FSM_sequential_state[5]_i_74_n_0 ;
  wire \FSM_sequential_state[5]_i_75_n_0 ;
  wire \FSM_sequential_state[5]_i_76_n_0 ;
  wire \FSM_sequential_state[5]_i_77_n_0 ;
  wire \FSM_sequential_state[5]_i_78_n_0 ;
  wire \FSM_sequential_state[5]_i_79_n_0 ;
  wire \FSM_sequential_state[5]_i_7_n_0 ;
  wire \FSM_sequential_state[5]_i_80_n_0 ;
  wire \FSM_sequential_state[5]_i_8_n_0 ;
  wire \FSM_sequential_state[5]_i_9_n_0 ;
  wire [7:0]LSB;
  wire \LSB[0]_i_1_n_0 ;
  wire \LSB[0]_i_2_n_0 ;
  wire \LSB[0]_i_3_n_0 ;
  wire \LSB[0]_i_4_n_0 ;
  wire \LSB[1]_i_1_n_0 ;
  wire \LSB[1]_i_2_n_0 ;
  wire \LSB[1]_i_3_n_0 ;
  wire \LSB[1]_i_4_n_0 ;
  wire \LSB[1]_i_5_n_0 ;
  wire \LSB[2]_i_1_n_0 ;
  wire \LSB[2]_i_2_n_0 ;
  wire \LSB[2]_i_3_n_0 ;
  wire \LSB[2]_i_4_n_0 ;
  wire \LSB[2]_i_5_n_0 ;
  wire \LSB[3]_i_1_n_0 ;
  wire \LSB[3]_i_2_n_0 ;
  wire \LSB[3]_i_3_n_0 ;
  wire \LSB[3]_i_4_n_0 ;
  wire \LSB[3]_i_5_n_0 ;
  wire \LSB[3]_i_6_n_0 ;
  wire \LSB[3]_i_7_n_0 ;
  wire \LSB[3]_i_8_n_0 ;
  wire \LSB[4]_i_1_n_0 ;
  wire \LSB[4]_i_2_n_0 ;
  wire \LSB[4]_i_3_n_0 ;
  wire \LSB[4]_i_4_n_0 ;
  wire \LSB[4]_i_5_n_0 ;
  wire \LSB[5]_i_1_n_0 ;
  wire \LSB[5]_i_2_n_0 ;
  wire \LSB[5]_i_3_n_0 ;
  wire \LSB[5]_i_4_n_0 ;
  wire \LSB[5]_i_5_n_0 ;
  wire \LSB[5]_i_6_n_0 ;
  wire \LSB[5]_i_7_n_0 ;
  wire \LSB[6]_i_1_n_0 ;
  wire \LSB[6]_i_2_n_0 ;
  wire \LSB[6]_i_3_n_0 ;
  wire \LSB[6]_i_4_n_0 ;
  wire \LSB[6]_i_5_n_0 ;
  wire \LSB[7]_i_1_n_0 ;
  wire \LSB[7]_i_2_n_0 ;
  wire \LSB[7]_i_3_n_0 ;
  wire \LSB[7]_i_4_n_0 ;
  wire \LSB[7]_i_5_n_0 ;
  wire [2:2]MSB;
  wire \MSB[1]_i_1_n_0 ;
  wire \MSB[1]_i_2_n_0 ;
  wire \MSB[2]_i_1_n_0 ;
  wire \MSB[2]_i_3_n_0 ;
  wire \MSB[3]_i_1_n_0 ;
  wire \MSB[3]_i_2_n_0 ;
  wire \MSB[3]_i_3_n_0 ;
  wire \MSB[3]_i_4_n_0 ;
  wire \MSB[3]_i_5_n_0 ;
  wire \MSB[4]_i_1_n_0 ;
  wire \MSB[4]_i_2_n_0 ;
  wire \MSB[4]_i_3_n_0 ;
  wire \MSB[4]_i_4_n_0 ;
  wire \MSB[4]_i_5_n_0 ;
  wire \MSB[5]_i_1_n_0 ;
  wire \MSB[5]_i_2_n_0 ;
  wire \MSB[5]_i_3_n_0 ;
  wire \MSB[5]_i_4_n_0 ;
  wire \MSB[6]_i_1_n_0 ;
  wire \MSB[6]_i_2_n_0 ;
  wire \MSB[6]_i_3_n_0 ;
  wire \MSB[6]_i_4_n_0 ;
  wire \MSB[6]_i_5_n_0 ;
  wire \MSB[7]_i_1_n_0 ;
  wire \MSB[7]_i_2_n_0 ;
  wire \MSB[7]_i_3_n_0 ;
  wire \MSB[7]_i_4_n_0 ;
  wire clk_4MHz;
  wire clk_4MHz_IBUF;
  wire clk_4MHz_IBUF_BUFG;
  wire [4:0]clk_div;
  wire \clk_div[4]_i_1_n_0 ;
  wire \counter[0]_i_1_n_0 ;
  wire \counter[10]_i_1_n_0 ;
  wire \counter[10]_i_2_n_0 ;
  wire \counter[10]_i_3_n_0 ;
  wire \counter[10]_i_4_n_0 ;
  wire \counter[10]_i_5_n_0 ;
  wire \counter[10]_i_6_n_0 ;
  wire \counter[10]_i_7_n_0 ;
  wire \counter[15]_i_10_n_0 ;
  wire \counter[15]_i_1_n_0 ;
  wire \counter[15]_i_3_n_0 ;
  wire \counter[15]_i_4_n_0 ;
  wire \counter[15]_i_5_n_0 ;
  wire \counter[15]_i_6_n_0 ;
  wire \counter[15]_i_7_n_0 ;
  wire \counter[15]_i_8_n_0 ;
  wire \counter[15]_i_9_n_0 ;
  wire \counter[2]_i_1_n_0 ;
  wire \counter[6]_i_1_n_0 ;
  wire \counter[7]_i_1_n_0 ;
  wire \counter[8]_i_1_n_0 ;
  wire \counter[9]_i_1_n_0 ;
  wire \counter_reg[12]_i_1_n_0 ;
  wire \counter_reg[12]_i_1_n_1 ;
  wire \counter_reg[12]_i_1_n_2 ;
  wire \counter_reg[12]_i_1_n_3 ;
  wire \counter_reg[15]_i_2_n_2 ;
  wire \counter_reg[15]_i_2_n_3 ;
  wire \counter_reg[4]_i_1_n_0 ;
  wire \counter_reg[4]_i_1_n_1 ;
  wire \counter_reg[4]_i_1_n_2 ;
  wire \counter_reg[4]_i_1_n_3 ;
  wire \counter_reg[5]_i_1_n_0 ;
  wire \counter_reg[5]_i_1_n_1 ;
  wire \counter_reg[5]_i_1_n_2 ;
  wire \counter_reg[5]_i_1_n_3 ;
  wire \counter_reg_n_0_[0] ;
  wire \counter_reg_n_0_[10] ;
  wire \counter_reg_n_0_[11] ;
  wire \counter_reg_n_0_[12] ;
  wire \counter_reg_n_0_[13] ;
  wire \counter_reg_n_0_[14] ;
  wire \counter_reg_n_0_[15] ;
  wire \counter_reg_n_0_[1] ;
  wire \counter_reg_n_0_[2] ;
  wire \counter_reg_n_0_[3] ;
  wire \counter_reg_n_0_[4] ;
  wire \counter_reg_n_0_[5] ;
  wire \counter_reg_n_0_[6] ;
  wire \counter_reg_n_0_[7] ;
  wire \counter_reg_n_0_[8] ;
  wire \counter_reg_n_0_[9] ;
  wire [15:1]in84;
  wire out_i_10_n_0;
  wire out_i_11_n_0;
  wire out_i_12_n_0;
  wire out_i_13_n_0;
  wire out_i_14_n_0;
  wire out_i_15_n_0;
  wire out_i_16_n_0;
  wire out_i_17_n_0;
  wire out_i_18_n_0;
  wire out_i_19_n_0;
  wire out_i_1_n_0;
  wire out_i_20_n_0;
  wire out_i_21_n_0;
  wire out_i_22_n_0;
  wire out_i_23_n_0;
  wire out_i_2_n_0;
  wire out_i_3_n_0;
  wire out_i_4_n_0;
  wire out_i_5_n_0;
  wire out_i_6_n_0;
  wire out_i_7_n_0;
  wire out_i_8_n_0;
  wire out_i_9_n_0;
  wire [4:0]p_1_in__0;
  wire [7:0]register_address;
  wire [7:0]register_address_IBUF;
  wire scl;
  wire scl_OBUF;
  wire scl_reg_i_1_n_0;
  wire sda;
  wire sda_IBUF;
  wire sda_OBUF;
  wire sda_TRI;
  wire [5:0]state__0;
  wire [5:0]state__1;
  wire status;
  wire status_OBUF;
  wire status_reg;
  wire status_reg0;
  wire status_reg_i_3_n_0;
  wire [15:0]temp;
  wire [15:0]temp_OBUF;
  wire temp_reg;
  wire [15:9]temp_reg1;
  wire [3:2]\NLW_counter_reg[15]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_counter_reg[15]_i_2_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF01)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(state__0[2]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(\FSM_sequential_state[0]_i_2_n_0 ),
        .I4(\FSM_sequential_state[0]_i_3_n_0 ),
        .I5(\FSM_sequential_state[0]_i_4_n_0 ),
        .O(state__1[0]));
  LUT6 #(
    .INIT(64'h8889AAABAFAAAAAA)) 
    \FSM_sequential_state[0]_i_2 
       (.I0(state__0[5]),
        .I1(state__0[1]),
        .I2(state__0[3]),
        .I3(state__0[4]),
        .I4(state__0[0]),
        .I5(state__0[2]),
        .O(\FSM_sequential_state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hA00F0000A00C0000)) 
    \FSM_sequential_state[0]_i_3 
       (.I0(state__0[0]),
        .I1(\FSM_sequential_state[5]_i_18_n_0 ),
        .I2(state__0[2]),
        .I3(state__0[1]),
        .I4(state__0[3]),
        .I5(\FSM_sequential_state[0]_i_5_n_0 ),
        .O(\FSM_sequential_state[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00026242)) 
    \FSM_sequential_state[0]_i_4 
       (.I0(state__0[3]),
        .I1(state__0[1]),
        .I2(state__0[2]),
        .I3(state__0[4]),
        .I4(state__0[0]),
        .I5(\FSM_sequential_state[0]_i_6_n_0 ),
        .O(\FSM_sequential_state[0]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \FSM_sequential_state[0]_i_5 
       (.I0(\counter_reg_n_0_[0] ),
        .I1(\counter_reg_n_0_[1] ),
        .O(\FSM_sequential_state[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF000C0008)) 
    \FSM_sequential_state[0]_i_6 
       (.I0(\FSM_sequential_state[3]_i_12_n_0 ),
        .I1(state__0[3]),
        .I2(state__0[1]),
        .I3(state__0[2]),
        .I4(\counter_reg_n_0_[9] ),
        .I5(\FSM_sequential_state[0]_i_7_n_0 ),
        .O(\FSM_sequential_state[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFF7F0000FEFF0000)) 
    \FSM_sequential_state[0]_i_7 
       (.I0(\counter_reg_n_0_[4] ),
        .I1(\counter_reg_n_0_[2] ),
        .I2(\counter_reg_n_0_[8] ),
        .I3(\counter_reg_n_0_[7] ),
        .I4(\FSM_sequential_state[3]_i_2_n_0 ),
        .I5(\counter_reg_n_0_[5] ),
        .O(\FSM_sequential_state[0]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hB4F4AABABFFB5000)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(state__0[5]),
        .I1(state__0[3]),
        .I2(state__0[1]),
        .I3(state__0[4]),
        .I4(state__0[0]),
        .I5(state__0[2]),
        .O(state__1[1]));
  LUT6 #(
    .INIT(64'hFFFFFFFF4F444444)) 
    \FSM_sequential_state[2]_i_1 
       (.I0(\FSM_sequential_state[2]_i_2_n_0 ),
        .I1(state__0[4]),
        .I2(\FSM_sequential_state[2]_i_3_n_0 ),
        .I3(state__0[3]),
        .I4(\FSM_sequential_state[2]_i_4_n_0 ),
        .I5(\FSM_sequential_state[2]_i_5_n_0 ),
        .O(state__1[2]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hF7)) 
    \FSM_sequential_state[2]_i_2 
       (.I0(state__0[2]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .O(\FSM_sequential_state[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_sequential_state[2]_i_3 
       (.I0(state__0[2]),
        .I1(state__0[0]),
        .O(\FSM_sequential_state[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h000000001000FFFF)) 
    \FSM_sequential_state[2]_i_4 
       (.I0(\FSM_sequential_state[3]_i_12_n_0 ),
        .I1(\FSM_sequential_state[5]_i_37_n_0 ),
        .I2(\FSM_sequential_state[2]_i_6_n_0 ),
        .I3(\FSM_sequential_state[3]_i_7_n_0 ),
        .I4(state__0[4]),
        .I5(state__0[1]),
        .O(\FSM_sequential_state[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h4858185818585D08)) 
    \FSM_sequential_state[2]_i_5 
       (.I0(state__0[5]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(state__0[2]),
        .I4(state__0[3]),
        .I5(state__0[4]),
        .O(\FSM_sequential_state[2]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \FSM_sequential_state[2]_i_6 
       (.I0(\counter_reg_n_0_[6] ),
        .I1(\counter_reg_n_0_[5] ),
        .I2(\counter_reg_n_0_[4] ),
        .I3(\counter_reg_n_0_[3] ),
        .O(\FSM_sequential_state[2]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFF2F2FFF2)) 
    \FSM_sequential_state[3]_i_1 
       (.I0(\FSM_sequential_state[3]_i_2_n_0 ),
        .I1(state__0[4]),
        .I2(\FSM_sequential_state[3]_i_3_n_0 ),
        .I3(\FSM_sequential_state[3]_i_4_n_0 ),
        .I4(\FSM_sequential_state[3]_i_5_n_0 ),
        .I5(\FSM_sequential_state[3]_i_6_n_0 ),
        .O(state__1[3]));
  LUT6 #(
    .INIT(64'hFFFFFFFFEFFFFFFF)) 
    \FSM_sequential_state[3]_i_10 
       (.I0(\counter_reg_n_0_[0] ),
        .I1(\counter_reg_n_0_[1] ),
        .I2(\counter_reg_n_0_[2] ),
        .I3(\counter_reg_n_0_[8] ),
        .I4(\counter_reg_n_0_[7] ),
        .I5(\counter_reg_n_0_[9] ),
        .O(\FSM_sequential_state[3]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'hDFFF)) 
    \FSM_sequential_state[3]_i_11 
       (.I0(\counter_reg_n_0_[6] ),
        .I1(\counter_reg_n_0_[5] ),
        .I2(\counter_reg_n_0_[4] ),
        .I3(\counter_reg_n_0_[3] ),
        .O(\FSM_sequential_state[3]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    \FSM_sequential_state[3]_i_12 
       (.I0(\counter_reg_n_0_[10] ),
        .I1(\counter_reg_n_0_[13] ),
        .I2(\counter_reg_n_0_[12] ),
        .I3(\counter_reg_n_0_[15] ),
        .I4(\counter_reg_n_0_[14] ),
        .I5(\counter_reg_n_0_[11] ),
        .O(\FSM_sequential_state[3]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \FSM_sequential_state[3]_i_2 
       (.I0(state__0[2]),
        .I1(state__0[1]),
        .I2(state__0[3]),
        .O(\FSM_sequential_state[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0F02020202020202)) 
    \FSM_sequential_state[3]_i_3 
       (.I0(state__0[5]),
        .I1(state__0[1]),
        .I2(state__0[2]),
        .I3(\FSM_sequential_state[3]_i_7_n_0 ),
        .I4(\FSM_sequential_state[3]_i_8_n_0 ),
        .I5(\FSM_sequential_state[3]_i_9_n_0 ),
        .O(\FSM_sequential_state[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF000055575555)) 
    \FSM_sequential_state[3]_i_4 
       (.I0(state__0[1]),
        .I1(\FSM_sequential_state[3]_i_10_n_0 ),
        .I2(\FSM_sequential_state[3]_i_11_n_0 ),
        .I3(\FSM_sequential_state[3]_i_12_n_0 ),
        .I4(state__0[2]),
        .I5(state__0[0]),
        .O(\FSM_sequential_state[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_sequential_state[3]_i_5 
       (.I0(state__0[5]),
        .I1(state__0[3]),
        .O(\FSM_sequential_state[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0303080000004C08)) 
    \FSM_sequential_state[3]_i_6 
       (.I0(state__0[1]),
        .I1(state__0[4]),
        .I2(state__0[5]),
        .I3(state__0[0]),
        .I4(state__0[2]),
        .I5(state__0[3]),
        .O(\FSM_sequential_state[3]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \FSM_sequential_state[3]_i_7 
       (.I0(\counter_reg_n_0_[1] ),
        .I1(\counter_reg_n_0_[0] ),
        .I2(\counter_reg_n_0_[7] ),
        .I3(\counter_reg_n_0_[9] ),
        .O(\FSM_sequential_state[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \FSM_sequential_state[3]_i_8 
       (.I0(\counter_reg_n_0_[3] ),
        .I1(\counter_reg_n_0_[6] ),
        .I2(state__0[3]),
        .I3(\counter_reg_n_0_[5] ),
        .I4(\counter_reg_n_0_[4] ),
        .I5(\counter_reg_n_0_[2] ),
        .O(\FSM_sequential_state[3]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \FSM_sequential_state[3]_i_9 
       (.I0(state__0[1]),
        .I1(\FSM_sequential_state[3]_i_12_n_0 ),
        .I2(\counter_reg_n_0_[8] ),
        .O(\FSM_sequential_state[3]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFAAEAEA)) 
    \FSM_sequential_state[4]_i_1 
       (.I0(\FSM_sequential_state[4]_i_2_n_0 ),
        .I1(state__0[5]),
        .I2(state__0[0]),
        .I3(\FSM_sequential_state[4]_i_3_n_0 ),
        .I4(state__0[2]),
        .I5(\FSM_sequential_state[4]_i_4_n_0 ),
        .O(state__1[4]));
  LUT6 #(
    .INIT(64'hF0F0FF00F0F08800)) 
    \FSM_sequential_state[4]_i_2 
       (.I0(\MSB[3]_i_2_n_0 ),
        .I1(state__0[3]),
        .I2(\FSM_sequential_state[4]_i_5_n_0 ),
        .I3(state__0[4]),
        .I4(state__0[5]),
        .I5(\FSM_sequential_state[3]_i_4_n_0 ),
        .O(\FSM_sequential_state[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'h10)) 
    \FSM_sequential_state[4]_i_3 
       (.I0(state__0[5]),
        .I1(state__0[3]),
        .I2(state__0[4]),
        .O(\FSM_sequential_state[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hCCCCECCCCCCCCFCC)) 
    \FSM_sequential_state[4]_i_4 
       (.I0(state__0[0]),
        .I1(\FSM_sequential_state[4]_i_6_n_0 ),
        .I2(state__0[3]),
        .I3(state__0[4]),
        .I4(state__0[2]),
        .I5(state__0[1]),
        .O(\FSM_sequential_state[4]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_state[4]_i_5 
       (.I0(state__0[1]),
        .I1(state__0[2]),
        .O(\FSM_sequential_state[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000080000000000)) 
    \FSM_sequential_state[4]_i_6 
       (.I0(\counter_reg_n_0_[1] ),
        .I1(\counter_reg_n_0_[0] ),
        .I2(\FSM_sequential_state[4]_i_7_n_0 ),
        .I3(state__0[4]),
        .I4(state__0[2]),
        .I5(\FSM_sequential_state[5]_i_45_n_0 ),
        .O(\FSM_sequential_state[4]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \FSM_sequential_state[4]_i_7 
       (.I0(\counter_reg_n_0_[9] ),
        .I1(\counter_reg_n_0_[7] ),
        .O(\FSM_sequential_state[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_sequential_state[5]_i_1 
       (.I0(\FSM_sequential_state[5]_i_3_n_0 ),
        .I1(\FSM_sequential_state[5]_i_4_n_0 ),
        .I2(\FSM_sequential_state[5]_i_5_n_0 ),
        .I3(\FSM_sequential_state[5]_i_6_n_0 ),
        .I4(\FSM_sequential_state[5]_i_7_n_0 ),
        .I5(\FSM_sequential_state[5]_i_8_n_0 ),
        .O(\FSM_sequential_state[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAA0000AAAAC000)) 
    \FSM_sequential_state[5]_i_10 
       (.I0(\LSB[7]_i_2_n_0 ),
        .I1(\FSM_sequential_state[5]_i_39_n_0 ),
        .I2(state__0[2]),
        .I3(state__0[1]),
        .I4(state__0[0]),
        .I5(\FSM_sequential_state[5]_i_40_n_0 ),
        .O(\FSM_sequential_state[5]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h4444400040004000)) 
    \FSM_sequential_state[5]_i_11 
       (.I0(\LSB[6]_i_5_n_0 ),
        .I1(\counter_reg_n_0_[8] ),
        .I2(\FSM_sequential_state[5]_i_41_n_0 ),
        .I3(\FSM_sequential_state[5]_i_42_n_0 ),
        .I4(\FSM_sequential_state[5]_i_43_n_0 ),
        .I5(\FSM_sequential_state[5]_i_44_n_0 ),
        .O(\FSM_sequential_state[5]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h0000400000000000)) 
    \FSM_sequential_state[5]_i_12 
       (.I0(\counter[15]_i_5_n_0 ),
        .I1(\counter_reg_n_0_[1] ),
        .I2(\counter_reg_n_0_[0] ),
        .I3(\counter_reg_n_0_[7] ),
        .I4(\counter_reg_n_0_[9] ),
        .I5(\FSM_sequential_state[5]_i_45_n_0 ),
        .O(\FSM_sequential_state[5]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h40000000)) 
    \FSM_sequential_state[5]_i_13 
       (.I0(state__0[0]),
        .I1(\FSM_sequential_state[5]_i_46_n_0 ),
        .I2(\counter_reg_n_0_[7] ),
        .I3(\counter_reg_n_0_[9] ),
        .I4(\FSM_sequential_state[3]_i_9_n_0 ),
        .O(\FSM_sequential_state[5]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hF8F8F888F888F888)) 
    \FSM_sequential_state[5]_i_14 
       (.I0(\LSB[4]_i_5_n_0 ),
        .I1(\FSM_sequential_state[5]_i_47_n_0 ),
        .I2(\FSM_sequential_state[3]_i_9_n_0 ),
        .I3(\FSM_sequential_state[5]_i_48_n_0 ),
        .I4(\FSM_sequential_state[5]_i_44_n_0 ),
        .I5(\FSM_sequential_state[5]_i_49_n_0 ),
        .O(\FSM_sequential_state[5]_i_14_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \FSM_sequential_state[5]_i_15 
       (.I0(\counter_reg_n_0_[2] ),
        .I1(\counter_reg_n_0_[1] ),
        .I2(\counter_reg_n_0_[0] ),
        .O(\FSM_sequential_state[5]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFCECECECA0A0A0A0)) 
    \FSM_sequential_state[5]_i_16 
       (.I0(\FSM_sequential_state[5]_i_50_n_0 ),
        .I1(\FSM_sequential_state[5]_i_51_n_0 ),
        .I2(\LSB[7]_i_4_n_0 ),
        .I3(\FSM_sequential_state[5]_i_52_n_0 ),
        .I4(\LSB[7]_i_2_n_0 ),
        .I5(\FSM_sequential_state[5]_i_53_n_0 ),
        .O(\FSM_sequential_state[5]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h00F0000000880088)) 
    \FSM_sequential_state[5]_i_17 
       (.I0(\LSB[5]_i_4_n_0 ),
        .I1(\FSM_sequential_state[5]_i_54_n_0 ),
        .I2(\LSB[3]_i_5_n_0 ),
        .I3(\FSM_sequential_state[2]_i_3_n_0 ),
        .I4(\counter_reg_n_0_[8] ),
        .I5(\counter_reg_n_0_[5] ),
        .O(\FSM_sequential_state[5]_i_17_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_sequential_state[5]_i_18 
       (.I0(\counter_reg_n_0_[3] ),
        .I1(\counter_reg_n_0_[6] ),
        .O(\FSM_sequential_state[5]_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_state[5]_i_19 
       (.I0(\counter_reg_n_0_[0] ),
        .I1(\counter_reg_n_0_[1] ),
        .O(\FSM_sequential_state[5]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0F082828)) 
    \FSM_sequential_state[5]_i_2 
       (.I0(state__0[5]),
        .I1(state__0[2]),
        .I2(state__0[1]),
        .I3(\FSM_sequential_state[5]_i_9_n_0 ),
        .I4(state__0[0]),
        .I5(\FSM_sequential_state[5]_i_10_n_0 ),
        .O(state__1[5]));
  LUT6 #(
    .INIT(64'h0000000088888C88)) 
    \FSM_sequential_state[5]_i_20 
       (.I0(\FSM_sequential_state[5]_i_55_n_0 ),
        .I1(\FSM_sequential_state[5]_i_56_n_0 ),
        .I2(\FSM_sequential_state[5]_i_40_n_0 ),
        .I3(\FSM_sequential_state[5]_i_57_n_0 ),
        .I4(\FSM_sequential_state[3]_i_11_n_0 ),
        .I5(\FSM_sequential_state[3]_i_10_n_0 ),
        .O(\FSM_sequential_state[5]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \FSM_sequential_state[5]_i_21 
       (.I0(\FSM_sequential_state[5]_i_58_n_0 ),
        .I1(\counter[15]_i_9_n_0 ),
        .I2(\counter_reg_n_0_[5] ),
        .I3(\counter_reg_n_0_[6] ),
        .I4(out_i_12_n_0),
        .I5(\MSB[7]_i_4_n_0 ),
        .O(\FSM_sequential_state[5]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h8F880000FFFFFFFF)) 
    \FSM_sequential_state[5]_i_22 
       (.I0(\LSB[4]_i_5_n_0 ),
        .I1(\FSM_sequential_state[5]_i_28_n_0 ),
        .I2(\FSM_sequential_state[3]_i_11_n_0 ),
        .I3(\FSM_sequential_state[3]_i_9_n_0 ),
        .I4(\FSM_sequential_state[5]_i_59_n_0 ),
        .I5(\FSM_sequential_state[5]_i_60_n_0 ),
        .O(\FSM_sequential_state[5]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h0100000000000000)) 
    \FSM_sequential_state[5]_i_23 
       (.I0(\FSM_sequential_state[3]_i_11_n_0 ),
        .I1(state__0[0]),
        .I2(\counter_reg_n_0_[2] ),
        .I3(\FSM_sequential_state[5]_i_19_n_0 ),
        .I4(\LSB[2]_i_2_n_0 ),
        .I5(\MSB[4]_i_3_n_0 ),
        .O(\FSM_sequential_state[5]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h8888800080008000)) 
    \FSM_sequential_state[5]_i_24 
       (.I0(\MSB[3]_i_2_n_0 ),
        .I1(\FSM_sequential_state[5]_i_52_n_0 ),
        .I2(\MSB[7]_i_4_n_0 ),
        .I3(\FSM_sequential_state[5]_i_28_n_0 ),
        .I4(\FSM_sequential_state[5]_i_61_n_0 ),
        .I5(\FSM_sequential_state[3]_i_9_n_0 ),
        .O(\FSM_sequential_state[5]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'hEA00000000000000)) 
    \FSM_sequential_state[5]_i_25 
       (.I0(\FSM_sequential_state[5]_i_62_n_0 ),
        .I1(state__0[5]),
        .I2(\FSM_sequential_state[5]_i_63_n_0 ),
        .I3(\LSB[3]_i_3_n_0 ),
        .I4(\MSB[3]_i_2_n_0 ),
        .I5(\LSB[4]_i_5_n_0 ),
        .O(\FSM_sequential_state[5]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF8000)) 
    \FSM_sequential_state[5]_i_26 
       (.I0(\FSM_sequential_state[5]_i_64_n_0 ),
        .I1(\LSB[3]_i_4_n_0 ),
        .I2(\FSM_sequential_state[5]_i_63_n_0 ),
        .I3(\FSM_sequential_state[5]_i_65_n_0 ),
        .I4(\FSM_sequential_state[5]_i_66_n_0 ),
        .I5(\counter[10]_i_1_n_0 ),
        .O(\FSM_sequential_state[5]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \FSM_sequential_state[5]_i_27 
       (.I0(\counter_reg_n_0_[2] ),
        .I1(\counter_reg_n_0_[8] ),
        .I2(\counter_reg_n_0_[7] ),
        .I3(\counter_reg_n_0_[9] ),
        .I4(state__0[1]),
        .I5(\FSM_sequential_state[3]_i_12_n_0 ),
        .O(\FSM_sequential_state[5]_i_27_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \FSM_sequential_state[5]_i_28 
       (.I0(\counter_reg_n_0_[3] ),
        .I1(\counter_reg_n_0_[6] ),
        .I2(\counter_reg_n_0_[4] ),
        .I3(\counter_reg_n_0_[5] ),
        .O(\FSM_sequential_state[5]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h0000000008000000)) 
    \FSM_sequential_state[5]_i_29 
       (.I0(\FSM_sequential_state[5]_i_57_n_0 ),
        .I1(\FSM_sequential_state[5]_i_67_n_0 ),
        .I2(\counter_reg_n_0_[6] ),
        .I3(\counter_reg_n_0_[5] ),
        .I4(\FSM_sequential_state[5]_i_19_n_0 ),
        .I5(\FSM_sequential_state[5]_i_40_n_0 ),
        .O(\FSM_sequential_state[5]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFEFE)) 
    \FSM_sequential_state[5]_i_3 
       (.I0(\FSM_sequential_state[5]_i_11_n_0 ),
        .I1(\FSM_sequential_state[5]_i_12_n_0 ),
        .I2(\FSM_sequential_state[5]_i_13_n_0 ),
        .I3(\FSM_sequential_state[5]_i_14_n_0 ),
        .I4(\FSM_sequential_state[5]_i_15_n_0 ),
        .I5(\FSM_sequential_state[5]_i_16_n_0 ),
        .O(\FSM_sequential_state[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8080808080000000)) 
    \FSM_sequential_state[5]_i_30 
       (.I0(\FSM_sequential_state[5]_i_64_n_0 ),
        .I1(\MSB[3]_i_4_n_0 ),
        .I2(\MSB[3]_i_2_n_0 ),
        .I3(\FSM_sequential_state[5]_i_68_n_0 ),
        .I4(\FSM_sequential_state[5]_i_9_n_0 ),
        .I5(\FSM_sequential_state[5]_i_69_n_0 ),
        .O(\FSM_sequential_state[5]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'h0000200000000000)) 
    \FSM_sequential_state[5]_i_31 
       (.I0(\MSB[4]_i_4_n_0 ),
        .I1(\counter_reg_n_0_[8] ),
        .I2(\FSM_sequential_state[5]_i_70_n_0 ),
        .I3(\FSM_sequential_state[5]_i_58_n_0 ),
        .I4(state__0[0]),
        .I5(\LSB[2]_i_4_n_0 ),
        .O(\FSM_sequential_state[5]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000400000)) 
    \FSM_sequential_state[5]_i_32 
       (.I0(\FSM_sequential_state[5]_i_71_n_0 ),
        .I1(\counter_reg_n_0_[8] ),
        .I2(\FSM_sequential_state[5]_i_9_n_0 ),
        .I3(\counter[10]_i_4_n_0 ),
        .I4(\counter_reg_n_0_[10] ),
        .I5(\counter_reg_n_0_[11] ),
        .O(\FSM_sequential_state[5]_i_32_n_0 ));
  LUT6 #(
    .INIT(64'h80808080FF000000)) 
    \FSM_sequential_state[5]_i_33 
       (.I0(\FSM_sequential_state[5]_i_72_n_0 ),
        .I1(\counter_reg_n_0_[2] ),
        .I2(\FSM_sequential_state[5]_i_70_n_0 ),
        .I3(\FSM_sequential_state[5]_i_73_n_0 ),
        .I4(\LSB[5]_i_6_n_0 ),
        .I5(state__0[1]),
        .O(\FSM_sequential_state[5]_i_33_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \FSM_sequential_state[5]_i_34 
       (.I0(\LSB[3]_i_3_n_0 ),
        .I1(\FSM_sequential_state[5]_i_74_n_0 ),
        .I2(\counter_reg_n_0_[7] ),
        .I3(\counter_reg_n_0_[9] ),
        .I4(\counter[15]_i_5_n_0 ),
        .I5(\FSM_sequential_state[5]_i_56_n_0 ),
        .O(\FSM_sequential_state[5]_i_34_n_0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \FSM_sequential_state[5]_i_35 
       (.I0(\MSB[3]_i_5_n_0 ),
        .I1(\counter_reg_n_0_[3] ),
        .I2(\counter_reg_n_0_[4] ),
        .I3(\LSB[5]_i_6_n_0 ),
        .I4(\FSM_sequential_state[5]_i_58_n_0 ),
        .I5(\MSB[4]_i_3_n_0 ),
        .O(\FSM_sequential_state[5]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF008000000000)) 
    \FSM_sequential_state[5]_i_36 
       (.I0(\LSB[7]_i_2_n_0 ),
        .I1(\LSB[5]_i_6_n_0 ),
        .I2(state__0[0]),
        .I3(\FSM_sequential_state[5]_i_74_n_0 ),
        .I4(\FSM_sequential_state[5]_i_75_n_0 ),
        .I5(\FSM_sequential_state[5]_i_67_n_0 ),
        .O(\FSM_sequential_state[5]_i_36_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \FSM_sequential_state[5]_i_37 
       (.I0(\counter_reg_n_0_[2] ),
        .I1(\counter_reg_n_0_[8] ),
        .O(\FSM_sequential_state[5]_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h88880000F8880000)) 
    \FSM_sequential_state[5]_i_38 
       (.I0(\FSM_sequential_state[5]_i_28_n_0 ),
        .I1(\LSB[2]_i_2_n_0 ),
        .I2(\LSB[3]_i_8_n_0 ),
        .I3(state__0[5]),
        .I4(state__0[0]),
        .I5(state__0[2]),
        .O(\FSM_sequential_state[5]_i_38_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFDFFF)) 
    \FSM_sequential_state[5]_i_39 
       (.I0(\counter_reg_n_0_[6] ),
        .I1(\counter_reg_n_0_[5] ),
        .I2(\counter_reg_n_0_[4] ),
        .I3(\counter_reg_n_0_[3] ),
        .I4(\FSM_sequential_state[3]_i_10_n_0 ),
        .I5(\FSM_sequential_state[3]_i_12_n_0 ),
        .O(\FSM_sequential_state[5]_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000020)) 
    \FSM_sequential_state[5]_i_4 
       (.I0(\FSM_sequential_state[5]_i_17_n_0 ),
        .I1(\FSM_sequential_state[5]_i_18_n_0 ),
        .I2(\FSM_sequential_state[5]_i_19_n_0 ),
        .I3(\counter_reg_n_0_[4] ),
        .I4(\counter_reg_n_0_[2] ),
        .I5(\FSM_sequential_state[5]_i_20_n_0 ),
        .O(\FSM_sequential_state[5]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \FSM_sequential_state[5]_i_40 
       (.I0(state__0[3]),
        .I1(state__0[5]),
        .I2(state__0[4]),
        .O(\FSM_sequential_state[5]_i_40_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h00800000)) 
    \FSM_sequential_state[5]_i_41 
       (.I0(\LSB[7]_i_2_n_0 ),
        .I1(\counter_reg_n_0_[3] ),
        .I2(\counter_reg_n_0_[4] ),
        .I3(\counter_reg_n_0_[5] ),
        .I4(\counter_reg_n_0_[6] ),
        .O(\FSM_sequential_state[5]_i_41_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h00000080)) 
    \FSM_sequential_state[5]_i_42 
       (.I0(\counter[15]_i_7_n_0 ),
        .I1(\counter_reg_n_0_[11] ),
        .I2(\counter_reg_n_0_[9] ),
        .I3(\counter_reg_n_0_[7] ),
        .I4(state__0[0]),
        .O(\FSM_sequential_state[5]_i_42_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \FSM_sequential_state[5]_i_43 
       (.I0(\counter_reg_n_0_[4] ),
        .I1(\counter_reg_n_0_[9] ),
        .I2(\counter_reg_n_0_[7] ),
        .I3(state__0[1]),
        .I4(\FSM_sequential_state[3]_i_12_n_0 ),
        .O(\FSM_sequential_state[5]_i_43_n_0 ));
  LUT6 #(
    .INIT(64'h444444444F444444)) 
    \FSM_sequential_state[5]_i_44 
       (.I0(\FSM_sequential_state[5]_i_40_n_0 ),
        .I1(\FSM_sequential_state[5]_i_76_n_0 ),
        .I2(\FSM_sequential_state[5]_i_18_n_0 ),
        .I3(\counter_reg_n_0_[5] ),
        .I4(state__0[5]),
        .I5(\FSM_sequential_state[2]_i_3_n_0 ),
        .O(\FSM_sequential_state[5]_i_44_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h000F0004)) 
    \FSM_sequential_state[5]_i_45 
       (.I0(\counter_reg_n_0_[8] ),
        .I1(\FSM_sequential_state[5]_i_77_n_0 ),
        .I2(\FSM_sequential_state[3]_i_12_n_0 ),
        .I3(state__0[1]),
        .I4(\FSM_sequential_state[5]_i_78_n_0 ),
        .O(\FSM_sequential_state[5]_i_45_n_0 ));
  LUT6 #(
    .INIT(64'h8000800080F08000)) 
    \FSM_sequential_state[5]_i_46 
       (.I0(\MSB[5]_i_4_n_0 ),
        .I1(\LSB[7]_i_2_n_0 ),
        .I2(\FSM_sequential_state[5]_i_19_n_0 ),
        .I3(\counter_reg_n_0_[2] ),
        .I4(\FSM_sequential_state[2]_i_6_n_0 ),
        .I5(\counter[15]_i_4_n_0 ),
        .O(\FSM_sequential_state[5]_i_46_n_0 ));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    \FSM_sequential_state[5]_i_47 
       (.I0(\FSM_sequential_state[5]_i_18_n_0 ),
        .I1(\counter_reg_n_0_[4] ),
        .I2(\counter_reg_n_0_[5] ),
        .I3(\counter_reg_n_0_[9] ),
        .I4(\counter_reg_n_0_[7] ),
        .I5(\MSB[3]_i_5_n_0 ),
        .O(\FSM_sequential_state[5]_i_47_n_0 ));
  LUT6 #(
    .INIT(64'h0004000000000000)) 
    \FSM_sequential_state[5]_i_48 
       (.I0(\counter_reg_n_0_[9] ),
        .I1(\counter_reg_n_0_[7] ),
        .I2(state__0[5]),
        .I3(state__0[3]),
        .I4(state__0[4]),
        .I5(\FSM_sequential_state[5]_i_79_n_0 ),
        .O(\FSM_sequential_state[5]_i_48_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \FSM_sequential_state[5]_i_49 
       (.I0(\counter_reg_n_0_[9] ),
        .I1(\counter_reg_n_0_[7] ),
        .I2(\counter_reg_n_0_[4] ),
        .O(\FSM_sequential_state[5]_i_49_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_sequential_state[5]_i_5 
       (.I0(\FSM_sequential_state[5]_i_21_n_0 ),
        .I1(\FSM_sequential_state[5]_i_22_n_0 ),
        .I2(\FSM_sequential_state[5]_i_23_n_0 ),
        .I3(\FSM_sequential_state[5]_i_24_n_0 ),
        .I4(\FSM_sequential_state[5]_i_25_n_0 ),
        .I5(\FSM_sequential_state[5]_i_26_n_0 ),
        .O(\FSM_sequential_state[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h888F888800000000)) 
    \FSM_sequential_state[5]_i_50 
       (.I0(\LSB[3]_i_3_n_0 ),
        .I1(\LSB[2]_i_2_n_0 ),
        .I2(\counter_reg_n_0_[4] ),
        .I3(\counter[15]_i_4_n_0 ),
        .I4(\MSB[3]_i_4_n_0 ),
        .I5(\FSM_sequential_state[5]_i_58_n_0 ),
        .O(\FSM_sequential_state[5]_i_50_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \FSM_sequential_state[5]_i_51 
       (.I0(\FSM_sequential_state[5]_i_63_n_0 ),
        .I1(\counter_reg_n_0_[8] ),
        .I2(\MSB[3]_i_2_n_0 ),
        .I3(\FSM_sequential_state[5]_i_9_n_0 ),
        .I4(\counter_reg_n_0_[11] ),
        .I5(\counter[15]_i_7_n_0 ),
        .O(\FSM_sequential_state[5]_i_51_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \FSM_sequential_state[5]_i_52 
       (.I0(\counter_reg_n_0_[1] ),
        .I1(\counter_reg_n_0_[0] ),
        .I2(\counter_reg_n_0_[2] ),
        .O(\FSM_sequential_state[5]_i_52_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \FSM_sequential_state[5]_i_53 
       (.I0(\counter_reg_n_0_[3] ),
        .I1(\counter_reg_n_0_[5] ),
        .I2(\counter_reg_n_0_[6] ),
        .I3(\counter_reg_n_0_[4] ),
        .O(\FSM_sequential_state[5]_i_53_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \FSM_sequential_state[5]_i_54 
       (.I0(state__0[3]),
        .I1(state__0[5]),
        .I2(state__0[4]),
        .O(\FSM_sequential_state[5]_i_54_n_0 ));
  LUT6 #(
    .INIT(64'h220000F022000000)) 
    \FSM_sequential_state[5]_i_55 
       (.I0(\FSM_sequential_state[5]_i_28_n_0 ),
        .I1(\FSM_sequential_state[5]_i_40_n_0 ),
        .I2(\LSB[3]_i_8_n_0 ),
        .I3(state__0[2]),
        .I4(state__0[0]),
        .I5(state__0[5]),
        .O(\FSM_sequential_state[5]_i_55_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \FSM_sequential_state[5]_i_56 
       (.I0(\counter[10]_i_4_n_0 ),
        .I1(\counter_reg_n_0_[10] ),
        .I2(state__0[1]),
        .I3(\counter_reg_n_0_[11] ),
        .O(\FSM_sequential_state[5]_i_56_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_state[5]_i_57 
       (.I0(state__0[2]),
        .I1(state__0[0]),
        .O(\FSM_sequential_state[5]_i_57_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \FSM_sequential_state[5]_i_58 
       (.I0(\counter_reg_n_0_[1] ),
        .I1(\counter_reg_n_0_[0] ),
        .I2(\counter_reg_n_0_[2] ),
        .O(\FSM_sequential_state[5]_i_58_n_0 ));
  LUT6 #(
    .INIT(64'h0000100000000000)) 
    \FSM_sequential_state[5]_i_59 
       (.I0(\LSB[6]_i_5_n_0 ),
        .I1(state__0[0]),
        .I2(state__0[2]),
        .I3(\counter_reg_n_0_[7] ),
        .I4(\counter_reg_n_0_[9] ),
        .I5(\FSM_sequential_state[4]_i_3_n_0 ),
        .O(\FSM_sequential_state[5]_i_59_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAA00800000)) 
    \FSM_sequential_state[5]_i_6 
       (.I0(\FSM_sequential_state[5]_i_27_n_0 ),
        .I1(\counter_reg_n_0_[0] ),
        .I2(\counter_reg_n_0_[1] ),
        .I3(\counter[15]_i_5_n_0 ),
        .I4(\FSM_sequential_state[5]_i_28_n_0 ),
        .I5(\FSM_sequential_state[5]_i_29_n_0 ),
        .O(\FSM_sequential_state[5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFEFFFFFFFFFFF)) 
    \FSM_sequential_state[5]_i_60 
       (.I0(\counter[10]_i_7_n_0 ),
        .I1(state__0[2]),
        .I2(state__0[0]),
        .I3(state__0[3]),
        .I4(state__0[5]),
        .I5(state__0[4]),
        .O(\FSM_sequential_state[5]_i_60_n_0 ));
  LUT6 #(
    .INIT(64'h0200000000000000)) 
    \FSM_sequential_state[5]_i_61 
       (.I0(state__0[5]),
        .I1(\counter_reg_n_0_[7] ),
        .I2(\counter_reg_n_0_[9] ),
        .I3(\counter_reg_n_0_[3] ),
        .I4(\counter_reg_n_0_[4] ),
        .I5(\LSB[5]_i_6_n_0 ),
        .O(\FSM_sequential_state[5]_i_61_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000400)) 
    \FSM_sequential_state[5]_i_62 
       (.I0(\counter_reg_n_0_[9] ),
        .I1(\counter_reg_n_0_[7] ),
        .I2(\counter_reg_n_0_[2] ),
        .I3(\counter_reg_n_0_[1] ),
        .I4(\counter_reg_n_0_[0] ),
        .I5(\FSM_sequential_state[5]_i_40_n_0 ),
        .O(\FSM_sequential_state[5]_i_62_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \FSM_sequential_state[5]_i_63 
       (.I0(\counter_reg_n_0_[9] ),
        .I1(\counter_reg_n_0_[7] ),
        .I2(\counter_reg_n_0_[2] ),
        .I3(\counter_reg_n_0_[0] ),
        .I4(\counter_reg_n_0_[1] ),
        .O(\FSM_sequential_state[5]_i_63_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_state[5]_i_64 
       (.I0(\FSM_sequential_state[3]_i_12_n_0 ),
        .I1(state__0[1]),
        .O(\FSM_sequential_state[5]_i_64_n_0 ));
  LUT6 #(
    .INIT(64'h2000000000000008)) 
    \FSM_sequential_state[5]_i_65 
       (.I0(out_i_13_n_0),
        .I1(state__0[4]),
        .I2(\counter_reg_n_0_[6] ),
        .I3(\counter_reg_n_0_[5] ),
        .I4(\counter_reg_n_0_[4] ),
        .I5(\counter_reg_n_0_[3] ),
        .O(\FSM_sequential_state[5]_i_65_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \FSM_sequential_state[5]_i_66 
       (.I0(\FSM_sequential_state[5]_i_80_n_0 ),
        .I1(\FSM_sequential_state[5]_i_63_n_0 ),
        .I2(\FSM_sequential_state[5]_i_40_n_0 ),
        .I3(\counter_reg_n_0_[8] ),
        .I4(\counter[15]_i_7_n_0 ),
        .I5(\counter_reg_n_0_[11] ),
        .O(\FSM_sequential_state[5]_i_66_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_state[5]_i_67 
       (.I0(\counter_reg_n_0_[3] ),
        .I1(\counter_reg_n_0_[4] ),
        .O(\FSM_sequential_state[5]_i_67_n_0 ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \FSM_sequential_state[5]_i_68 
       (.I0(\counter_reg_n_0_[4] ),
        .I1(\counter_reg_n_0_[7] ),
        .I2(\counter_reg_n_0_[9] ),
        .I3(\LSB[7]_i_5_n_0 ),
        .I4(\counter_reg_n_0_[2] ),
        .I5(\counter_reg_n_0_[8] ),
        .O(\FSM_sequential_state[5]_i_68_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000100000)) 
    \FSM_sequential_state[5]_i_69 
       (.I0(\FSM_sequential_state[5]_i_40_n_0 ),
        .I1(\counter_reg_n_0_[1] ),
        .I2(\counter_reg_n_0_[0] ),
        .I3(\FSM_sequential_state[4]_i_7_n_0 ),
        .I4(\counter_reg_n_0_[4] ),
        .I5(\FSM_sequential_state[5]_i_37_n_0 ),
        .O(\FSM_sequential_state[5]_i_69_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEEE)) 
    \FSM_sequential_state[5]_i_7 
       (.I0(\FSM_sequential_state[5]_i_30_n_0 ),
        .I1(\FSM_sequential_state[5]_i_31_n_0 ),
        .I2(\FSM_sequential_state[5]_i_32_n_0 ),
        .I3(\FSM_sequential_state[5]_i_33_n_0 ),
        .I4(\FSM_sequential_state[5]_i_34_n_0 ),
        .I5(\FSM_sequential_state[5]_i_35_n_0 ),
        .O(\FSM_sequential_state[5]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \FSM_sequential_state[5]_i_70 
       (.I0(\counter_reg_n_0_[6] ),
        .I1(\counter_reg_n_0_[5] ),
        .I2(\counter_reg_n_0_[3] ),
        .O(\FSM_sequential_state[5]_i_70_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \FSM_sequential_state[5]_i_71 
       (.I0(\counter_reg_n_0_[7] ),
        .I1(\counter_reg_n_0_[9] ),
        .O(\FSM_sequential_state[5]_i_71_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h00010020)) 
    \FSM_sequential_state[5]_i_72 
       (.I0(\counter_reg_n_0_[0] ),
        .I1(\counter_reg_n_0_[1] ),
        .I2(state__0[0]),
        .I3(state__0[2]),
        .I4(\counter_reg_n_0_[4] ),
        .O(\FSM_sequential_state[5]_i_72_n_0 ));
  LUT6 #(
    .INIT(64'h0000400000000100)) 
    \FSM_sequential_state[5]_i_73 
       (.I0(\LSB[7]_i_5_n_0 ),
        .I1(\counter_reg_n_0_[2] ),
        .I2(\counter_reg_n_0_[4] ),
        .I3(\counter_reg_n_0_[3] ),
        .I4(state__0[2]),
        .I5(state__0[0]),
        .O(\FSM_sequential_state[5]_i_73_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hFFF7)) 
    \FSM_sequential_state[5]_i_74 
       (.I0(\counter_reg_n_0_[8] ),
        .I1(\counter_reg_n_0_[2] ),
        .I2(\counter_reg_n_0_[1] ),
        .I3(\counter_reg_n_0_[0] ),
        .O(\FSM_sequential_state[5]_i_74_n_0 ));
  LUT6 #(
    .INIT(64'h0000000008000000)) 
    \FSM_sequential_state[5]_i_75 
       (.I0(\FSM_sequential_state[5]_i_54_n_0 ),
        .I1(\FSM_sequential_state[5]_i_52_n_0 ),
        .I2(\counter_reg_n_0_[5] ),
        .I3(\counter_reg_n_0_[6] ),
        .I4(\counter_reg_n_0_[8] ),
        .I5(\FSM_sequential_state[2]_i_3_n_0 ),
        .O(\FSM_sequential_state[5]_i_75_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \FSM_sequential_state[5]_i_76 
       (.I0(state__0[0]),
        .I1(state__0[2]),
        .I2(\counter_reg_n_0_[3] ),
        .I3(\counter_reg_n_0_[6] ),
        .I4(\counter_reg_n_0_[5] ),
        .O(\FSM_sequential_state[5]_i_76_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \FSM_sequential_state[5]_i_77 
       (.I0(\counter_reg_n_0_[2] ),
        .I1(\counter_reg_n_0_[4] ),
        .I2(\counter_reg_n_0_[5] ),
        .I3(\counter_reg_n_0_[6] ),
        .I4(\counter_reg_n_0_[3] ),
        .O(\FSM_sequential_state[5]_i_77_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \FSM_sequential_state[5]_i_78 
       (.I0(\counter_reg_n_0_[2] ),
        .I1(\counter_reg_n_0_[8] ),
        .I2(\counter_reg_n_0_[5] ),
        .I3(\counter_reg_n_0_[6] ),
        .I4(\counter_reg_n_0_[4] ),
        .I5(\counter_reg_n_0_[3] ),
        .O(\FSM_sequential_state[5]_i_78_n_0 ));
  LUT6 #(
    .INIT(64'h0000000002000080)) 
    \FSM_sequential_state[5]_i_79 
       (.I0(\counter_reg_n_0_[6] ),
        .I1(\counter_reg_n_0_[5] ),
        .I2(\counter_reg_n_0_[3] ),
        .I3(state__0[2]),
        .I4(state__0[0]),
        .I5(\counter_reg_n_0_[4] ),
        .O(\FSM_sequential_state[5]_i_79_n_0 ));
  LUT6 #(
    .INIT(64'h88888C8888888888)) 
    \FSM_sequential_state[5]_i_8 
       (.I0(\FSM_sequential_state[5]_i_36_n_0 ),
        .I1(\LSB[2]_i_4_n_0 ),
        .I2(\FSM_sequential_state[5]_i_37_n_0 ),
        .I3(\counter_reg_n_0_[0] ),
        .I4(\counter_reg_n_0_[1] ),
        .I5(\FSM_sequential_state[5]_i_38_n_0 ),
        .O(\FSM_sequential_state[5]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0800000000004000)) 
    \FSM_sequential_state[5]_i_80 
       (.I0(state__0[0]),
        .I1(state__0[2]),
        .I2(\counter_reg_n_0_[6] ),
        .I3(\counter_reg_n_0_[5] ),
        .I4(\counter_reg_n_0_[4] ),
        .I5(\counter_reg_n_0_[3] ),
        .O(\FSM_sequential_state[5]_i_80_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \FSM_sequential_state[5]_i_9 
       (.I0(state__0[5]),
        .I1(state__0[3]),
        .I2(state__0[4]),
        .O(\FSM_sequential_state[5]_i_9_n_0 ));
  (* FSM_ENCODED_STATES = "sendMAdd0:000000,sendStart:000010,start:000011,sendACK:000100,recLSB7:000110,recMSB4:001000,recMSB7:001010,recLSB6:001011,recMSB3:001100,recMSB6:001101,recLSB5:001111,recMSB2:001110,recMSB5:001001,sendRAdd4:010000,recMSB1:010010,recLSB4:010011,sendRAdd3:010100,sendRAdd2:010101,sendRAdd1:010110,recMSB0:010111,sendR:011000,sendRAdd0:011010,sendRAdd6:011011,sendMAdd5:011101,recACK:011001,sendRAdd5:010001,sendMAdd4:011111,sendW:100000,sendMAdd3:100001,sendMAdd6:011110,sendMAdd2:100010,recLSB3:100011,recLSB2:100100,sendRAdd7:011100,recLSB1:100101,sendStop:100110,recLSB0:000101,sendNACK:000111,sendMAdd1:000001" *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_sequential_state_reg[0] 
       (.C(clk_4MHz_IBUF_BUFG),
        .CE(\FSM_sequential_state[5]_i_1_n_0 ),
        .D(state__1[0]),
        .Q(state__0[0]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "sendMAdd0:000000,sendStart:000010,start:000011,sendACK:000100,recLSB7:000110,recMSB4:001000,recMSB7:001010,recLSB6:001011,recMSB3:001100,recMSB6:001101,recLSB5:001111,recMSB2:001110,recMSB5:001001,sendRAdd4:010000,recMSB1:010010,recLSB4:010011,sendRAdd3:010100,sendRAdd2:010101,sendRAdd1:010110,recMSB0:010111,sendR:011000,sendRAdd0:011010,sendRAdd6:011011,sendMAdd5:011101,recACK:011001,sendRAdd5:010001,sendMAdd4:011111,sendW:100000,sendMAdd3:100001,sendMAdd6:011110,sendMAdd2:100010,recLSB3:100011,recLSB2:100100,sendRAdd7:011100,recLSB1:100101,sendStop:100110,recLSB0:000101,sendNACK:000111,sendMAdd1:000001" *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_sequential_state_reg[1] 
       (.C(clk_4MHz_IBUF_BUFG),
        .CE(\FSM_sequential_state[5]_i_1_n_0 ),
        .D(state__1[1]),
        .Q(state__0[1]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "sendMAdd0:000000,sendStart:000010,start:000011,sendACK:000100,recLSB7:000110,recMSB4:001000,recMSB7:001010,recLSB6:001011,recMSB3:001100,recMSB6:001101,recLSB5:001111,recMSB2:001110,recMSB5:001001,sendRAdd4:010000,recMSB1:010010,recLSB4:010011,sendRAdd3:010100,sendRAdd2:010101,sendRAdd1:010110,recMSB0:010111,sendR:011000,sendRAdd0:011010,sendRAdd6:011011,sendMAdd5:011101,recACK:011001,sendRAdd5:010001,sendMAdd4:011111,sendW:100000,sendMAdd3:100001,sendMAdd6:011110,sendMAdd2:100010,recLSB3:100011,recLSB2:100100,sendRAdd7:011100,recLSB1:100101,sendStop:100110,recLSB0:000101,sendNACK:000111,sendMAdd1:000001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[2] 
       (.C(clk_4MHz_IBUF_BUFG),
        .CE(\FSM_sequential_state[5]_i_1_n_0 ),
        .D(state__1[2]),
        .Q(state__0[2]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "sendMAdd0:000000,sendStart:000010,start:000011,sendACK:000100,recLSB7:000110,recMSB4:001000,recMSB7:001010,recLSB6:001011,recMSB3:001100,recMSB6:001101,recLSB5:001111,recMSB2:001110,recMSB5:001001,sendRAdd4:010000,recMSB1:010010,recLSB4:010011,sendRAdd3:010100,sendRAdd2:010101,sendRAdd1:010110,recMSB0:010111,sendR:011000,sendRAdd0:011010,sendRAdd6:011011,sendMAdd5:011101,recACK:011001,sendRAdd5:010001,sendMAdd4:011111,sendW:100000,sendMAdd3:100001,sendMAdd6:011110,sendMAdd2:100010,recLSB3:100011,recLSB2:100100,sendRAdd7:011100,recLSB1:100101,sendStop:100110,recLSB0:000101,sendNACK:000111,sendMAdd1:000001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[3] 
       (.C(clk_4MHz_IBUF_BUFG),
        .CE(\FSM_sequential_state[5]_i_1_n_0 ),
        .D(state__1[3]),
        .Q(state__0[3]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "sendMAdd0:000000,sendStart:000010,start:000011,sendACK:000100,recLSB7:000110,recMSB4:001000,recMSB7:001010,recLSB6:001011,recMSB3:001100,recMSB6:001101,recLSB5:001111,recMSB2:001110,recMSB5:001001,sendRAdd4:010000,recMSB1:010010,recLSB4:010011,sendRAdd3:010100,sendRAdd2:010101,sendRAdd1:010110,recMSB0:010111,sendR:011000,sendRAdd0:011010,sendRAdd6:011011,sendMAdd5:011101,recACK:011001,sendRAdd5:010001,sendMAdd4:011111,sendW:100000,sendMAdd3:100001,sendMAdd6:011110,sendMAdd2:100010,recLSB3:100011,recLSB2:100100,sendRAdd7:011100,recLSB1:100101,sendStop:100110,recLSB0:000101,sendNACK:000111,sendMAdd1:000001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[4] 
       (.C(clk_4MHz_IBUF_BUFG),
        .CE(\FSM_sequential_state[5]_i_1_n_0 ),
        .D(state__1[4]),
        .Q(state__0[4]),
        .R(1'b0));
  (* FSM_ENCODED_STATES = "sendMAdd0:000000,sendStart:000010,start:000011,sendACK:000100,recLSB7:000110,recMSB4:001000,recMSB7:001010,recLSB6:001011,recMSB3:001100,recMSB6:001101,recLSB5:001111,recMSB2:001110,recMSB5:001001,sendRAdd4:010000,recMSB1:010010,recLSB4:010011,sendRAdd3:010100,sendRAdd2:010101,sendRAdd1:010110,recMSB0:010111,sendR:011000,sendRAdd0:011010,sendRAdd6:011011,sendMAdd5:011101,recACK:011001,sendRAdd5:010001,sendMAdd4:011111,sendW:100000,sendMAdd3:100001,sendMAdd6:011110,sendMAdd2:100010,recLSB3:100011,recLSB2:100100,sendRAdd7:011100,recLSB1:100101,sendStop:100110,recLSB0:000101,sendNACK:000111,sendMAdd1:000001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[5] 
       (.C(clk_4MHz_IBUF_BUFG),
        .CE(\FSM_sequential_state[5]_i_1_n_0 ),
        .D(state__1[5]),
        .Q(state__0[5]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h0002FFFF00020000)) 
    \LSB[0]_i_1 
       (.I0(\LSB[0]_i_2_n_0 ),
        .I1(state__0[4]),
        .I2(state__0[3]),
        .I3(state__0[5]),
        .I4(\LSB[0]_i_3_n_0 ),
        .I5(LSB[0]),
        .O(\LSB[0]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \LSB[0]_i_2 
       (.I0(sda_IBUF),
        .I1(state__0[1]),
        .O(\LSB[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00800000)) 
    \LSB[0]_i_3 
       (.I0(\LSB[0]_i_4_n_0 ),
        .I1(\LSB[7]_i_2_n_0 ),
        .I2(\counter_reg_n_0_[8] ),
        .I3(state__0[0]),
        .I4(\LSB[2]_i_4_n_0 ),
        .O(\LSB[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00000800000C0800)) 
    \LSB[0]_i_4 
       (.I0(\LSB[6]_i_5_n_0 ),
        .I1(\counter_reg_n_0_[6] ),
        .I2(\counter_reg_n_0_[5] ),
        .I3(\counter_reg_n_0_[3] ),
        .I4(\counter_reg_n_0_[4] ),
        .I5(\counter_reg_n_0_[2] ),
        .O(\LSB[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFFFF02000000)) 
    \LSB[1]_i_1 
       (.I0(\LSB[1]_i_2_n_0 ),
        .I1(\FSM_sequential_state[3]_i_5_n_0 ),
        .I2(state__0[4]),
        .I3(\LSB[1]_i_3_n_0 ),
        .I4(\LSB[2]_i_4_n_0 ),
        .I5(LSB[1]),
        .O(\LSB[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \LSB[1]_i_2 
       (.I0(sda_IBUF),
        .I1(state__0[2]),
        .O(\LSB[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0044000000F40000)) 
    \LSB[1]_i_3 
       (.I0(\LSB[1]_i_4_n_0 ),
        .I1(\LSB[7]_i_5_n_0 ),
        .I2(\counter_reg_n_0_[8] ),
        .I3(\FSM_sequential_state[2]_i_3_n_0 ),
        .I4(\LSB[1]_i_5_n_0 ),
        .I5(\counter[15]_i_9_n_0 ),
        .O(\LSB[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \LSB[1]_i_4 
       (.I0(\counter_reg_n_0_[8] ),
        .I1(\counter_reg_n_0_[2] ),
        .I2(\counter_reg_n_0_[4] ),
        .O(\LSB[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \LSB[1]_i_5 
       (.I0(\counter_reg_n_0_[5] ),
        .I1(\counter_reg_n_0_[6] ),
        .O(\LSB[1]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h8FFF8000)) 
    \LSB[2]_i_1 
       (.I0(\LSB[2]_i_2_n_0 ),
        .I1(sda_IBUF),
        .I2(\LSB[2]_i_3_n_0 ),
        .I3(\LSB[2]_i_4_n_0 ),
        .I4(LSB[2]),
        .O(\LSB[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \LSB[2]_i_2 
       (.I0(state__0[4]),
        .I1(state__0[2]),
        .I2(state__0[3]),
        .I3(state__0[5]),
        .O(\LSB[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    \LSB[2]_i_3 
       (.I0(\LSB[2]_i_2_n_0 ),
        .I1(\counter_reg_n_0_[4] ),
        .I2(\counter_reg_n_0_[8] ),
        .I3(\counter_reg_n_0_[5] ),
        .I4(state__0[0]),
        .I5(\LSB[2]_i_5_n_0 ),
        .O(\LSB[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000004000)) 
    \LSB[2]_i_4 
       (.I0(\counter_reg_n_0_[7] ),
        .I1(\counter_reg_n_0_[9] ),
        .I2(\counter_reg_n_0_[11] ),
        .I3(state__0[1]),
        .I4(\counter_reg_n_0_[10] ),
        .I5(\counter[10]_i_4_n_0 ),
        .O(\LSB[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h11113332)) 
    \LSB[2]_i_5 
       (.I0(\counter_reg_n_0_[3] ),
        .I1(\counter_reg_n_0_[6] ),
        .I2(\counter_reg_n_0_[1] ),
        .I3(\counter_reg_n_0_[0] ),
        .I4(\counter_reg_n_0_[2] ),
        .O(\LSB[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAAFFBFFFAA008000)) 
    \LSB[3]_i_1 
       (.I0(\LSB[3]_i_2_n_0 ),
        .I1(\LSB[3]_i_3_n_0 ),
        .I2(\LSB[3]_i_4_n_0 ),
        .I3(\LSB[3]_i_5_n_0 ),
        .I4(\LSB[3]_i_6_n_0 ),
        .I5(LSB[3]),
        .O(\LSB[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \LSB[3]_i_2 
       (.I0(\LSB[3]_i_7_n_0 ),
        .I1(sda_IBUF),
        .O(\LSB[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \LSB[3]_i_3 
       (.I0(\counter_reg_n_0_[3] ),
        .I1(\counter_reg_n_0_[6] ),
        .I2(\counter_reg_n_0_[4] ),
        .I3(\counter_reg_n_0_[5] ),
        .O(\LSB[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \LSB[3]_i_4 
       (.I0(\counter_reg_n_0_[8] ),
        .I1(state__0[0]),
        .I2(state__0[2]),
        .O(\LSB[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00008000)) 
    \LSB[3]_i_5 
       (.I0(\FSM_sequential_state[4]_i_3_n_0 ),
        .I1(\counter[15]_i_7_n_0 ),
        .I2(\counter_reg_n_0_[11] ),
        .I3(\counter_reg_n_0_[9] ),
        .I4(\counter_reg_n_0_[7] ),
        .O(\LSB[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h5400000000000000)) 
    \LSB[3]_i_6 
       (.I0(\FSM_sequential_state[2]_i_3_n_0 ),
        .I1(\counter_reg_n_0_[1] ),
        .I2(\counter_reg_n_0_[0] ),
        .I3(\counter_reg_n_0_[8] ),
        .I4(\counter_reg_n_0_[2] ),
        .I5(\LSB[3]_i_8_n_0 ),
        .O(\LSB[3]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \LSB[3]_i_7 
       (.I0(state__0[4]),
        .I1(state__0[5]),
        .O(\LSB[3]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \LSB[3]_i_8 
       (.I0(\counter_reg_n_0_[6] ),
        .I1(\counter_reg_n_0_[5] ),
        .I2(\counter_reg_n_0_[4] ),
        .I3(\counter_reg_n_0_[3] ),
        .O(\LSB[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hEFEFEFFF20202000)) 
    \LSB[4]_i_1 
       (.I0(\LSB[4]_i_2_n_0 ),
        .I1(\LSB[6]_i_3_n_0 ),
        .I2(state__0[5]),
        .I3(\LSB[4]_i_3_n_0 ),
        .I4(\LSB[4]_i_4_n_0 ),
        .I5(LSB[4]),
        .O(\LSB[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \LSB[4]_i_2 
       (.I0(state__0[5]),
        .I1(state__0[2]),
        .I2(sda_IBUF),
        .O(\LSB[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \LSB[4]_i_3 
       (.I0(\LSB[3]_i_4_n_0 ),
        .I1(\counter_reg_n_0_[5] ),
        .I2(\FSM_sequential_state[5]_i_18_n_0 ),
        .I3(\counter_reg_n_0_[4] ),
        .I4(\counter_reg_n_0_[2] ),
        .I5(\LSB[2]_i_4_n_0 ),
        .O(\LSB[4]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \LSB[4]_i_4 
       (.I0(\FSM_sequential_state[2]_i_6_n_0 ),
        .I1(\counter_reg_n_0_[7] ),
        .I2(\counter_reg_n_0_[9] ),
        .I3(\FSM_sequential_state[2]_i_3_n_0 ),
        .I4(\LSB[6]_i_5_n_0 ),
        .I5(\LSB[4]_i_5_n_0 ),
        .O(\LSB[4]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00000008)) 
    \LSB[4]_i_5 
       (.I0(\counter_reg_n_0_[11] ),
        .I1(state__0[1]),
        .I2(\counter_reg_n_0_[10] ),
        .I3(\counter[10]_i_4_n_0 ),
        .I4(\counter_reg_n_0_[8] ),
        .O(\LSB[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h80FFFFFF80000000)) 
    \LSB[5]_i_1 
       (.I0(\LSB[5]_i_2_n_0 ),
        .I1(state__0[5]),
        .I2(state__0[2]),
        .I3(\LSB[5]_i_3_n_0 ),
        .I4(\LSB[5]_i_4_n_0 ),
        .I5(LSB[5]),
        .O(\LSB[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \LSB[5]_i_2 
       (.I0(sda_IBUF),
        .I1(state__0[0]),
        .O(\LSB[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0200020002000000)) 
    \LSB[5]_i_3 
       (.I0(\LSB[5]_i_5_n_0 ),
        .I1(\counter_reg_n_0_[4] ),
        .I2(state__0[0]),
        .I3(\LSB[5]_i_6_n_0 ),
        .I4(\counter_reg_n_0_[3] ),
        .I5(\LSB[5]_i_7_n_0 ),
        .O(\LSB[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h01000000)) 
    \LSB[5]_i_4 
       (.I0(\counter_reg_n_0_[8] ),
        .I1(\FSM_sequential_state[3]_i_12_n_0 ),
        .I2(state__0[1]),
        .I3(\counter_reg_n_0_[9] ),
        .I4(\counter_reg_n_0_[7] ),
        .O(\LSB[5]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \LSB[5]_i_5 
       (.I0(state__0[4]),
        .I1(state__0[3]),
        .I2(state__0[5]),
        .I3(state__0[2]),
        .O(\LSB[5]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \LSB[5]_i_6 
       (.I0(\counter_reg_n_0_[5] ),
        .I1(\counter_reg_n_0_[6] ),
        .O(\LSB[5]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \LSB[5]_i_7 
       (.I0(\counter_reg_n_0_[1] ),
        .I1(\counter_reg_n_0_[0] ),
        .I2(\counter_reg_n_0_[2] ),
        .O(\LSB[5]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFFFF02000000)) 
    \LSB[6]_i_1 
       (.I0(\LSB[6]_i_2_n_0 ),
        .I1(\LSB[6]_i_3_n_0 ),
        .I2(\counter[15]_i_4_n_0 ),
        .I3(\LSB[6]_i_4_n_0 ),
        .I4(\LSB[7]_i_4_n_0 ),
        .I5(LSB[6]),
        .O(\LSB[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \LSB[6]_i_2 
       (.I0(sda_IBUF),
        .I1(state__0[0]),
        .O(\LSB[6]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \LSB[6]_i_3 
       (.I0(state__0[3]),
        .I1(state__0[4]),
        .O(\LSB[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0030000000A00000)) 
    \LSB[6]_i_4 
       (.I0(\LSB[6]_i_5_n_0 ),
        .I1(\counter_reg_n_0_[2] ),
        .I2(\counter_reg_n_0_[6] ),
        .I3(\counter_reg_n_0_[5] ),
        .I4(\counter_reg_n_0_[4] ),
        .I5(\counter_reg_n_0_[3] ),
        .O(\LSB[6]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \LSB[6]_i_5 
       (.I0(\counter_reg_n_0_[1] ),
        .I1(\counter_reg_n_0_[0] ),
        .I2(\counter_reg_n_0_[2] ),
        .O(\LSB[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h2FFFFFFF20000000)) 
    \LSB[7]_i_1 
       (.I0(\FSM_sequential_state[5]_i_9_n_0 ),
        .I1(\counter[10]_i_7_n_0 ),
        .I2(\LSB[7]_i_2_n_0 ),
        .I3(\LSB[7]_i_3_n_0 ),
        .I4(\LSB[7]_i_4_n_0 ),
        .I5(LSB[7]),
        .O(\LSB[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \LSB[7]_i_2 
       (.I0(state__0[4]),
        .I1(state__0[2]),
        .I2(state__0[5]),
        .I3(state__0[3]),
        .O(\LSB[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000F00)) 
    \LSB[7]_i_3 
       (.I0(\LSB[7]_i_5_n_0 ),
        .I1(\counter_reg_n_0_[2] ),
        .I2(\counter_reg_n_0_[4] ),
        .I3(\counter_reg_n_0_[6] ),
        .I4(\counter_reg_n_0_[5] ),
        .I5(\counter_reg_n_0_[3] ),
        .O(\LSB[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \LSB[7]_i_4 
       (.I0(\counter_reg_n_0_[7] ),
        .I1(\counter_reg_n_0_[9] ),
        .I2(state__0[1]),
        .I3(\FSM_sequential_state[3]_i_12_n_0 ),
        .I4(\counter_reg_n_0_[8] ),
        .I5(state__0[0]),
        .O(\LSB[7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \LSB[7]_i_5 
       (.I0(\counter_reg_n_0_[0] ),
        .I1(\counter_reg_n_0_[1] ),
        .O(\LSB[7]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \LSB_reg[0] 
       (.C(clk_4MHz_IBUF_BUFG),
        .CE(1'b1),
        .D(\LSB[0]_i_1_n_0 ),
        .Q(LSB[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \LSB_reg[1] 
       (.C(clk_4MHz_IBUF_BUFG),
        .CE(1'b1),
        .D(\LSB[1]_i_1_n_0 ),
        .Q(LSB[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \LSB_reg[2] 
       (.C(clk_4MHz_IBUF_BUFG),
        .CE(1'b1),
        .D(\LSB[2]_i_1_n_0 ),
        .Q(LSB[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \LSB_reg[3] 
       (.C(clk_4MHz_IBUF_BUFG),
        .CE(1'b1),
        .D(\LSB[3]_i_1_n_0 ),
        .Q(LSB[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \LSB_reg[4] 
       (.C(clk_4MHz_IBUF_BUFG),
        .CE(1'b1),
        .D(\LSB[4]_i_1_n_0 ),
        .Q(LSB[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \LSB_reg[5] 
       (.C(clk_4MHz_IBUF_BUFG),
        .CE(1'b1),
        .D(\LSB[5]_i_1_n_0 ),
        .Q(LSB[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \LSB_reg[6] 
       (.C(clk_4MHz_IBUF_BUFG),
        .CE(1'b1),
        .D(\LSB[6]_i_1_n_0 ),
        .Q(LSB[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \LSB_reg[7] 
       (.C(clk_4MHz_IBUF_BUFG),
        .CE(1'b1),
        .D(\LSB[7]_i_1_n_0 ),
        .Q(LSB[7]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h08FFFFFF08000000)) 
    \MSB[1]_i_1 
       (.I0(state__0[0]),
        .I1(\MSB[5]_i_2_n_0 ),
        .I2(\counter[10]_i_7_n_0 ),
        .I3(\MSB[1]_i_2_n_0 ),
        .I4(\LSB[7]_i_4_n_0 ),
        .I5(temp_reg1[9]),
        .O(\MSB[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000004000440040)) 
    \MSB[1]_i_2 
       (.I0(\counter_reg_n_0_[5] ),
        .I1(\MSB[4]_i_4_n_0 ),
        .I2(\LSB[6]_i_5_n_0 ),
        .I3(\counter_reg_n_0_[6] ),
        .I4(\counter_reg_n_0_[3] ),
        .I5(\counter_reg_n_0_[2] ),
        .O(\MSB[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0010FFFF00100000)) 
    \MSB[2]_i_1 
       (.I0(state__0[4]),
        .I1(state__0[2]),
        .I2(state__0[0]),
        .I3(\counter[10]_i_7_n_0 ),
        .I4(MSB),
        .I5(temp_reg1[10]),
        .O(\MSB[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000020000000000)) 
    \MSB[2]_i_2 
       (.I0(\MSB[2]_i_3_n_0 ),
        .I1(state__0[4]),
        .I2(state__0[5]),
        .I3(state__0[3]),
        .I4(\FSM_sequential_state[2]_i_3_n_0 ),
        .I5(\MSB[4]_i_3_n_0 ),
        .O(MSB));
  LUT6 #(
    .INIT(64'h00A80000FF000000)) 
    \MSB[2]_i_3 
       (.I0(\counter_reg_n_0_[2] ),
        .I1(\counter_reg_n_0_[1] ),
        .I2(\counter_reg_n_0_[0] ),
        .I3(\counter_reg_n_0_[4] ),
        .I4(\LSB[5]_i_6_n_0 ),
        .I5(\counter_reg_n_0_[3] ),
        .O(\MSB[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h04FFFFFF04000000)) 
    \MSB[3]_i_1 
       (.I0(state__0[4]),
        .I1(\MSB[3]_i_2_n_0 ),
        .I2(\counter[10]_i_7_n_0 ),
        .I3(\MSB[3]_i_3_n_0 ),
        .I4(\MSB[4]_i_3_n_0 ),
        .I5(temp_reg1[11]),
        .O(\MSB[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \MSB[3]_i_2 
       (.I0(state__0[0]),
        .I1(state__0[2]),
        .O(\MSB[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h222222F200000000)) 
    \MSB[3]_i_3 
       (.I0(\LSB[6]_i_5_n_0 ),
        .I1(\FSM_sequential_state[3]_i_11_n_0 ),
        .I2(\MSB[3]_i_4_n_0 ),
        .I3(\counter_reg_n_0_[4] ),
        .I4(\counter_reg_n_0_[2] ),
        .I5(\MSB[3]_i_5_n_0 ),
        .O(\MSB[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \MSB[3]_i_4 
       (.I0(\counter_reg_n_0_[6] ),
        .I1(\counter_reg_n_0_[5] ),
        .I2(\counter_reg_n_0_[3] ),
        .O(\MSB[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h00000010)) 
    \MSB[3]_i_5 
       (.I0(state__0[4]),
        .I1(state__0[5]),
        .I2(state__0[3]),
        .I3(state__0[2]),
        .I4(state__0[0]),
        .O(\MSB[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h04FFFFFF04000000)) 
    \MSB[4]_i_1 
       (.I0(state__0[0]),
        .I1(\MSB[5]_i_2_n_0 ),
        .I2(\counter[10]_i_7_n_0 ),
        .I3(\MSB[4]_i_2_n_0 ),
        .I4(\MSB[4]_i_3_n_0 ),
        .I5(temp_reg1[12]),
        .O(\MSB[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0202020002000200)) 
    \MSB[4]_i_2 
       (.I0(\MSB[4]_i_4_n_0 ),
        .I1(\MSB[4]_i_5_n_0 ),
        .I2(state__0[0]),
        .I3(\counter_reg_n_0_[3] ),
        .I4(\LSB[7]_i_5_n_0 ),
        .I5(\counter_reg_n_0_[2] ),
        .O(\MSB[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h00010000)) 
    \MSB[4]_i_3 
       (.I0(\counter_reg_n_0_[8] ),
        .I1(\FSM_sequential_state[3]_i_12_n_0 ),
        .I2(state__0[1]),
        .I3(\counter_reg_n_0_[7] ),
        .I4(\counter_reg_n_0_[9] ),
        .O(\MSB[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'h00000040)) 
    \MSB[4]_i_4 
       (.I0(state__0[5]),
        .I1(state__0[3]),
        .I2(state__0[2]),
        .I3(state__0[4]),
        .I4(\counter_reg_n_0_[4] ),
        .O(\MSB[4]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \MSB[4]_i_5 
       (.I0(\counter_reg_n_0_[5] ),
        .I1(\counter_reg_n_0_[6] ),
        .O(\MSB[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFF8FFFFF00800000)) 
    \MSB[5]_i_1 
       (.I0(\LSB[0]_i_2_n_0 ),
        .I1(\MSB[5]_i_2_n_0 ),
        .I2(\MSB[5]_i_3_n_0 ),
        .I3(state__0[0]),
        .I4(\LSB[2]_i_4_n_0 ),
        .I5(temp_reg1[13]),
        .O(\MSB[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \MSB[5]_i_2 
       (.I0(state__0[2]),
        .I1(state__0[4]),
        .O(\MSB[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4444004000400040)) 
    \MSB[5]_i_3 
       (.I0(\counter_reg_n_0_[8] ),
        .I1(\LSB[2]_i_2_n_0 ),
        .I2(\MSB[5]_i_4_n_0 ),
        .I3(\counter_reg_n_0_[2] ),
        .I4(\FSM_sequential_state[5]_i_28_n_0 ),
        .I5(\LSB[6]_i_5_n_0 ),
        .O(\MSB[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \MSB[5]_i_4 
       (.I0(\counter_reg_n_0_[6] ),
        .I1(\counter_reg_n_0_[5] ),
        .I2(\counter_reg_n_0_[4] ),
        .I3(\counter_reg_n_0_[3] ),
        .O(\MSB[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h88888FFF88888000)) 
    \MSB[6]_i_1 
       (.I0(\LSB[1]_i_2_n_0 ),
        .I1(\MSB[6]_i_2_n_0 ),
        .I2(\MSB[7]_i_4_n_0 ),
        .I3(\MSB[6]_i_3_n_0 ),
        .I4(\MSB[6]_i_4_n_0 ),
        .I5(temp_reg1[14]),
        .O(\MSB[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \MSB[6]_i_2 
       (.I0(state__0[1]),
        .I1(state__0[4]),
        .O(\MSB[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0204000400000000)) 
    \MSB[6]_i_3 
       (.I0(\counter_reg_n_0_[4] ),
        .I1(\counter_reg_n_0_[5] ),
        .I2(\counter_reg_n_0_[6] ),
        .I3(\counter_reg_n_0_[3] ),
        .I4(\LSB[5]_i_7_n_0 ),
        .I5(\MSB[3]_i_2_n_0 ),
        .O(\MSB[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hF080000000000000)) 
    \MSB[6]_i_4 
       (.I0(\LSB[7]_i_5_n_0 ),
        .I1(\counter_reg_n_0_[2] ),
        .I2(\counter_reg_n_0_[4] ),
        .I3(\counter_reg_n_0_[3] ),
        .I4(\MSB[6]_i_5_n_0 ),
        .I5(\LSB[4]_i_5_n_0 ),
        .O(\MSB[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    \MSB[6]_i_5 
       (.I0(\counter_reg_n_0_[7] ),
        .I1(\counter_reg_n_0_[9] ),
        .I2(\counter_reg_n_0_[5] ),
        .I3(\counter_reg_n_0_[6] ),
        .I4(\MSB[3]_i_2_n_0 ),
        .I5(\FSM_sequential_state[5]_i_54_n_0 ),
        .O(\MSB[6]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hBFFFFFFF80000000)) 
    \MSB[7]_i_1 
       (.I0(\MSB[7]_i_2_n_0 ),
        .I1(state__0[0]),
        .I2(state__0[2]),
        .I3(\MSB[7]_i_3_n_0 ),
        .I4(\MSB[7]_i_4_n_0 ),
        .I5(temp_reg1[15]),
        .O(\MSB[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \MSB[7]_i_2 
       (.I0(state__0[2]),
        .I1(state__0[4]),
        .I2(sda_IBUF),
        .O(\MSB[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000300A0)) 
    \MSB[7]_i_3 
       (.I0(\LSB[6]_i_5_n_0 ),
        .I1(\counter_reg_n_0_[2] ),
        .I2(\counter_reg_n_0_[3] ),
        .I3(\counter_reg_n_0_[6] ),
        .I4(\counter_reg_n_0_[4] ),
        .I5(\counter_reg_n_0_[5] ),
        .O(\MSB[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000040000000)) 
    \MSB[7]_i_4 
       (.I0(\counter_reg_n_0_[7] ),
        .I1(\counter_reg_n_0_[9] ),
        .I2(\counter_reg_n_0_[11] ),
        .I3(\counter[15]_i_7_n_0 ),
        .I4(\FSM_sequential_state[4]_i_3_n_0 ),
        .I5(\counter_reg_n_0_[8] ),
        .O(\MSB[7]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \MSB_reg[1] 
       (.C(clk_4MHz_IBUF_BUFG),
        .CE(1'b1),
        .D(\MSB[1]_i_1_n_0 ),
        .Q(temp_reg1[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \MSB_reg[2] 
       (.C(clk_4MHz_IBUF_BUFG),
        .CE(1'b1),
        .D(\MSB[2]_i_1_n_0 ),
        .Q(temp_reg1[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \MSB_reg[3] 
       (.C(clk_4MHz_IBUF_BUFG),
        .CE(1'b1),
        .D(\MSB[3]_i_1_n_0 ),
        .Q(temp_reg1[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \MSB_reg[4] 
       (.C(clk_4MHz_IBUF_BUFG),
        .CE(1'b1),
        .D(\MSB[4]_i_1_n_0 ),
        .Q(temp_reg1[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \MSB_reg[5] 
       (.C(clk_4MHz_IBUF_BUFG),
        .CE(1'b1),
        .D(\MSB[5]_i_1_n_0 ),
        .Q(temp_reg1[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \MSB_reg[6] 
       (.C(clk_4MHz_IBUF_BUFG),
        .CE(1'b1),
        .D(\MSB[6]_i_1_n_0 ),
        .Q(temp_reg1[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \MSB_reg[7] 
       (.C(clk_4MHz_IBUF_BUFG),
        .CE(1'b1),
        .D(\MSB[7]_i_1_n_0 ),
        .Q(temp_reg1[15]),
        .R(1'b0));
  BUFG clk_4MHz_IBUF_BUFG_inst
       (.I(clk_4MHz_IBUF),
        .O(clk_4MHz_IBUF_BUFG));
  IBUF clk_4MHz_IBUF_inst
       (.I(clk_4MHz),
        .O(clk_4MHz_IBUF));
  LUT1 #(
    .INIT(2'h1)) 
    \clk_div[0]_i_1 
       (.I0(clk_div[0]),
        .O(p_1_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \clk_div[1]_i_1 
       (.I0(clk_div[0]),
        .I1(clk_div[1]),
        .O(p_1_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \clk_div[2]_i_1 
       (.I0(clk_div[0]),
        .I1(clk_div[1]),
        .I2(clk_div[2]),
        .O(p_1_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \clk_div[3]_i_1 
       (.I0(clk_div[1]),
        .I1(clk_div[0]),
        .I2(clk_div[2]),
        .I3(clk_div[3]),
        .O(p_1_in__0[3]));
  LUT5 #(
    .INIT(32'h01000000)) 
    \clk_div[4]_i_1 
       (.I0(clk_div[4]),
        .I1(clk_div[2]),
        .I2(clk_div[1]),
        .I3(clk_div[0]),
        .I4(clk_div[3]),
        .O(\clk_div[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \clk_div[4]_i_2 
       (.I0(clk_div[2]),
        .I1(clk_div[0]),
        .I2(clk_div[1]),
        .I3(clk_div[3]),
        .I4(clk_div[4]),
        .O(p_1_in__0[4]));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_reg[0] 
       (.C(clk_4MHz_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in__0[0]),
        .Q(clk_div[0]),
        .R(\clk_div[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_reg[1] 
       (.C(clk_4MHz_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in__0[1]),
        .Q(clk_div[1]),
        .R(\clk_div[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_reg[2] 
       (.C(clk_4MHz_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in__0[2]),
        .Q(clk_div[2]),
        .R(\clk_div[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_reg[3] 
       (.C(clk_4MHz_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in__0[3]),
        .Q(clk_div[3]),
        .R(\clk_div[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \clk_div_reg[4] 
       (.C(clk_4MHz_IBUF_BUFG),
        .CE(1'b1),
        .D(p_1_in__0[4]),
        .Q(clk_div[4]),
        .R(\clk_div[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1 
       (.I0(\counter_reg_n_0_[0] ),
        .O(\counter[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAA8A8A888888888)) 
    \counter[10]_i_1 
       (.I0(\counter[10]_i_3_n_0 ),
        .I1(\counter[10]_i_4_n_0 ),
        .I2(\counter_reg_n_0_[10] ),
        .I3(\counter[10]_i_5_n_0 ),
        .I4(\counter[10]_i_6_n_0 ),
        .I5(\counter_reg_n_0_[11] ),
        .O(\counter[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFDF00000000)) 
    \counter[10]_i_2 
       (.I0(state__0[4]),
        .I1(state__0[5]),
        .I2(state__0[3]),
        .I3(\FSM_sequential_state[2]_i_3_n_0 ),
        .I4(\counter[10]_i_7_n_0 ),
        .I5(in84[10]),
        .O(\counter[10]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \counter[10]_i_3 
       (.I0(state__0[1]),
        .I1(state__0[5]),
        .I2(state__0[2]),
        .O(\counter[10]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \counter[10]_i_4 
       (.I0(\counter_reg_n_0_[13] ),
        .I1(\counter_reg_n_0_[12] ),
        .I2(\counter_reg_n_0_[15] ),
        .I3(\counter_reg_n_0_[14] ),
        .O(\counter[10]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \counter[10]_i_5 
       (.I0(\counter_reg_n_0_[9] ),
        .I1(\counter_reg_n_0_[8] ),
        .I2(\counter_reg_n_0_[7] ),
        .O(\counter[10]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'hFF80)) 
    \counter[10]_i_6 
       (.I0(\counter_reg_n_0_[3] ),
        .I1(\counter_reg_n_0_[4] ),
        .I2(\counter_reg_n_0_[5] ),
        .I3(\counter_reg_n_0_[6] ),
        .O(\counter[10]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'hD)) 
    \counter[10]_i_7 
       (.I0(sda_IBUF),
        .I1(state__0[1]),
        .O(\counter[10]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000101510151015)) 
    \counter[15]_i_1 
       (.I0(\counter[15]_i_3_n_0 ),
        .I1(\counter[15]_i_4_n_0 ),
        .I2(state__0[1]),
        .I3(\counter[15]_i_5_n_0 ),
        .I4(\counter[15]_i_6_n_0 ),
        .I5(\counter[15]_i_7_n_0 ),
        .O(\counter[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \counter[15]_i_10 
       (.I0(\counter_reg_n_0_[11] ),
        .I1(state__0[1]),
        .I2(\counter_reg_n_0_[14] ),
        .I3(\counter_reg_n_0_[15] ),
        .I4(\counter_reg_n_0_[12] ),
        .I5(\counter_reg_n_0_[13] ),
        .O(\counter[15]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFAFEFAFFFAFAFAFA)) 
    \counter[15]_i_3 
       (.I0(\counter[15]_i_8_n_0 ),
        .I1(\counter[15]_i_9_n_0 ),
        .I2(\counter[15]_i_10_n_0 ),
        .I3(\counter_reg_n_0_[6] ),
        .I4(\counter_reg_n_0_[5] ),
        .I5(\counter[15]_i_7_n_0 ),
        .O(\counter[15]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \counter[15]_i_4 
       (.I0(state__0[2]),
        .I1(state__0[5]),
        .O(\counter[15]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'hFFFFDFFF)) 
    \counter[15]_i_5 
       (.I0(state__0[4]),
        .I1(state__0[5]),
        .I2(state__0[3]),
        .I3(state__0[0]),
        .I4(state__0[2]),
        .O(\counter[15]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    \counter[15]_i_6 
       (.I0(\counter_reg_n_0_[9] ),
        .I1(\counter_reg_n_0_[7] ),
        .I2(\counter_reg_n_0_[8] ),
        .O(\counter[15]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \counter[15]_i_7 
       (.I0(state__0[1]),
        .I1(\counter_reg_n_0_[10] ),
        .I2(\counter_reg_n_0_[13] ),
        .I3(\counter_reg_n_0_[12] ),
        .I4(\counter_reg_n_0_[15] ),
        .I5(\counter_reg_n_0_[14] ),
        .O(\counter[15]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \counter[15]_i_8 
       (.I0(sda_IBUF),
        .I1(state__0[1]),
        .O(\counter[15]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \counter[15]_i_9 
       (.I0(\counter_reg_n_0_[3] ),
        .I1(\counter_reg_n_0_[4] ),
        .O(\counter[15]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFDF00000000)) 
    \counter[2]_i_1 
       (.I0(state__0[4]),
        .I1(state__0[5]),
        .I2(state__0[3]),
        .I3(\FSM_sequential_state[2]_i_3_n_0 ),
        .I4(\counter[10]_i_7_n_0 ),
        .I5(in84[2]),
        .O(\counter[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFDF00000000)) 
    \counter[6]_i_1 
       (.I0(state__0[4]),
        .I1(state__0[5]),
        .I2(state__0[3]),
        .I3(\FSM_sequential_state[2]_i_3_n_0 ),
        .I4(\counter[10]_i_7_n_0 ),
        .I5(in84[6]),
        .O(\counter[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFDF00000000)) 
    \counter[7]_i_1 
       (.I0(state__0[4]),
        .I1(state__0[5]),
        .I2(state__0[3]),
        .I3(\FSM_sequential_state[2]_i_3_n_0 ),
        .I4(\counter[10]_i_7_n_0 ),
        .I5(in84[7]),
        .O(\counter[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFDF00000000)) 
    \counter[8]_i_1 
       (.I0(state__0[4]),
        .I1(state__0[5]),
        .I2(state__0[3]),
        .I3(\FSM_sequential_state[2]_i_3_n_0 ),
        .I4(\counter[10]_i_7_n_0 ),
        .I5(in84[8]),
        .O(\counter[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFDF00000000)) 
    \counter[9]_i_1 
       (.I0(state__0[4]),
        .I1(state__0[5]),
        .I2(state__0[3]),
        .I3(\FSM_sequential_state[2]_i_3_n_0 ),
        .I4(\counter[10]_i_7_n_0 ),
        .I5(in84[9]),
        .O(\counter[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(clk_4MHz_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter[0]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[0] ),
        .R(\counter[15]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(clk_4MHz_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter[10]_i_2_n_0 ),
        .Q(\counter_reg_n_0_[10] ),
        .S(\counter[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(clk_4MHz_IBUF_BUFG),
        .CE(1'b1),
        .D(in84[11]),
        .Q(\counter_reg_n_0_[11] ),
        .R(\counter[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(clk_4MHz_IBUF_BUFG),
        .CE(1'b1),
        .D(in84[12]),
        .Q(\counter_reg_n_0_[12] ),
        .R(\counter[15]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter_reg[12]_i_1 
       (.CI(\counter_reg[5]_i_1_n_0 ),
        .CO({\counter_reg[12]_i_1_n_0 ,\counter_reg[12]_i_1_n_1 ,\counter_reg[12]_i_1_n_2 ,\counter_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in84[12:9]),
        .S({\counter_reg_n_0_[12] ,\counter_reg_n_0_[11] ,\counter_reg_n_0_[10] ,\counter_reg_n_0_[9] }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(clk_4MHz_IBUF_BUFG),
        .CE(1'b1),
        .D(in84[13]),
        .Q(\counter_reg_n_0_[13] ),
        .R(\counter[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(clk_4MHz_IBUF_BUFG),
        .CE(1'b1),
        .D(in84[14]),
        .Q(\counter_reg_n_0_[14] ),
        .R(\counter[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(clk_4MHz_IBUF_BUFG),
        .CE(1'b1),
        .D(in84[15]),
        .Q(\counter_reg_n_0_[15] ),
        .R(\counter[15]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter_reg[15]_i_2 
       (.CI(\counter_reg[12]_i_1_n_0 ),
        .CO({\NLW_counter_reg[15]_i_2_CO_UNCONNECTED [3:2],\counter_reg[15]_i_2_n_2 ,\counter_reg[15]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_counter_reg[15]_i_2_O_UNCONNECTED [3],in84[15:13]}),
        .S({1'b0,\counter_reg_n_0_[15] ,\counter_reg_n_0_[14] ,\counter_reg_n_0_[13] }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(clk_4MHz_IBUF_BUFG),
        .CE(1'b1),
        .D(in84[1]),
        .Q(\counter_reg_n_0_[1] ),
        .R(\counter[15]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(clk_4MHz_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter[2]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[2] ),
        .S(\counter[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(clk_4MHz_IBUF_BUFG),
        .CE(1'b1),
        .D(in84[3]),
        .Q(\counter_reg_n_0_[3] ),
        .R(\counter[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(clk_4MHz_IBUF_BUFG),
        .CE(1'b1),
        .D(in84[4]),
        .Q(\counter_reg_n_0_[4] ),
        .R(\counter[15]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\counter_reg[4]_i_1_n_0 ,\counter_reg[4]_i_1_n_1 ,\counter_reg[4]_i_1_n_2 ,\counter_reg[4]_i_1_n_3 }),
        .CYINIT(\counter_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in84[4:1]),
        .S({\counter_reg_n_0_[4] ,\counter_reg_n_0_[3] ,\counter_reg_n_0_[2] ,\counter_reg_n_0_[1] }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(clk_4MHz_IBUF_BUFG),
        .CE(1'b1),
        .D(in84[5]),
        .Q(\counter_reg_n_0_[5] ),
        .R(\counter[15]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \counter_reg[5]_i_1 
       (.CI(\counter_reg[4]_i_1_n_0 ),
        .CO({\counter_reg[5]_i_1_n_0 ,\counter_reg[5]_i_1_n_1 ,\counter_reg[5]_i_1_n_2 ,\counter_reg[5]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in84[8:5]),
        .S({\counter_reg_n_0_[8] ,\counter_reg_n_0_[7] ,\counter_reg_n_0_[6] ,\counter_reg_n_0_[5] }));
  FDSE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(clk_4MHz_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter[6]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[6] ),
        .S(\counter[10]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(clk_4MHz_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter[7]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[7] ),
        .S(\counter[10]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(clk_4MHz_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter[8]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[8] ),
        .S(\counter[10]_i_1_n_0 ));
  FDSE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(clk_4MHz_IBUF_BUFG),
        .CE(1'b1),
        .D(\counter[9]_i_1_n_0 ),
        .Q(\counter_reg_n_0_[9] ),
        .S(\counter[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEEEEFEEEEEEE0)) 
    out_i_1
       (.I0(out_i_2_n_0),
        .I1(out_i_3_n_0),
        .I2(out_i_4_n_0),
        .I3(out_i_5_n_0),
        .I4(out_i_6_n_0),
        .I5(sda_OBUF),
        .O(out_i_1_n_0));
  LUT6 #(
    .INIT(64'h80FF808080808080)) 
    out_i_10
       (.I0(out_i_16_n_0),
        .I1(out_i_13_n_0),
        .I2(state__0[1]),
        .I3(\FSM_sequential_state[5]_i_40_n_0 ),
        .I4(\MSB[3]_i_2_n_0 ),
        .I5(register_address_IBUF[0]),
        .O(out_i_10_n_0));
  LUT6 #(
    .INIT(64'h0808080008000800)) 
    out_i_11
       (.I0(out_i_17_n_0),
        .I1(\MSB[5]_i_2_n_0 ),
        .I2(state__0[3]),
        .I3(\counter[10]_i_4_n_0 ),
        .I4(out_i_18_n_0),
        .I5(\counter_reg_n_0_[11] ),
        .O(out_i_11_n_0));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h7)) 
    out_i_12
       (.I0(state__0[0]),
        .I1(state__0[2]),
        .O(out_i_12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h1)) 
    out_i_13
       (.I0(state__0[3]),
        .I1(state__0[5]),
        .O(out_i_13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h00400000)) 
    out_i_14
       (.I0(\FSM_sequential_state[3]_i_12_n_0 ),
        .I1(out_i_19_n_0),
        .I2(state__0[4]),
        .I3(state__0[5]),
        .I4(state__0[3]),
        .O(out_i_14_n_0));
  LUT6 #(
    .INIT(64'hAAAAAABAAAAAAAAA)) 
    out_i_15
       (.I0(out_i_20_n_0),
        .I1(\FSM_sequential_state[3]_i_12_n_0 ),
        .I2(out_i_21_n_0),
        .I3(\FSM_sequential_state[5]_i_37_n_0 ),
        .I4(\counter_reg_n_0_[4] ),
        .I5(\FSM_sequential_state[5]_i_70_n_0 ),
        .O(out_i_15_n_0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'hFF008000)) 
    out_i_16
       (.I0(state__0[0]),
        .I1(register_address_IBUF[2]),
        .I2(register_address_IBUF[6]),
        .I3(state__0[2]),
        .I4(register_address_IBUF[1]),
        .O(out_i_16_n_0));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h2)) 
    out_i_17
       (.I0(state__0[1]),
        .I1(state__0[0]),
        .O(out_i_17_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFF0808080)) 
    out_i_18
       (.I0(out_i_22_n_0),
        .I1(\LSB[5]_i_6_n_0 ),
        .I2(\counter_reg_n_0_[9] ),
        .I3(\counter_reg_n_0_[7] ),
        .I4(\counter_reg_n_0_[8] ),
        .I5(\counter_reg_n_0_[10] ),
        .O(out_i_18_n_0));
  LUT6 #(
    .INIT(64'h0000010000000000)) 
    out_i_19
       (.I0(\LSB[6]_i_5_n_0 ),
        .I1(\counter_reg_n_0_[8] ),
        .I2(state__0[0]),
        .I3(\counter_reg_n_0_[7] ),
        .I4(\counter_reg_n_0_[9] ),
        .I5(\LSB[3]_i_8_n_0 ),
        .O(out_i_19_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFEEEEEEFE)) 
    out_i_2
       (.I0(out_i_7_n_0),
        .I1(out_i_8_n_0),
        .I2(register_address_IBUF[6]),
        .I3(\FSM_sequential_state[2]_i_3_n_0 ),
        .I4(\FSM_sequential_state[5]_i_40_n_0 ),
        .I5(out_i_9_n_0),
        .O(out_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000010000000000)) 
    out_i_20
       (.I0(\counter[10]_i_4_n_0 ),
        .I1(\counter[15]_i_6_n_0 ),
        .I2(\counter_reg_n_0_[11] ),
        .I3(\counter_reg_n_0_[10] ),
        .I4(\counter_reg_n_0_[2] ),
        .I5(out_i_23_n_0),
        .O(out_i_20_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h1)) 
    out_i_21
       (.I0(\counter_reg_n_0_[7] ),
        .I1(\counter_reg_n_0_[9] ),
        .O(out_i_21_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hF8000000)) 
    out_i_22
       (.I0(\counter_reg_n_0_[2] ),
        .I1(\counter_reg_n_0_[1] ),
        .I2(\counter_reg_n_0_[3] ),
        .I3(\counter_reg_n_0_[4] ),
        .I4(\counter_reg_n_0_[8] ),
        .O(out_i_22_n_0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    out_i_23
       (.I0(\counter_reg_n_0_[4] ),
        .I1(\counter_reg_n_0_[3] ),
        .I2(\counter_reg_n_0_[6] ),
        .I3(\counter_reg_n_0_[5] ),
        .O(out_i_23_n_0));
  LUT6 #(
    .INIT(64'hEEEEEEEEEEEEFEEE)) 
    out_i_3
       (.I0(out_i_10_n_0),
        .I1(out_i_11_n_0),
        .I2(register_address_IBUF[2]),
        .I3(\FSM_sequential_state[4]_i_3_n_0 ),
        .I4(state__0[1]),
        .I5(out_i_12_n_0),
        .O(out_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF3210BB30)) 
    out_i_4
       (.I0(state__0[2]),
        .I1(state__0[1]),
        .I2(out_i_13_n_0),
        .I3(\LSB[3]_i_7_n_0 ),
        .I4(state__0[0]),
        .I5(out_i_14_n_0),
        .O(out_i_4_n_0));
  LUT6 #(
    .INIT(64'h00000000AAAAEAAA)) 
    out_i_5
       (.I0(\FSM_sequential_state[4]_i_5_n_0 ),
        .I1(out_i_15_n_0),
        .I2(\MSB[3]_i_2_n_0 ),
        .I3(\counter_reg_n_0_[1] ),
        .I4(\counter_reg_n_0_[0] ),
        .I5(\LSB[6]_i_3_n_0 ),
        .O(out_i_5_n_0));
  LUT6 #(
    .INIT(64'h0C02003000000000)) 
    out_i_6
       (.I0(state__0[2]),
        .I1(state__0[3]),
        .I2(state__0[5]),
        .I3(state__0[4]),
        .I4(state__0[0]),
        .I5(state__0[1]),
        .O(out_i_6_n_0));
  LUT6 #(
    .INIT(64'h00000C0000008888)) 
    out_i_7
       (.I0(register_address_IBUF[4]),
        .I1(\FSM_sequential_state[4]_i_3_n_0 ),
        .I2(state__0[1]),
        .I3(register_address_IBUF[3]),
        .I4(state__0[0]),
        .I5(state__0[2]),
        .O(out_i_7_n_0));
  LUT6 #(
    .INIT(64'hAA00AA00EAC0AAC0)) 
    out_i_8
       (.I0(\LSB[7]_i_2_n_0 ),
        .I1(\LSB[3]_i_7_n_0 ),
        .I2(register_address_IBUF[5]),
        .I3(state__0[1]),
        .I4(register_address_IBUF[6]),
        .I5(\FSM_sequential_state[2]_i_3_n_0 ),
        .O(out_i_8_n_0));
  LUT6 #(
    .INIT(64'h0010003000100010)) 
    out_i_9
       (.I0(state__0[2]),
        .I1(state__0[5]),
        .I2(state__0[3]),
        .I3(state__0[1]),
        .I4(state__0[0]),
        .I5(register_address_IBUF[7]),
        .O(out_i_9_n_0));
  FDRE #(
    .INIT(1'b1)) 
    out_reg
       (.C(clk_4MHz_IBUF_BUFG),
        .CE(1'b1),
        .D(out_i_1_n_0),
        .Q(sda_OBUF),
        .R(1'b0));
  IBUF \register_address_IBUF[0]_inst 
       (.I(register_address[0]),
        .O(register_address_IBUF[0]));
  IBUF \register_address_IBUF[1]_inst 
       (.I(register_address[1]),
        .O(register_address_IBUF[1]));
  IBUF \register_address_IBUF[2]_inst 
       (.I(register_address[2]),
        .O(register_address_IBUF[2]));
  IBUF \register_address_IBUF[3]_inst 
       (.I(register_address[3]),
        .O(register_address_IBUF[3]));
  IBUF \register_address_IBUF[4]_inst 
       (.I(register_address[4]),
        .O(register_address_IBUF[4]));
  IBUF \register_address_IBUF[5]_inst 
       (.I(register_address[5]),
        .O(register_address_IBUF[5]));
  IBUF \register_address_IBUF[6]_inst 
       (.I(register_address[6]),
        .O(register_address_IBUF[6]));
  IBUF \register_address_IBUF[7]_inst 
       (.I(register_address[7]),
        .O(register_address_IBUF[7]));
  OBUF scl_OBUF_inst
       (.I(scl_OBUF),
        .O(scl));
  LUT6 #(
    .INIT(64'hFFFFFFF700000008)) 
    scl_reg_i_1
       (.I0(clk_div[3]),
        .I1(clk_div[0]),
        .I2(clk_div[1]),
        .I3(clk_div[2]),
        .I4(clk_div[4]),
        .I5(scl_OBUF),
        .O(scl_reg_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    scl_reg_reg
       (.C(clk_4MHz_IBUF_BUFG),
        .CE(1'b1),
        .D(scl_reg_i_1_n_0),
        .Q(scl_OBUF),
        .R(1'b0));
  IOBUF sda_IOBUF_inst
       (.I(sda_OBUF),
        .IO(sda),
        .O(sda_IBUF),
        .T(sda_TRI));
  LUT6 #(
    .INIT(64'h00550455401E5080)) 
    sda_IOBUF_inst_i_1
       (.I0(state__0[5]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(state__0[4]),
        .I4(state__0[2]),
        .I5(state__0[3]),
        .O(sda_TRI));
  OBUF status_OBUF_inst
       (.I(status_OBUF),
        .O(status));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    status_reg_i_1
       (.I0(state__0[2]),
        .I1(state__0[0]),
        .I2(state__0[1]),
        .I3(state__0[4]),
        .I4(state__0[3]),
        .I5(state__0[5]),
        .O(status_reg0));
  LUT6 #(
    .INIT(64'hFFFFAA8000000000)) 
    status_reg_i_2
       (.I0(\counter_reg_n_0_[11] ),
        .I1(\counter[10]_i_6_n_0 ),
        .I2(\counter[10]_i_5_n_0 ),
        .I3(\counter_reg_n_0_[10] ),
        .I4(\counter[10]_i_4_n_0 ),
        .I5(temp_reg),
        .O(status_reg));
  LUT5 #(
    .INIT(32'hFFFFAA80)) 
    status_reg_i_3
       (.I0(\counter_reg_n_0_[11] ),
        .I1(\counter[10]_i_6_n_0 ),
        .I2(\counter[10]_i_5_n_0 ),
        .I3(\counter_reg_n_0_[10] ),
        .I4(\counter[10]_i_4_n_0 ),
        .O(status_reg_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    status_reg_reg
       (.C(clk_4MHz_IBUF_BUFG),
        .CE(status_reg),
        .D(status_reg_i_3_n_0),
        .Q(status_OBUF),
        .R(status_reg0));
  OBUF \temp_OBUF[0]_inst 
       (.I(temp_OBUF[0]),
        .O(temp[0]));
  OBUF \temp_OBUF[10]_inst 
       (.I(temp_OBUF[10]),
        .O(temp[10]));
  OBUF \temp_OBUF[11]_inst 
       (.I(temp_OBUF[11]),
        .O(temp[11]));
  OBUF \temp_OBUF[12]_inst 
       (.I(temp_OBUF[12]),
        .O(temp[12]));
  OBUF \temp_OBUF[13]_inst 
       (.I(temp_OBUF[13]),
        .O(temp[13]));
  OBUF \temp_OBUF[14]_inst 
       (.I(temp_OBUF[14]),
        .O(temp[14]));
  OBUF \temp_OBUF[15]_inst 
       (.I(temp_OBUF[15]),
        .O(temp[15]));
  OBUF \temp_OBUF[1]_inst 
       (.I(temp_OBUF[1]),
        .O(temp[1]));
  OBUF \temp_OBUF[2]_inst 
       (.I(temp_OBUF[2]),
        .O(temp[2]));
  OBUF \temp_OBUF[3]_inst 
       (.I(temp_OBUF[3]),
        .O(temp[3]));
  OBUF \temp_OBUF[4]_inst 
       (.I(temp_OBUF[4]),
        .O(temp[4]));
  OBUF \temp_OBUF[5]_inst 
       (.I(temp_OBUF[5]),
        .O(temp[5]));
  OBUF \temp_OBUF[6]_inst 
       (.I(temp_OBUF[6]),
        .O(temp[6]));
  OBUF \temp_OBUF[7]_inst 
       (.I(temp_OBUF[7]),
        .O(temp[7]));
  OBUF \temp_OBUF[8]_inst 
       (.I(1'b0),
        .O(temp[8]));
  OBUF \temp_OBUF[9]_inst 
       (.I(temp_OBUF[9]),
        .O(temp[9]));
  LUT6 #(
    .INIT(64'h0000000800000000)) 
    \temp_reg[15]_i_1 
       (.I0(state__0[2]),
        .I1(state__0[5]),
        .I2(state__0[3]),
        .I3(state__0[4]),
        .I4(state__0[0]),
        .I5(state__0[1]),
        .O(temp_reg));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[0] 
       (.C(clk_4MHz_IBUF_BUFG),
        .CE(temp_reg),
        .D(LSB[0]),
        .Q(temp_OBUF[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[10] 
       (.C(clk_4MHz_IBUF_BUFG),
        .CE(temp_reg),
        .D(temp_reg1[10]),
        .Q(temp_OBUF[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[11] 
       (.C(clk_4MHz_IBUF_BUFG),
        .CE(temp_reg),
        .D(temp_reg1[11]),
        .Q(temp_OBUF[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[12] 
       (.C(clk_4MHz_IBUF_BUFG),
        .CE(temp_reg),
        .D(temp_reg1[12]),
        .Q(temp_OBUF[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[13] 
       (.C(clk_4MHz_IBUF_BUFG),
        .CE(temp_reg),
        .D(temp_reg1[13]),
        .Q(temp_OBUF[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[14] 
       (.C(clk_4MHz_IBUF_BUFG),
        .CE(temp_reg),
        .D(temp_reg1[14]),
        .Q(temp_OBUF[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[15] 
       (.C(clk_4MHz_IBUF_BUFG),
        .CE(temp_reg),
        .D(temp_reg1[15]),
        .Q(temp_OBUF[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[1] 
       (.C(clk_4MHz_IBUF_BUFG),
        .CE(temp_reg),
        .D(LSB[1]),
        .Q(temp_OBUF[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[2] 
       (.C(clk_4MHz_IBUF_BUFG),
        .CE(temp_reg),
        .D(LSB[2]),
        .Q(temp_OBUF[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[3] 
       (.C(clk_4MHz_IBUF_BUFG),
        .CE(temp_reg),
        .D(LSB[3]),
        .Q(temp_OBUF[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[4] 
       (.C(clk_4MHz_IBUF_BUFG),
        .CE(temp_reg),
        .D(LSB[4]),
        .Q(temp_OBUF[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[5] 
       (.C(clk_4MHz_IBUF_BUFG),
        .CE(temp_reg),
        .D(LSB[5]),
        .Q(temp_OBUF[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[6] 
       (.C(clk_4MHz_IBUF_BUFG),
        .CE(temp_reg),
        .D(LSB[6]),
        .Q(temp_OBUF[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[7] 
       (.C(clk_4MHz_IBUF_BUFG),
        .CE(temp_reg),
        .D(LSB[7]),
        .Q(temp_OBUF[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \temp_reg_reg[9] 
       (.C(clk_4MHz_IBUF_BUFG),
        .CE(temp_reg),
        .D(temp_reg1[9]),
        .Q(temp_OBUF[9]),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
