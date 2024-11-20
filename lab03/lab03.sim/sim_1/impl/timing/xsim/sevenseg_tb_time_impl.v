// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.1.2 (win64) Build 5164865 Thu Sep  5 14:37:11 MDT 2024
// Date        : Fri Oct  4 12:06:52 2024
// Host        : DESKTOP-P2P8PNM running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/gahym/EE4301_Labs/lab03/lab03.sim/sim_1/impl/timing/xsim/sevenseg_tb_time_impl.v
// Design      : lab2_top
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module Casino
   (start,
    between_reg_0,
    status,
    start_reg_0,
    Q,
    between_reg_1,
    \status_reg[0]_0 ,
    \status_reg[0]_1 ,
    between_reg_2,
    \status_reg[0]_2 ,
    roll_IBUF,
    \status_reg[0]_3 ,
    rst_IBUF,
    \status_reg[0]_4 ,
    \target_reg[4]_0 ,
    D,
    \status_reg[0]_5 );
  output start;
  output between_reg_0;
  output status;
  output start_reg_0;
  output [4:0]Q;
  output between_reg_1;
  output [0:0]\status_reg[0]_0 ;
  input \status_reg[0]_1 ;
  input between_reg_2;
  input \status_reg[0]_2 ;
  input roll_IBUF;
  input \status_reg[0]_3 ;
  input rst_IBUF;
  input \status_reg[0]_4 ;
  input \target_reg[4]_0 ;
  input [4:0]D;
  input \status_reg[0]_5 ;

  wire [4:0]D;
  wire [4:0]Q;
  wire between1_out;
  wire between_reg_0;
  wire between_reg_1;
  wire between_reg_2;
  wire roll_IBUF;
  wire rst_IBUF;
  wire start;
  wire start_i_1_n_0;
  wire start_reg_0;
  wire status;
  wire \status[0]_i_1_n_0 ;
  wire \status[0]_i_2_n_0 ;
  wire \status[0]_i_3_n_0 ;
  wire \status[0]_i_4_n_0 ;
  wire \status[0]_i_5_n_0 ;
  wire [0:0]\status_reg[0]_0 ;
  wire \status_reg[0]_1 ;
  wire \status_reg[0]_2 ;
  wire \status_reg[0]_3 ;
  wire \status_reg[0]_4 ;
  wire \status_reg[0]_5 ;
  wire \target_reg[4]_0 ;

  LUT2 #(
    .INIT(4'h7)) 
    between_i_7
       (.I0(between_reg_0),
        .I1(roll_IBUF),
        .O(between_reg_1));
  LUT3 #(
    .INIT(8'hEA)) 
    between_i_8
       (.I0(rst_IBUF),
        .I1(roll_IBUF),
        .I2(start),
        .O(start_reg_0));
  FDRE #(
    .INIT(1'b0)) 
    between_reg
       (.C(\status_reg[0]_1 ),
        .CE(1'b1),
        .D(between_reg_2),
        .Q(between_reg_0),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \rightcathode[2]_i_1 
       (.I0(status),
        .O(\status_reg[0]_0 ));
  LUT3 #(
    .INIT(8'h3A)) 
    start_i_1
       (.I0(rst_IBUF),
        .I1(roll_IBUF),
        .I2(start),
        .O(start_i_1_n_0));
  FDRE #(
    .INIT(1'b1)) 
    start_reg
       (.C(\status_reg[0]_1 ),
        .CE(1'b1),
        .D(start_i_1_n_0),
        .Q(start),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEFE02F2)) 
    \status[0]_i_1 
       (.I0(status),
        .I1(\status[0]_i_2_n_0 ),
        .I2(\status[0]_i_3_n_0 ),
        .I3(\status[0]_i_4_n_0 ),
        .I4(\status[0]_i_5_n_0 ),
        .I5(\status_reg[0]_2 ),
        .O(\status[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFECCEECC)) 
    \status[0]_i_2 
       (.I0(start),
        .I1(rst_IBUF),
        .I2(between_reg_0),
        .I3(roll_IBUF),
        .I4(\status_reg[0]_4 ),
        .O(\status[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00D400FF000000D4)) 
    \status[0]_i_3 
       (.I0(Q[3]),
        .I1(D[3]),
        .I2(\status_reg[0]_5 ),
        .I3(between_reg_1),
        .I4(Q[4]),
        .I5(D[4]),
        .O(\status[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \status[0]_i_4 
       (.I0(start),
        .I1(\status_reg[0]_4 ),
        .O(\status[0]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \status[0]_i_5 
       (.I0(roll_IBUF),
        .I1(start),
        .I2(\status_reg[0]_3 ),
        .O(\status[0]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \status_reg[0] 
       (.C(\status_reg[0]_1 ),
        .CE(1'b1),
        .D(\status[0]_i_1_n_0 ),
        .Q(status),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h08)) 
    \target[4]_i_1 
       (.I0(roll_IBUF),
        .I1(start),
        .I2(\target_reg[4]_0 ),
        .O(between1_out));
  FDRE #(
    .INIT(1'b0)) 
    \target_reg[0] 
       (.C(\status_reg[0]_1 ),
        .CE(between1_out),
        .D(D[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \target_reg[1] 
       (.C(\status_reg[0]_1 ),
        .CE(between1_out),
        .D(D[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \target_reg[2] 
       (.C(\status_reg[0]_1 ),
        .CE(between1_out),
        .D(D[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \target_reg[3] 
       (.C(\status_reg[0]_1 ),
        .CE(between1_out),
        .D(D[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \target_reg[4] 
       (.C(\status_reg[0]_1 ),
        .CE(between1_out),
        .D(D[4]),
        .Q(Q[4]),
        .R(1'b0));
endmodule

module clock_divider
   (cout,
    CLK);
  output cout;
  input CLK;

  wire CLK;
  wire [31:0]count0;
  wire \count0[31]_i_3_n_0 ;
  wire \count0[31]_i_4_n_0 ;
  wire \count0[31]_i_5_n_0 ;
  wire \count0[31]_i_6_n_0 ;
  wire \count0[31]_i_7_n_0 ;
  wire \count0[31]_i_8_n_0 ;
  wire \count0_reg[12]_i_1_n_0 ;
  wire \count0_reg[16]_i_1_n_0 ;
  wire \count0_reg[20]_i_1_n_0 ;
  wire \count0_reg[24]_i_1_n_0 ;
  wire \count0_reg[28]_i_1_n_0 ;
  wire \count0_reg[4]_i_1_n_0 ;
  wire \count0_reg[8]_i_1_n_0 ;
  wire \count1[0]_i_10_n_0 ;
  wire \count1[0]_i_11_n_0 ;
  wire \count1[0]_i_12_n_0 ;
  wire \count1[0]_i_13_n_0 ;
  wire \count1[0]_i_14_n_0 ;
  wire \count1[0]_i_1_n_0 ;
  wire \count1[0]_i_4_n_0 ;
  wire \count1[0]_i_5_n_0 ;
  wire \count1[0]_i_6_n_0 ;
  wire \count1[0]_i_7_n_0 ;
  wire \count1[0]_i_8_n_0 ;
  wire \count1[0]_i_9_n_0 ;
  wire \count1[12]_i_2_n_0 ;
  wire \count1[12]_i_3_n_0 ;
  wire \count1[12]_i_4_n_0 ;
  wire \count1[12]_i_5_n_0 ;
  wire \count1[16]_i_2_n_0 ;
  wire \count1[16]_i_3_n_0 ;
  wire \count1[16]_i_4_n_0 ;
  wire \count1[16]_i_5_n_0 ;
  wire \count1[20]_i_2_n_0 ;
  wire \count1[20]_i_3_n_0 ;
  wire \count1[20]_i_4_n_0 ;
  wire \count1[20]_i_5_n_0 ;
  wire \count1[24]_i_2_n_0 ;
  wire \count1[24]_i_3_n_0 ;
  wire \count1[24]_i_4_n_0 ;
  wire \count1[24]_i_5_n_0 ;
  wire \count1[28]_i_2_n_0 ;
  wire \count1[28]_i_3_n_0 ;
  wire \count1[28]_i_4_n_0 ;
  wire \count1[28]_i_5_n_0 ;
  wire \count1[4]_i_2_n_0 ;
  wire \count1[4]_i_3_n_0 ;
  wire \count1[4]_i_4_n_0 ;
  wire \count1[4]_i_5_n_0 ;
  wire \count1[8]_i_2_n_0 ;
  wire \count1[8]_i_3_n_0 ;
  wire \count1[8]_i_4_n_0 ;
  wire \count1[8]_i_5_n_0 ;
  wire [31:0]count1_reg;
  wire \count1_reg[0]_i_2_n_0 ;
  wire \count1_reg[0]_i_2_n_4 ;
  wire \count1_reg[0]_i_2_n_5 ;
  wire \count1_reg[0]_i_2_n_6 ;
  wire \count1_reg[0]_i_2_n_7 ;
  wire \count1_reg[12]_i_1_n_0 ;
  wire \count1_reg[12]_i_1_n_4 ;
  wire \count1_reg[12]_i_1_n_5 ;
  wire \count1_reg[12]_i_1_n_6 ;
  wire \count1_reg[12]_i_1_n_7 ;
  wire \count1_reg[16]_i_1_n_0 ;
  wire \count1_reg[16]_i_1_n_4 ;
  wire \count1_reg[16]_i_1_n_5 ;
  wire \count1_reg[16]_i_1_n_6 ;
  wire \count1_reg[16]_i_1_n_7 ;
  wire \count1_reg[20]_i_1_n_0 ;
  wire \count1_reg[20]_i_1_n_4 ;
  wire \count1_reg[20]_i_1_n_5 ;
  wire \count1_reg[20]_i_1_n_6 ;
  wire \count1_reg[20]_i_1_n_7 ;
  wire \count1_reg[24]_i_1_n_0 ;
  wire \count1_reg[24]_i_1_n_4 ;
  wire \count1_reg[24]_i_1_n_5 ;
  wire \count1_reg[24]_i_1_n_6 ;
  wire \count1_reg[24]_i_1_n_7 ;
  wire \count1_reg[28]_i_1_n_4 ;
  wire \count1_reg[28]_i_1_n_5 ;
  wire \count1_reg[28]_i_1_n_6 ;
  wire \count1_reg[28]_i_1_n_7 ;
  wire \count1_reg[4]_i_1_n_0 ;
  wire \count1_reg[4]_i_1_n_4 ;
  wire \count1_reg[4]_i_1_n_5 ;
  wire \count1_reg[4]_i_1_n_6 ;
  wire \count1_reg[4]_i_1_n_7 ;
  wire \count1_reg[8]_i_1_n_0 ;
  wire \count1_reg[8]_i_1_n_4 ;
  wire \count1_reg[8]_i_1_n_5 ;
  wire \count1_reg[8]_i_1_n_6 ;
  wire \count1_reg[8]_i_1_n_7 ;
  wire \count2[0]_i_10_n_0 ;
  wire \count2[0]_i_11_n_0 ;
  wire \count2[0]_i_12_n_0 ;
  wire \count2[0]_i_13_n_0 ;
  wire \count2[0]_i_14_n_0 ;
  wire \count2[0]_i_1_n_0 ;
  wire \count2[0]_i_4_n_0 ;
  wire \count2[0]_i_5_n_0 ;
  wire \count2[0]_i_6_n_0 ;
  wire \count2[0]_i_7_n_0 ;
  wire \count2[0]_i_8_n_0 ;
  wire \count2[0]_i_9_n_0 ;
  wire \count2[12]_i_2_n_0 ;
  wire \count2[12]_i_3_n_0 ;
  wire \count2[12]_i_4_n_0 ;
  wire \count2[12]_i_5_n_0 ;
  wire \count2[16]_i_2_n_0 ;
  wire \count2[16]_i_3_n_0 ;
  wire \count2[16]_i_4_n_0 ;
  wire \count2[16]_i_5_n_0 ;
  wire \count2[20]_i_2_n_0 ;
  wire \count2[20]_i_3_n_0 ;
  wire \count2[20]_i_4_n_0 ;
  wire \count2[20]_i_5_n_0 ;
  wire \count2[24]_i_2_n_0 ;
  wire \count2[24]_i_3_n_0 ;
  wire \count2[24]_i_4_n_0 ;
  wire \count2[24]_i_5_n_0 ;
  wire \count2[28]_i_2_n_0 ;
  wire \count2[28]_i_3_n_0 ;
  wire \count2[28]_i_4_n_0 ;
  wire \count2[28]_i_5_n_0 ;
  wire \count2[4]_i_2_n_0 ;
  wire \count2[4]_i_3_n_0 ;
  wire \count2[4]_i_4_n_0 ;
  wire \count2[4]_i_5_n_0 ;
  wire \count2[8]_i_2_n_0 ;
  wire \count2[8]_i_3_n_0 ;
  wire \count2[8]_i_4_n_0 ;
  wire \count2[8]_i_5_n_0 ;
  wire [31:0]count2_reg;
  wire \count2_reg[0]_i_2_n_0 ;
  wire \count2_reg[0]_i_2_n_4 ;
  wire \count2_reg[0]_i_2_n_5 ;
  wire \count2_reg[0]_i_2_n_6 ;
  wire \count2_reg[0]_i_2_n_7 ;
  wire \count2_reg[12]_i_1_n_0 ;
  wire \count2_reg[12]_i_1_n_4 ;
  wire \count2_reg[12]_i_1_n_5 ;
  wire \count2_reg[12]_i_1_n_6 ;
  wire \count2_reg[12]_i_1_n_7 ;
  wire \count2_reg[16]_i_1_n_0 ;
  wire \count2_reg[16]_i_1_n_4 ;
  wire \count2_reg[16]_i_1_n_5 ;
  wire \count2_reg[16]_i_1_n_6 ;
  wire \count2_reg[16]_i_1_n_7 ;
  wire \count2_reg[20]_i_1_n_0 ;
  wire \count2_reg[20]_i_1_n_4 ;
  wire \count2_reg[20]_i_1_n_5 ;
  wire \count2_reg[20]_i_1_n_6 ;
  wire \count2_reg[20]_i_1_n_7 ;
  wire \count2_reg[24]_i_1_n_0 ;
  wire \count2_reg[24]_i_1_n_4 ;
  wire \count2_reg[24]_i_1_n_5 ;
  wire \count2_reg[24]_i_1_n_6 ;
  wire \count2_reg[24]_i_1_n_7 ;
  wire \count2_reg[28]_i_1_n_4 ;
  wire \count2_reg[28]_i_1_n_5 ;
  wire \count2_reg[28]_i_1_n_6 ;
  wire \count2_reg[28]_i_1_n_7 ;
  wire \count2_reg[4]_i_1_n_0 ;
  wire \count2_reg[4]_i_1_n_4 ;
  wire \count2_reg[4]_i_1_n_5 ;
  wire \count2_reg[4]_i_1_n_6 ;
  wire \count2_reg[4]_i_1_n_7 ;
  wire \count2_reg[8]_i_1_n_0 ;
  wire \count2_reg[8]_i_1_n_4 ;
  wire \count2_reg[8]_i_1_n_5 ;
  wire \count2_reg[8]_i_1_n_6 ;
  wire \count2_reg[8]_i_1_n_7 ;
  wire count30;
  wire \count3[0]_i_10_n_0 ;
  wire \count3[0]_i_11_n_0 ;
  wire \count3[0]_i_12_n_0 ;
  wire \count3[0]_i_13_n_0 ;
  wire \count3[0]_i_14_n_0 ;
  wire \count3[0]_i_15_n_0 ;
  wire \count3[0]_i_3_n_0 ;
  wire \count3[0]_i_4_n_0 ;
  wire \count3[0]_i_5_n_0 ;
  wire \count3[0]_i_6_n_0 ;
  wire \count3[0]_i_7_n_0 ;
  wire \count3[0]_i_8_n_0 ;
  wire \count3[0]_i_9_n_0 ;
  wire \count3[12]_i_2_n_0 ;
  wire \count3[12]_i_3_n_0 ;
  wire \count3[12]_i_4_n_0 ;
  wire \count3[12]_i_5_n_0 ;
  wire \count3[16]_i_2_n_0 ;
  wire \count3[16]_i_3_n_0 ;
  wire \count3[16]_i_4_n_0 ;
  wire \count3[16]_i_5_n_0 ;
  wire \count3[20]_i_2_n_0 ;
  wire \count3[20]_i_3_n_0 ;
  wire \count3[20]_i_4_n_0 ;
  wire \count3[20]_i_5_n_0 ;
  wire \count3[24]_i_2_n_0 ;
  wire \count3[24]_i_3_n_0 ;
  wire \count3[24]_i_4_n_0 ;
  wire \count3[24]_i_5_n_0 ;
  wire \count3[28]_i_2_n_0 ;
  wire \count3[28]_i_3_n_0 ;
  wire \count3[28]_i_4_n_0 ;
  wire \count3[28]_i_5_n_0 ;
  wire \count3[4]_i_2_n_0 ;
  wire \count3[4]_i_3_n_0 ;
  wire \count3[4]_i_4_n_0 ;
  wire \count3[4]_i_5_n_0 ;
  wire \count3[8]_i_2_n_0 ;
  wire \count3[8]_i_3_n_0 ;
  wire \count3[8]_i_4_n_0 ;
  wire \count3[8]_i_5_n_0 ;
  wire \count3_reg[0]_i_2_n_0 ;
  wire \count3_reg[0]_i_2_n_4 ;
  wire \count3_reg[0]_i_2_n_5 ;
  wire \count3_reg[0]_i_2_n_6 ;
  wire \count3_reg[0]_i_2_n_7 ;
  wire \count3_reg[12]_i_1_n_0 ;
  wire \count3_reg[12]_i_1_n_4 ;
  wire \count3_reg[12]_i_1_n_5 ;
  wire \count3_reg[12]_i_1_n_6 ;
  wire \count3_reg[12]_i_1_n_7 ;
  wire \count3_reg[16]_i_1_n_0 ;
  wire \count3_reg[16]_i_1_n_4 ;
  wire \count3_reg[16]_i_1_n_5 ;
  wire \count3_reg[16]_i_1_n_6 ;
  wire \count3_reg[16]_i_1_n_7 ;
  wire \count3_reg[20]_i_1_n_0 ;
  wire \count3_reg[20]_i_1_n_4 ;
  wire \count3_reg[20]_i_1_n_5 ;
  wire \count3_reg[20]_i_1_n_6 ;
  wire \count3_reg[20]_i_1_n_7 ;
  wire \count3_reg[24]_i_1_n_0 ;
  wire \count3_reg[24]_i_1_n_4 ;
  wire \count3_reg[24]_i_1_n_5 ;
  wire \count3_reg[24]_i_1_n_6 ;
  wire \count3_reg[24]_i_1_n_7 ;
  wire \count3_reg[28]_i_1_n_4 ;
  wire \count3_reg[28]_i_1_n_5 ;
  wire \count3_reg[28]_i_1_n_6 ;
  wire \count3_reg[28]_i_1_n_7 ;
  wire \count3_reg[4]_i_1_n_0 ;
  wire \count3_reg[4]_i_1_n_4 ;
  wire \count3_reg[4]_i_1_n_5 ;
  wire \count3_reg[4]_i_1_n_6 ;
  wire \count3_reg[4]_i_1_n_7 ;
  wire \count3_reg[8]_i_1_n_0 ;
  wire \count3_reg[8]_i_1_n_4 ;
  wire \count3_reg[8]_i_1_n_5 ;
  wire \count3_reg[8]_i_1_n_6 ;
  wire \count3_reg[8]_i_1_n_7 ;
  wire cout;
  wire d;
  wire d_i_1_n_0;
  wire d_i_2_n_0;
  wire d_i_3_n_0;
  wire d_i_4_n_0;
  wire d_i_5_n_0;
  wire d_i_6_n_0;
  wire d_i_7_n_0;
  wire d_i_8_n_0;
  wire d_i_9_n_0;
  wire [31:0]p_1_in;
  wire [34:34]sel0;
  wire [33:32]sel0__0;
  wire [31:0]sel0__0__0;
  wire [2:0]\NLW_count0_reg[12]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_count0_reg[16]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_count0_reg[20]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_count0_reg[24]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_count0_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_count0_reg[31]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_count0_reg[31]_i_2_O_UNCONNECTED ;
  wire [2:0]\NLW_count0_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_count0_reg[8]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_count1_reg[0]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_count1_reg[12]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_count1_reg[16]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_count1_reg[20]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_count1_reg[24]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_count1_reg[28]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_count1_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_count1_reg[8]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_count2_reg[0]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_count2_reg[12]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_count2_reg[16]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_count2_reg[20]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_count2_reg[24]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_count2_reg[28]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_count2_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_count2_reg[8]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_count3_reg[0]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_count3_reg[12]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_count3_reg[16]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_count3_reg[20]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_count3_reg[24]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_count3_reg[28]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_count3_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_count3_reg[8]_i_1_CO_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \count0[0]_i_1 
       (.I0(count0[0]),
        .O(p_1_in[0]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \count0[31]_i_1 
       (.I0(\count0[31]_i_3_n_0 ),
        .I1(\count0[31]_i_4_n_0 ),
        .I2(\count0[31]_i_5_n_0 ),
        .I3(\count0[31]_i_6_n_0 ),
        .I4(\count0[31]_i_7_n_0 ),
        .I5(\count0[31]_i_8_n_0 ),
        .O(sel0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \count0[31]_i_3 
       (.I0(count0[24]),
        .I1(count0[25]),
        .I2(count0[26]),
        .I3(count0[27]),
        .I4(count0[28]),
        .I5(count0[29]),
        .O(\count0[31]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEF)) 
    \count0[31]_i_4 
       (.I0(count0[7]),
        .I1(count0[8]),
        .I2(count0[6]),
        .I3(count0[9]),
        .I4(count0[10]),
        .I5(count0[11]),
        .O(\count0[31]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \count0[31]_i_5 
       (.I0(count0[18]),
        .I1(count0[19]),
        .I2(count0[20]),
        .I3(count0[21]),
        .I4(count0[22]),
        .I5(count0[23]),
        .O(\count0[31]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \count0[31]_i_6 
       (.I0(count0[12]),
        .I1(count0[13]),
        .I2(count0[14]),
        .I3(count0[15]),
        .I4(count0[16]),
        .I5(count0[17]),
        .O(\count0[31]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \count0[31]_i_7 
       (.I0(count0[30]),
        .I1(count0[31]),
        .O(\count0[31]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFBFFFF)) 
    \count0[31]_i_8 
       (.I0(count0[0]),
        .I1(count0[2]),
        .I2(count0[1]),
        .I3(count0[3]),
        .I4(count0[4]),
        .I5(count0[5]),
        .O(\count0[31]_i_8_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count0_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[0]),
        .Q(count0[0]),
        .R(sel0));
  FDRE #(
    .INIT(1'b0)) 
    \count0_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[10]),
        .Q(count0[10]),
        .R(sel0));
  FDRE #(
    .INIT(1'b0)) 
    \count0_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[11]),
        .Q(count0[11]),
        .R(sel0));
  FDRE #(
    .INIT(1'b0)) 
    \count0_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[12]),
        .Q(count0[12]),
        .R(sel0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \count0_reg[12]_i_1 
       (.CI(\count0_reg[8]_i_1_n_0 ),
        .CO({\count0_reg[12]_i_1_n_0 ,\NLW_count0_reg[12]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_1_in[12:9]),
        .S(count0[12:9]));
  FDRE #(
    .INIT(1'b0)) 
    \count0_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[13]),
        .Q(count0[13]),
        .R(sel0));
  FDRE #(
    .INIT(1'b0)) 
    \count0_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[14]),
        .Q(count0[14]),
        .R(sel0));
  FDRE #(
    .INIT(1'b0)) 
    \count0_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[15]),
        .Q(count0[15]),
        .R(sel0));
  FDRE #(
    .INIT(1'b0)) 
    \count0_reg[16] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[16]),
        .Q(count0[16]),
        .R(sel0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \count0_reg[16]_i_1 
       (.CI(\count0_reg[12]_i_1_n_0 ),
        .CO({\count0_reg[16]_i_1_n_0 ,\NLW_count0_reg[16]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_1_in[16:13]),
        .S(count0[16:13]));
  FDRE #(
    .INIT(1'b0)) 
    \count0_reg[17] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[17]),
        .Q(count0[17]),
        .R(sel0));
  FDRE #(
    .INIT(1'b0)) 
    \count0_reg[18] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[18]),
        .Q(count0[18]),
        .R(sel0));
  FDRE #(
    .INIT(1'b0)) 
    \count0_reg[19] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[19]),
        .Q(count0[19]),
        .R(sel0));
  FDRE #(
    .INIT(1'b0)) 
    \count0_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[1]),
        .Q(count0[1]),
        .R(sel0));
  FDRE #(
    .INIT(1'b0)) 
    \count0_reg[20] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[20]),
        .Q(count0[20]),
        .R(sel0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \count0_reg[20]_i_1 
       (.CI(\count0_reg[16]_i_1_n_0 ),
        .CO({\count0_reg[20]_i_1_n_0 ,\NLW_count0_reg[20]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_1_in[20:17]),
        .S(count0[20:17]));
  FDRE #(
    .INIT(1'b0)) 
    \count0_reg[21] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[21]),
        .Q(count0[21]),
        .R(sel0));
  FDRE #(
    .INIT(1'b0)) 
    \count0_reg[22] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[22]),
        .Q(count0[22]),
        .R(sel0));
  FDRE #(
    .INIT(1'b0)) 
    \count0_reg[23] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[23]),
        .Q(count0[23]),
        .R(sel0));
  FDRE #(
    .INIT(1'b0)) 
    \count0_reg[24] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[24]),
        .Q(count0[24]),
        .R(sel0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \count0_reg[24]_i_1 
       (.CI(\count0_reg[20]_i_1_n_0 ),
        .CO({\count0_reg[24]_i_1_n_0 ,\NLW_count0_reg[24]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_1_in[24:21]),
        .S(count0[24:21]));
  FDRE #(
    .INIT(1'b0)) 
    \count0_reg[25] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[25]),
        .Q(count0[25]),
        .R(sel0));
  FDRE #(
    .INIT(1'b0)) 
    \count0_reg[26] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[26]),
        .Q(count0[26]),
        .R(sel0));
  FDRE #(
    .INIT(1'b0)) 
    \count0_reg[27] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[27]),
        .Q(count0[27]),
        .R(sel0));
  FDRE #(
    .INIT(1'b0)) 
    \count0_reg[28] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[28]),
        .Q(count0[28]),
        .R(sel0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \count0_reg[28]_i_1 
       (.CI(\count0_reg[24]_i_1_n_0 ),
        .CO({\count0_reg[28]_i_1_n_0 ,\NLW_count0_reg[28]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_1_in[28:25]),
        .S(count0[28:25]));
  FDRE #(
    .INIT(1'b0)) 
    \count0_reg[29] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[29]),
        .Q(count0[29]),
        .R(sel0));
  FDRE #(
    .INIT(1'b0)) 
    \count0_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[2]),
        .Q(count0[2]),
        .R(sel0));
  FDRE #(
    .INIT(1'b0)) 
    \count0_reg[30] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[30]),
        .Q(count0[30]),
        .R(sel0));
  FDRE #(
    .INIT(1'b0)) 
    \count0_reg[31] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[31]),
        .Q(count0[31]),
        .R(sel0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \count0_reg[31]_i_2 
       (.CI(\count0_reg[28]_i_1_n_0 ),
        .CO(\NLW_count0_reg[31]_i_2_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_count0_reg[31]_i_2_O_UNCONNECTED [3],p_1_in[31:29]}),
        .S({1'b0,count0[31:29]}));
  FDRE #(
    .INIT(1'b0)) 
    \count0_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[3]),
        .Q(count0[3]),
        .R(sel0));
  FDRE #(
    .INIT(1'b0)) 
    \count0_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[4]),
        .Q(count0[4]),
        .R(sel0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \count0_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\count0_reg[4]_i_1_n_0 ,\NLW_count0_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(count0[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_1_in[4:1]),
        .S(count0[4:1]));
  FDRE #(
    .INIT(1'b0)) 
    \count0_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[5]),
        .Q(count0[5]),
        .R(sel0));
  FDRE #(
    .INIT(1'b0)) 
    \count0_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[6]),
        .Q(count0[6]),
        .R(sel0));
  FDRE #(
    .INIT(1'b0)) 
    \count0_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[7]),
        .Q(count0[7]),
        .R(sel0));
  FDRE #(
    .INIT(1'b0)) 
    \count0_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[8]),
        .Q(count0[8]),
        .R(sel0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \count0_reg[8]_i_1 
       (.CI(\count0_reg[4]_i_1_n_0 ),
        .CO({\count0_reg[8]_i_1_n_0 ,\NLW_count0_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_1_in[8:5]),
        .S(count0[8:5]));
  FDRE #(
    .INIT(1'b0)) 
    \count0_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[9]),
        .Q(count0[9]),
        .R(sel0));
  LUT2 #(
    .INIT(4'hE)) 
    \count1[0]_i_1 
       (.I0(sel0),
        .I1(sel0__0[33]),
        .O(\count1[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEF)) 
    \count1[0]_i_10 
       (.I0(count1_reg[7]),
        .I1(count1_reg[8]),
        .I2(count1_reg[6]),
        .I3(count1_reg[9]),
        .I4(count1_reg[10]),
        .I5(count1_reg[11]),
        .O(\count1[0]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \count1[0]_i_11 
       (.I0(count1_reg[18]),
        .I1(count1_reg[19]),
        .I2(count1_reg[20]),
        .I3(count1_reg[21]),
        .I4(count1_reg[22]),
        .I5(count1_reg[23]),
        .O(\count1[0]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \count1[0]_i_12 
       (.I0(count1_reg[12]),
        .I1(count1_reg[13]),
        .I2(count1_reg[14]),
        .I3(count1_reg[15]),
        .I4(count1_reg[16]),
        .I5(count1_reg[17]),
        .O(\count1[0]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \count1[0]_i_13 
       (.I0(count1_reg[30]),
        .I1(count1_reg[31]),
        .O(\count1[0]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFBFFFF)) 
    \count1[0]_i_14 
       (.I0(count1_reg[0]),
        .I1(count1_reg[2]),
        .I2(count1_reg[1]),
        .I3(count1_reg[3]),
        .I4(count1_reg[4]),
        .I5(count1_reg[5]),
        .O(\count1[0]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \count1[0]_i_3 
       (.I0(\count1[0]_i_9_n_0 ),
        .I1(\count1[0]_i_10_n_0 ),
        .I2(\count1[0]_i_11_n_0 ),
        .I3(\count1[0]_i_12_n_0 ),
        .I4(\count1[0]_i_13_n_0 ),
        .I5(\count1[0]_i_14_n_0 ),
        .O(sel0__0[33]));
  LUT2 #(
    .INIT(4'h8)) 
    \count1[0]_i_4 
       (.I0(sel0),
        .I1(count1_reg[0]),
        .O(\count1[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count1[0]_i_5 
       (.I0(sel0),
        .I1(count1_reg[3]),
        .O(\count1[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count1[0]_i_6 
       (.I0(sel0),
        .I1(count1_reg[2]),
        .O(\count1[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count1[0]_i_7 
       (.I0(sel0),
        .I1(count1_reg[1]),
        .O(\count1[0]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h4)) 
    \count1[0]_i_8 
       (.I0(count1_reg[0]),
        .I1(sel0),
        .O(\count1[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \count1[0]_i_9 
       (.I0(count1_reg[24]),
        .I1(count1_reg[25]),
        .I2(count1_reg[26]),
        .I3(count1_reg[27]),
        .I4(count1_reg[28]),
        .I5(count1_reg[29]),
        .O(\count1[0]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count1[12]_i_2 
       (.I0(sel0),
        .I1(count1_reg[15]),
        .O(\count1[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count1[12]_i_3 
       (.I0(sel0),
        .I1(count1_reg[14]),
        .O(\count1[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count1[12]_i_4 
       (.I0(sel0),
        .I1(count1_reg[13]),
        .O(\count1[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count1[12]_i_5 
       (.I0(sel0),
        .I1(count1_reg[12]),
        .O(\count1[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count1[16]_i_2 
       (.I0(sel0),
        .I1(count1_reg[19]),
        .O(\count1[16]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count1[16]_i_3 
       (.I0(sel0),
        .I1(count1_reg[18]),
        .O(\count1[16]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count1[16]_i_4 
       (.I0(sel0),
        .I1(count1_reg[17]),
        .O(\count1[16]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count1[16]_i_5 
       (.I0(sel0),
        .I1(count1_reg[16]),
        .O(\count1[16]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count1[20]_i_2 
       (.I0(sel0),
        .I1(count1_reg[23]),
        .O(\count1[20]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count1[20]_i_3 
       (.I0(sel0),
        .I1(count1_reg[22]),
        .O(\count1[20]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count1[20]_i_4 
       (.I0(sel0),
        .I1(count1_reg[21]),
        .O(\count1[20]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count1[20]_i_5 
       (.I0(sel0),
        .I1(count1_reg[20]),
        .O(\count1[20]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count1[24]_i_2 
       (.I0(sel0),
        .I1(count1_reg[27]),
        .O(\count1[24]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count1[24]_i_3 
       (.I0(sel0),
        .I1(count1_reg[26]),
        .O(\count1[24]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count1[24]_i_4 
       (.I0(sel0),
        .I1(count1_reg[25]),
        .O(\count1[24]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count1[24]_i_5 
       (.I0(sel0),
        .I1(count1_reg[24]),
        .O(\count1[24]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count1[28]_i_2 
       (.I0(sel0),
        .I1(count1_reg[31]),
        .O(\count1[28]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count1[28]_i_3 
       (.I0(sel0),
        .I1(count1_reg[30]),
        .O(\count1[28]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count1[28]_i_4 
       (.I0(sel0),
        .I1(count1_reg[29]),
        .O(\count1[28]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count1[28]_i_5 
       (.I0(sel0),
        .I1(count1_reg[28]),
        .O(\count1[28]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count1[4]_i_2 
       (.I0(sel0),
        .I1(count1_reg[7]),
        .O(\count1[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count1[4]_i_3 
       (.I0(sel0),
        .I1(count1_reg[6]),
        .O(\count1[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count1[4]_i_4 
       (.I0(sel0),
        .I1(count1_reg[5]),
        .O(\count1[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count1[4]_i_5 
       (.I0(sel0),
        .I1(count1_reg[4]),
        .O(\count1[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count1[8]_i_2 
       (.I0(sel0),
        .I1(count1_reg[11]),
        .O(\count1[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count1[8]_i_3 
       (.I0(sel0),
        .I1(count1_reg[10]),
        .O(\count1[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count1[8]_i_4 
       (.I0(sel0),
        .I1(count1_reg[9]),
        .O(\count1[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count1[8]_i_5 
       (.I0(sel0),
        .I1(count1_reg[8]),
        .O(\count1[8]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[0] 
       (.C(CLK),
        .CE(\count1[0]_i_1_n_0 ),
        .D(\count1_reg[0]_i_2_n_7 ),
        .Q(count1_reg[0]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count1_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\count1_reg[0]_i_2_n_0 ,\NLW_count1_reg[0]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\count1[0]_i_4_n_0 }),
        .O({\count1_reg[0]_i_2_n_4 ,\count1_reg[0]_i_2_n_5 ,\count1_reg[0]_i_2_n_6 ,\count1_reg[0]_i_2_n_7 }),
        .S({\count1[0]_i_5_n_0 ,\count1[0]_i_6_n_0 ,\count1[0]_i_7_n_0 ,\count1[0]_i_8_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[10] 
       (.C(CLK),
        .CE(\count1[0]_i_1_n_0 ),
        .D(\count1_reg[8]_i_1_n_5 ),
        .Q(count1_reg[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[11] 
       (.C(CLK),
        .CE(\count1[0]_i_1_n_0 ),
        .D(\count1_reg[8]_i_1_n_4 ),
        .Q(count1_reg[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[12] 
       (.C(CLK),
        .CE(\count1[0]_i_1_n_0 ),
        .D(\count1_reg[12]_i_1_n_7 ),
        .Q(count1_reg[12]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count1_reg[12]_i_1 
       (.CI(\count1_reg[8]_i_1_n_0 ),
        .CO({\count1_reg[12]_i_1_n_0 ,\NLW_count1_reg[12]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count1_reg[12]_i_1_n_4 ,\count1_reg[12]_i_1_n_5 ,\count1_reg[12]_i_1_n_6 ,\count1_reg[12]_i_1_n_7 }),
        .S({\count1[12]_i_2_n_0 ,\count1[12]_i_3_n_0 ,\count1[12]_i_4_n_0 ,\count1[12]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[13] 
       (.C(CLK),
        .CE(\count1[0]_i_1_n_0 ),
        .D(\count1_reg[12]_i_1_n_6 ),
        .Q(count1_reg[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[14] 
       (.C(CLK),
        .CE(\count1[0]_i_1_n_0 ),
        .D(\count1_reg[12]_i_1_n_5 ),
        .Q(count1_reg[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[15] 
       (.C(CLK),
        .CE(\count1[0]_i_1_n_0 ),
        .D(\count1_reg[12]_i_1_n_4 ),
        .Q(count1_reg[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[16] 
       (.C(CLK),
        .CE(\count1[0]_i_1_n_0 ),
        .D(\count1_reg[16]_i_1_n_7 ),
        .Q(count1_reg[16]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count1_reg[16]_i_1 
       (.CI(\count1_reg[12]_i_1_n_0 ),
        .CO({\count1_reg[16]_i_1_n_0 ,\NLW_count1_reg[16]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count1_reg[16]_i_1_n_4 ,\count1_reg[16]_i_1_n_5 ,\count1_reg[16]_i_1_n_6 ,\count1_reg[16]_i_1_n_7 }),
        .S({\count1[16]_i_2_n_0 ,\count1[16]_i_3_n_0 ,\count1[16]_i_4_n_0 ,\count1[16]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[17] 
       (.C(CLK),
        .CE(\count1[0]_i_1_n_0 ),
        .D(\count1_reg[16]_i_1_n_6 ),
        .Q(count1_reg[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[18] 
       (.C(CLK),
        .CE(\count1[0]_i_1_n_0 ),
        .D(\count1_reg[16]_i_1_n_5 ),
        .Q(count1_reg[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[19] 
       (.C(CLK),
        .CE(\count1[0]_i_1_n_0 ),
        .D(\count1_reg[16]_i_1_n_4 ),
        .Q(count1_reg[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[1] 
       (.C(CLK),
        .CE(\count1[0]_i_1_n_0 ),
        .D(\count1_reg[0]_i_2_n_6 ),
        .Q(count1_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[20] 
       (.C(CLK),
        .CE(\count1[0]_i_1_n_0 ),
        .D(\count1_reg[20]_i_1_n_7 ),
        .Q(count1_reg[20]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count1_reg[20]_i_1 
       (.CI(\count1_reg[16]_i_1_n_0 ),
        .CO({\count1_reg[20]_i_1_n_0 ,\NLW_count1_reg[20]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count1_reg[20]_i_1_n_4 ,\count1_reg[20]_i_1_n_5 ,\count1_reg[20]_i_1_n_6 ,\count1_reg[20]_i_1_n_7 }),
        .S({\count1[20]_i_2_n_0 ,\count1[20]_i_3_n_0 ,\count1[20]_i_4_n_0 ,\count1[20]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[21] 
       (.C(CLK),
        .CE(\count1[0]_i_1_n_0 ),
        .D(\count1_reg[20]_i_1_n_6 ),
        .Q(count1_reg[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[22] 
       (.C(CLK),
        .CE(\count1[0]_i_1_n_0 ),
        .D(\count1_reg[20]_i_1_n_5 ),
        .Q(count1_reg[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[23] 
       (.C(CLK),
        .CE(\count1[0]_i_1_n_0 ),
        .D(\count1_reg[20]_i_1_n_4 ),
        .Q(count1_reg[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[24] 
       (.C(CLK),
        .CE(\count1[0]_i_1_n_0 ),
        .D(\count1_reg[24]_i_1_n_7 ),
        .Q(count1_reg[24]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count1_reg[24]_i_1 
       (.CI(\count1_reg[20]_i_1_n_0 ),
        .CO({\count1_reg[24]_i_1_n_0 ,\NLW_count1_reg[24]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count1_reg[24]_i_1_n_4 ,\count1_reg[24]_i_1_n_5 ,\count1_reg[24]_i_1_n_6 ,\count1_reg[24]_i_1_n_7 }),
        .S({\count1[24]_i_2_n_0 ,\count1[24]_i_3_n_0 ,\count1[24]_i_4_n_0 ,\count1[24]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[25] 
       (.C(CLK),
        .CE(\count1[0]_i_1_n_0 ),
        .D(\count1_reg[24]_i_1_n_6 ),
        .Q(count1_reg[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[26] 
       (.C(CLK),
        .CE(\count1[0]_i_1_n_0 ),
        .D(\count1_reg[24]_i_1_n_5 ),
        .Q(count1_reg[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[27] 
       (.C(CLK),
        .CE(\count1[0]_i_1_n_0 ),
        .D(\count1_reg[24]_i_1_n_4 ),
        .Q(count1_reg[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[28] 
       (.C(CLK),
        .CE(\count1[0]_i_1_n_0 ),
        .D(\count1_reg[28]_i_1_n_7 ),
        .Q(count1_reg[28]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count1_reg[28]_i_1 
       (.CI(\count1_reg[24]_i_1_n_0 ),
        .CO(\NLW_count1_reg[28]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count1_reg[28]_i_1_n_4 ,\count1_reg[28]_i_1_n_5 ,\count1_reg[28]_i_1_n_6 ,\count1_reg[28]_i_1_n_7 }),
        .S({\count1[28]_i_2_n_0 ,\count1[28]_i_3_n_0 ,\count1[28]_i_4_n_0 ,\count1[28]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[29] 
       (.C(CLK),
        .CE(\count1[0]_i_1_n_0 ),
        .D(\count1_reg[28]_i_1_n_6 ),
        .Q(count1_reg[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[2] 
       (.C(CLK),
        .CE(\count1[0]_i_1_n_0 ),
        .D(\count1_reg[0]_i_2_n_5 ),
        .Q(count1_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[30] 
       (.C(CLK),
        .CE(\count1[0]_i_1_n_0 ),
        .D(\count1_reg[28]_i_1_n_5 ),
        .Q(count1_reg[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[31] 
       (.C(CLK),
        .CE(\count1[0]_i_1_n_0 ),
        .D(\count1_reg[28]_i_1_n_4 ),
        .Q(count1_reg[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[3] 
       (.C(CLK),
        .CE(\count1[0]_i_1_n_0 ),
        .D(\count1_reg[0]_i_2_n_4 ),
        .Q(count1_reg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[4] 
       (.C(CLK),
        .CE(\count1[0]_i_1_n_0 ),
        .D(\count1_reg[4]_i_1_n_7 ),
        .Q(count1_reg[4]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count1_reg[4]_i_1 
       (.CI(\count1_reg[0]_i_2_n_0 ),
        .CO({\count1_reg[4]_i_1_n_0 ,\NLW_count1_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count1_reg[4]_i_1_n_4 ,\count1_reg[4]_i_1_n_5 ,\count1_reg[4]_i_1_n_6 ,\count1_reg[4]_i_1_n_7 }),
        .S({\count1[4]_i_2_n_0 ,\count1[4]_i_3_n_0 ,\count1[4]_i_4_n_0 ,\count1[4]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[5] 
       (.C(CLK),
        .CE(\count1[0]_i_1_n_0 ),
        .D(\count1_reg[4]_i_1_n_6 ),
        .Q(count1_reg[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[6] 
       (.C(CLK),
        .CE(\count1[0]_i_1_n_0 ),
        .D(\count1_reg[4]_i_1_n_5 ),
        .Q(count1_reg[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[7] 
       (.C(CLK),
        .CE(\count1[0]_i_1_n_0 ),
        .D(\count1_reg[4]_i_1_n_4 ),
        .Q(count1_reg[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[8] 
       (.C(CLK),
        .CE(\count1[0]_i_1_n_0 ),
        .D(\count1_reg[8]_i_1_n_7 ),
        .Q(count1_reg[8]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count1_reg[8]_i_1 
       (.CI(\count1_reg[4]_i_1_n_0 ),
        .CO({\count1_reg[8]_i_1_n_0 ,\NLW_count1_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count1_reg[8]_i_1_n_4 ,\count1_reg[8]_i_1_n_5 ,\count1_reg[8]_i_1_n_6 ,\count1_reg[8]_i_1_n_7 }),
        .S({\count1[8]_i_2_n_0 ,\count1[8]_i_3_n_0 ,\count1[8]_i_4_n_0 ,\count1[8]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[9] 
       (.C(CLK),
        .CE(\count1[0]_i_1_n_0 ),
        .D(\count1_reg[8]_i_1_n_6 ),
        .Q(count1_reg[9]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h0E)) 
    \count2[0]_i_1 
       (.I0(sel0__0[32]),
        .I1(sel0__0[33]),
        .I2(sel0),
        .O(\count2[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFEF)) 
    \count2[0]_i_10 
       (.I0(count2_reg[7]),
        .I1(count2_reg[8]),
        .I2(count2_reg[6]),
        .I3(count2_reg[9]),
        .I4(count2_reg[10]),
        .I5(count2_reg[11]),
        .O(\count2[0]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \count2[0]_i_11 
       (.I0(count2_reg[18]),
        .I1(count2_reg[19]),
        .I2(count2_reg[20]),
        .I3(count2_reg[21]),
        .I4(count2_reg[22]),
        .I5(count2_reg[23]),
        .O(\count2[0]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \count2[0]_i_12 
       (.I0(count2_reg[12]),
        .I1(count2_reg[13]),
        .I2(count2_reg[14]),
        .I3(count2_reg[15]),
        .I4(count2_reg[16]),
        .I5(count2_reg[17]),
        .O(\count2[0]_i_12_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \count2[0]_i_13 
       (.I0(count2_reg[30]),
        .I1(count2_reg[31]),
        .O(\count2[0]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFBFFFF)) 
    \count2[0]_i_14 
       (.I0(count2_reg[0]),
        .I1(count2_reg[2]),
        .I2(count2_reg[1]),
        .I3(count2_reg[3]),
        .I4(count2_reg[4]),
        .I5(count2_reg[5]),
        .O(\count2[0]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \count2[0]_i_3 
       (.I0(\count2[0]_i_9_n_0 ),
        .I1(\count2[0]_i_10_n_0 ),
        .I2(\count2[0]_i_11_n_0 ),
        .I3(\count2[0]_i_12_n_0 ),
        .I4(\count2[0]_i_13_n_0 ),
        .I5(\count2[0]_i_14_n_0 ),
        .O(sel0__0[32]));
  LUT2 #(
    .INIT(4'h8)) 
    \count2[0]_i_4 
       (.I0(sel0__0[33]),
        .I1(count2_reg[0]),
        .O(\count2[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count2[0]_i_5 
       (.I0(sel0__0[33]),
        .I1(count2_reg[3]),
        .O(\count2[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count2[0]_i_6 
       (.I0(sel0__0[33]),
        .I1(count2_reg[2]),
        .O(\count2[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count2[0]_i_7 
       (.I0(sel0__0[33]),
        .I1(count2_reg[1]),
        .O(\count2[0]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h4)) 
    \count2[0]_i_8 
       (.I0(count2_reg[0]),
        .I1(sel0__0[33]),
        .O(\count2[0]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \count2[0]_i_9 
       (.I0(count2_reg[24]),
        .I1(count2_reg[25]),
        .I2(count2_reg[26]),
        .I3(count2_reg[27]),
        .I4(count2_reg[28]),
        .I5(count2_reg[29]),
        .O(\count2[0]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count2[12]_i_2 
       (.I0(sel0__0[33]),
        .I1(count2_reg[15]),
        .O(\count2[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count2[12]_i_3 
       (.I0(sel0__0[33]),
        .I1(count2_reg[14]),
        .O(\count2[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count2[12]_i_4 
       (.I0(sel0__0[33]),
        .I1(count2_reg[13]),
        .O(\count2[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count2[12]_i_5 
       (.I0(sel0__0[33]),
        .I1(count2_reg[12]),
        .O(\count2[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count2[16]_i_2 
       (.I0(sel0__0[33]),
        .I1(count2_reg[19]),
        .O(\count2[16]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count2[16]_i_3 
       (.I0(sel0__0[33]),
        .I1(count2_reg[18]),
        .O(\count2[16]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count2[16]_i_4 
       (.I0(sel0__0[33]),
        .I1(count2_reg[17]),
        .O(\count2[16]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count2[16]_i_5 
       (.I0(sel0__0[33]),
        .I1(count2_reg[16]),
        .O(\count2[16]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count2[20]_i_2 
       (.I0(sel0__0[33]),
        .I1(count2_reg[23]),
        .O(\count2[20]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count2[20]_i_3 
       (.I0(sel0__0[33]),
        .I1(count2_reg[22]),
        .O(\count2[20]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count2[20]_i_4 
       (.I0(sel0__0[33]),
        .I1(count2_reg[21]),
        .O(\count2[20]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count2[20]_i_5 
       (.I0(sel0__0[33]),
        .I1(count2_reg[20]),
        .O(\count2[20]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count2[24]_i_2 
       (.I0(sel0__0[33]),
        .I1(count2_reg[27]),
        .O(\count2[24]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count2[24]_i_3 
       (.I0(sel0__0[33]),
        .I1(count2_reg[26]),
        .O(\count2[24]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count2[24]_i_4 
       (.I0(sel0__0[33]),
        .I1(count2_reg[25]),
        .O(\count2[24]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count2[24]_i_5 
       (.I0(sel0__0[33]),
        .I1(count2_reg[24]),
        .O(\count2[24]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count2[28]_i_2 
       (.I0(sel0__0[33]),
        .I1(count2_reg[31]),
        .O(\count2[28]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count2[28]_i_3 
       (.I0(sel0__0[33]),
        .I1(count2_reg[30]),
        .O(\count2[28]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count2[28]_i_4 
       (.I0(sel0__0[33]),
        .I1(count2_reg[29]),
        .O(\count2[28]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count2[28]_i_5 
       (.I0(sel0__0[33]),
        .I1(count2_reg[28]),
        .O(\count2[28]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count2[4]_i_2 
       (.I0(sel0__0[33]),
        .I1(count2_reg[7]),
        .O(\count2[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count2[4]_i_3 
       (.I0(sel0__0[33]),
        .I1(count2_reg[6]),
        .O(\count2[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count2[4]_i_4 
       (.I0(sel0__0[33]),
        .I1(count2_reg[5]),
        .O(\count2[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count2[4]_i_5 
       (.I0(sel0__0[33]),
        .I1(count2_reg[4]),
        .O(\count2[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count2[8]_i_2 
       (.I0(sel0__0[33]),
        .I1(count2_reg[11]),
        .O(\count2[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count2[8]_i_3 
       (.I0(sel0__0[33]),
        .I1(count2_reg[10]),
        .O(\count2[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count2[8]_i_4 
       (.I0(sel0__0[33]),
        .I1(count2_reg[9]),
        .O(\count2[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count2[8]_i_5 
       (.I0(sel0__0[33]),
        .I1(count2_reg[8]),
        .O(\count2[8]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count2_reg[0] 
       (.C(CLK),
        .CE(\count2[0]_i_1_n_0 ),
        .D(\count2_reg[0]_i_2_n_7 ),
        .Q(count2_reg[0]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count2_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\count2_reg[0]_i_2_n_0 ,\NLW_count2_reg[0]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\count2[0]_i_4_n_0 }),
        .O({\count2_reg[0]_i_2_n_4 ,\count2_reg[0]_i_2_n_5 ,\count2_reg[0]_i_2_n_6 ,\count2_reg[0]_i_2_n_7 }),
        .S({\count2[0]_i_5_n_0 ,\count2[0]_i_6_n_0 ,\count2[0]_i_7_n_0 ,\count2[0]_i_8_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count2_reg[10] 
       (.C(CLK),
        .CE(\count2[0]_i_1_n_0 ),
        .D(\count2_reg[8]_i_1_n_5 ),
        .Q(count2_reg[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count2_reg[11] 
       (.C(CLK),
        .CE(\count2[0]_i_1_n_0 ),
        .D(\count2_reg[8]_i_1_n_4 ),
        .Q(count2_reg[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count2_reg[12] 
       (.C(CLK),
        .CE(\count2[0]_i_1_n_0 ),
        .D(\count2_reg[12]_i_1_n_7 ),
        .Q(count2_reg[12]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count2_reg[12]_i_1 
       (.CI(\count2_reg[8]_i_1_n_0 ),
        .CO({\count2_reg[12]_i_1_n_0 ,\NLW_count2_reg[12]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count2_reg[12]_i_1_n_4 ,\count2_reg[12]_i_1_n_5 ,\count2_reg[12]_i_1_n_6 ,\count2_reg[12]_i_1_n_7 }),
        .S({\count2[12]_i_2_n_0 ,\count2[12]_i_3_n_0 ,\count2[12]_i_4_n_0 ,\count2[12]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count2_reg[13] 
       (.C(CLK),
        .CE(\count2[0]_i_1_n_0 ),
        .D(\count2_reg[12]_i_1_n_6 ),
        .Q(count2_reg[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count2_reg[14] 
       (.C(CLK),
        .CE(\count2[0]_i_1_n_0 ),
        .D(\count2_reg[12]_i_1_n_5 ),
        .Q(count2_reg[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count2_reg[15] 
       (.C(CLK),
        .CE(\count2[0]_i_1_n_0 ),
        .D(\count2_reg[12]_i_1_n_4 ),
        .Q(count2_reg[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count2_reg[16] 
       (.C(CLK),
        .CE(\count2[0]_i_1_n_0 ),
        .D(\count2_reg[16]_i_1_n_7 ),
        .Q(count2_reg[16]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count2_reg[16]_i_1 
       (.CI(\count2_reg[12]_i_1_n_0 ),
        .CO({\count2_reg[16]_i_1_n_0 ,\NLW_count2_reg[16]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count2_reg[16]_i_1_n_4 ,\count2_reg[16]_i_1_n_5 ,\count2_reg[16]_i_1_n_6 ,\count2_reg[16]_i_1_n_7 }),
        .S({\count2[16]_i_2_n_0 ,\count2[16]_i_3_n_0 ,\count2[16]_i_4_n_0 ,\count2[16]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count2_reg[17] 
       (.C(CLK),
        .CE(\count2[0]_i_1_n_0 ),
        .D(\count2_reg[16]_i_1_n_6 ),
        .Q(count2_reg[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count2_reg[18] 
       (.C(CLK),
        .CE(\count2[0]_i_1_n_0 ),
        .D(\count2_reg[16]_i_1_n_5 ),
        .Q(count2_reg[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count2_reg[19] 
       (.C(CLK),
        .CE(\count2[0]_i_1_n_0 ),
        .D(\count2_reg[16]_i_1_n_4 ),
        .Q(count2_reg[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count2_reg[1] 
       (.C(CLK),
        .CE(\count2[0]_i_1_n_0 ),
        .D(\count2_reg[0]_i_2_n_6 ),
        .Q(count2_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count2_reg[20] 
       (.C(CLK),
        .CE(\count2[0]_i_1_n_0 ),
        .D(\count2_reg[20]_i_1_n_7 ),
        .Q(count2_reg[20]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count2_reg[20]_i_1 
       (.CI(\count2_reg[16]_i_1_n_0 ),
        .CO({\count2_reg[20]_i_1_n_0 ,\NLW_count2_reg[20]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count2_reg[20]_i_1_n_4 ,\count2_reg[20]_i_1_n_5 ,\count2_reg[20]_i_1_n_6 ,\count2_reg[20]_i_1_n_7 }),
        .S({\count2[20]_i_2_n_0 ,\count2[20]_i_3_n_0 ,\count2[20]_i_4_n_0 ,\count2[20]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count2_reg[21] 
       (.C(CLK),
        .CE(\count2[0]_i_1_n_0 ),
        .D(\count2_reg[20]_i_1_n_6 ),
        .Q(count2_reg[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count2_reg[22] 
       (.C(CLK),
        .CE(\count2[0]_i_1_n_0 ),
        .D(\count2_reg[20]_i_1_n_5 ),
        .Q(count2_reg[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count2_reg[23] 
       (.C(CLK),
        .CE(\count2[0]_i_1_n_0 ),
        .D(\count2_reg[20]_i_1_n_4 ),
        .Q(count2_reg[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count2_reg[24] 
       (.C(CLK),
        .CE(\count2[0]_i_1_n_0 ),
        .D(\count2_reg[24]_i_1_n_7 ),
        .Q(count2_reg[24]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count2_reg[24]_i_1 
       (.CI(\count2_reg[20]_i_1_n_0 ),
        .CO({\count2_reg[24]_i_1_n_0 ,\NLW_count2_reg[24]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count2_reg[24]_i_1_n_4 ,\count2_reg[24]_i_1_n_5 ,\count2_reg[24]_i_1_n_6 ,\count2_reg[24]_i_1_n_7 }),
        .S({\count2[24]_i_2_n_0 ,\count2[24]_i_3_n_0 ,\count2[24]_i_4_n_0 ,\count2[24]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count2_reg[25] 
       (.C(CLK),
        .CE(\count2[0]_i_1_n_0 ),
        .D(\count2_reg[24]_i_1_n_6 ),
        .Q(count2_reg[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count2_reg[26] 
       (.C(CLK),
        .CE(\count2[0]_i_1_n_0 ),
        .D(\count2_reg[24]_i_1_n_5 ),
        .Q(count2_reg[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count2_reg[27] 
       (.C(CLK),
        .CE(\count2[0]_i_1_n_0 ),
        .D(\count2_reg[24]_i_1_n_4 ),
        .Q(count2_reg[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count2_reg[28] 
       (.C(CLK),
        .CE(\count2[0]_i_1_n_0 ),
        .D(\count2_reg[28]_i_1_n_7 ),
        .Q(count2_reg[28]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count2_reg[28]_i_1 
       (.CI(\count2_reg[24]_i_1_n_0 ),
        .CO(\NLW_count2_reg[28]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count2_reg[28]_i_1_n_4 ,\count2_reg[28]_i_1_n_5 ,\count2_reg[28]_i_1_n_6 ,\count2_reg[28]_i_1_n_7 }),
        .S({\count2[28]_i_2_n_0 ,\count2[28]_i_3_n_0 ,\count2[28]_i_4_n_0 ,\count2[28]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count2_reg[29] 
       (.C(CLK),
        .CE(\count2[0]_i_1_n_0 ),
        .D(\count2_reg[28]_i_1_n_6 ),
        .Q(count2_reg[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count2_reg[2] 
       (.C(CLK),
        .CE(\count2[0]_i_1_n_0 ),
        .D(\count2_reg[0]_i_2_n_5 ),
        .Q(count2_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count2_reg[30] 
       (.C(CLK),
        .CE(\count2[0]_i_1_n_0 ),
        .D(\count2_reg[28]_i_1_n_5 ),
        .Q(count2_reg[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count2_reg[31] 
       (.C(CLK),
        .CE(\count2[0]_i_1_n_0 ),
        .D(\count2_reg[28]_i_1_n_4 ),
        .Q(count2_reg[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count2_reg[3] 
       (.C(CLK),
        .CE(\count2[0]_i_1_n_0 ),
        .D(\count2_reg[0]_i_2_n_4 ),
        .Q(count2_reg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count2_reg[4] 
       (.C(CLK),
        .CE(\count2[0]_i_1_n_0 ),
        .D(\count2_reg[4]_i_1_n_7 ),
        .Q(count2_reg[4]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count2_reg[4]_i_1 
       (.CI(\count2_reg[0]_i_2_n_0 ),
        .CO({\count2_reg[4]_i_1_n_0 ,\NLW_count2_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count2_reg[4]_i_1_n_4 ,\count2_reg[4]_i_1_n_5 ,\count2_reg[4]_i_1_n_6 ,\count2_reg[4]_i_1_n_7 }),
        .S({\count2[4]_i_2_n_0 ,\count2[4]_i_3_n_0 ,\count2[4]_i_4_n_0 ,\count2[4]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count2_reg[5] 
       (.C(CLK),
        .CE(\count2[0]_i_1_n_0 ),
        .D(\count2_reg[4]_i_1_n_6 ),
        .Q(count2_reg[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count2_reg[6] 
       (.C(CLK),
        .CE(\count2[0]_i_1_n_0 ),
        .D(\count2_reg[4]_i_1_n_5 ),
        .Q(count2_reg[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count2_reg[7] 
       (.C(CLK),
        .CE(\count2[0]_i_1_n_0 ),
        .D(\count2_reg[4]_i_1_n_4 ),
        .Q(count2_reg[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count2_reg[8] 
       (.C(CLK),
        .CE(\count2[0]_i_1_n_0 ),
        .D(\count2_reg[8]_i_1_n_7 ),
        .Q(count2_reg[8]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count2_reg[8]_i_1 
       (.CI(\count2_reg[4]_i_1_n_0 ),
        .CO({\count2_reg[8]_i_1_n_0 ,\NLW_count2_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count2_reg[8]_i_1_n_4 ,\count2_reg[8]_i_1_n_5 ,\count2_reg[8]_i_1_n_6 ,\count2_reg[8]_i_1_n_7 }),
        .S({\count2[8]_i_2_n_0 ,\count2[8]_i_3_n_0 ,\count2[8]_i_4_n_0 ,\count2[8]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count2_reg[9] 
       (.C(CLK),
        .CE(\count2[0]_i_1_n_0 ),
        .D(\count2_reg[8]_i_1_n_6 ),
        .Q(count2_reg[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h11110001)) 
    \count3[0]_i_1 
       (.I0(sel0),
        .I1(sel0__0[33]),
        .I2(\count3[0]_i_3_n_0 ),
        .I3(\count3[0]_i_4_n_0 ),
        .I4(sel0__0[32]),
        .O(count30));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \count3[0]_i_10 
       (.I0(sel0__0__0[26]),
        .I1(sel0__0__0[27]),
        .I2(sel0__0__0[24]),
        .I3(sel0__0__0[25]),
        .O(\count3[0]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \count3[0]_i_11 
       (.I0(sel0__0__0[21]),
        .I1(sel0__0__0[20]),
        .I2(sel0__0__0[23]),
        .I3(sel0__0__0[22]),
        .I4(\count3[0]_i_14_n_0 ),
        .O(\count3[0]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \count3[0]_i_12 
       (.I0(sel0__0__0[10]),
        .I1(sel0__0__0[11]),
        .I2(sel0__0__0[8]),
        .I3(sel0__0__0[9]),
        .O(\count3[0]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \count3[0]_i_13 
       (.I0(sel0__0__0[5]),
        .I1(sel0__0__0[0]),
        .I2(sel0__0__0[7]),
        .I3(sel0__0__0[1]),
        .I4(\count3[0]_i_15_n_0 ),
        .O(\count3[0]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \count3[0]_i_14 
       (.I0(sel0__0__0[18]),
        .I1(sel0__0__0[19]),
        .I2(sel0__0__0[16]),
        .I3(sel0__0__0[17]),
        .O(\count3[0]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hDFFF)) 
    \count3[0]_i_15 
       (.I0(sel0__0__0[6]),
        .I1(sel0__0__0[3]),
        .I2(sel0__0__0[4]),
        .I3(sel0__0__0[2]),
        .O(\count3[0]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \count3[0]_i_3 
       (.I0(\count3[0]_i_10_n_0 ),
        .I1(sel0__0__0[31]),
        .I2(sel0__0__0[30]),
        .I3(sel0__0__0[28]),
        .I4(sel0__0__0[29]),
        .I5(\count3[0]_i_11_n_0 ),
        .O(\count3[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \count3[0]_i_4 
       (.I0(\count3[0]_i_12_n_0 ),
        .I1(sel0__0__0[14]),
        .I2(sel0__0__0[15]),
        .I3(sel0__0__0[12]),
        .I4(sel0__0__0[13]),
        .I5(\count3[0]_i_13_n_0 ),
        .O(\count3[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count3[0]_i_5 
       (.I0(sel0__0[32]),
        .I1(sel0__0__0[0]),
        .O(\count3[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count3[0]_i_6 
       (.I0(sel0__0[32]),
        .I1(sel0__0__0[3]),
        .O(\count3[0]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count3[0]_i_7 
       (.I0(sel0__0[32]),
        .I1(sel0__0__0[2]),
        .O(\count3[0]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count3[0]_i_8 
       (.I0(sel0__0[32]),
        .I1(sel0__0__0[1]),
        .O(\count3[0]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h4)) 
    \count3[0]_i_9 
       (.I0(sel0__0__0[0]),
        .I1(sel0__0[32]),
        .O(\count3[0]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count3[12]_i_2 
       (.I0(sel0__0[32]),
        .I1(sel0__0__0[15]),
        .O(\count3[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count3[12]_i_3 
       (.I0(sel0__0[32]),
        .I1(sel0__0__0[14]),
        .O(\count3[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count3[12]_i_4 
       (.I0(sel0__0[32]),
        .I1(sel0__0__0[13]),
        .O(\count3[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count3[12]_i_5 
       (.I0(sel0__0[32]),
        .I1(sel0__0__0[12]),
        .O(\count3[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count3[16]_i_2 
       (.I0(sel0__0[32]),
        .I1(sel0__0__0[19]),
        .O(\count3[16]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count3[16]_i_3 
       (.I0(sel0__0[32]),
        .I1(sel0__0__0[18]),
        .O(\count3[16]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count3[16]_i_4 
       (.I0(sel0__0[32]),
        .I1(sel0__0__0[17]),
        .O(\count3[16]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count3[16]_i_5 
       (.I0(sel0__0[32]),
        .I1(sel0__0__0[16]),
        .O(\count3[16]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count3[20]_i_2 
       (.I0(sel0__0[32]),
        .I1(sel0__0__0[23]),
        .O(\count3[20]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count3[20]_i_3 
       (.I0(sel0__0[32]),
        .I1(sel0__0__0[22]),
        .O(\count3[20]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count3[20]_i_4 
       (.I0(sel0__0[32]),
        .I1(sel0__0__0[21]),
        .O(\count3[20]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count3[20]_i_5 
       (.I0(sel0__0[32]),
        .I1(sel0__0__0[20]),
        .O(\count3[20]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count3[24]_i_2 
       (.I0(sel0__0[32]),
        .I1(sel0__0__0[27]),
        .O(\count3[24]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count3[24]_i_3 
       (.I0(sel0__0[32]),
        .I1(sel0__0__0[26]),
        .O(\count3[24]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count3[24]_i_4 
       (.I0(sel0__0[32]),
        .I1(sel0__0__0[25]),
        .O(\count3[24]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count3[24]_i_5 
       (.I0(sel0__0[32]),
        .I1(sel0__0__0[24]),
        .O(\count3[24]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count3[28]_i_2 
       (.I0(sel0__0[32]),
        .I1(sel0__0__0[31]),
        .O(\count3[28]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count3[28]_i_3 
       (.I0(sel0__0[32]),
        .I1(sel0__0__0[30]),
        .O(\count3[28]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count3[28]_i_4 
       (.I0(sel0__0[32]),
        .I1(sel0__0__0[29]),
        .O(\count3[28]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count3[28]_i_5 
       (.I0(sel0__0[32]),
        .I1(sel0__0__0[28]),
        .O(\count3[28]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count3[4]_i_2 
       (.I0(sel0__0[32]),
        .I1(sel0__0__0[7]),
        .O(\count3[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count3[4]_i_3 
       (.I0(sel0__0[32]),
        .I1(sel0__0__0[6]),
        .O(\count3[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count3[4]_i_4 
       (.I0(sel0__0[32]),
        .I1(sel0__0__0[5]),
        .O(\count3[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count3[4]_i_5 
       (.I0(sel0__0[32]),
        .I1(sel0__0__0[4]),
        .O(\count3[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count3[8]_i_2 
       (.I0(sel0__0[32]),
        .I1(sel0__0__0[11]),
        .O(\count3[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count3[8]_i_3 
       (.I0(sel0__0[32]),
        .I1(sel0__0__0[10]),
        .O(\count3[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count3[8]_i_4 
       (.I0(sel0__0[32]),
        .I1(sel0__0__0[9]),
        .O(\count3[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count3[8]_i_5 
       (.I0(sel0__0[32]),
        .I1(sel0__0__0[8]),
        .O(\count3[8]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count3_reg[0] 
       (.C(CLK),
        .CE(count30),
        .D(\count3_reg[0]_i_2_n_7 ),
        .Q(sel0__0__0[0]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count3_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\count3_reg[0]_i_2_n_0 ,\NLW_count3_reg[0]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\count3[0]_i_5_n_0 }),
        .O({\count3_reg[0]_i_2_n_4 ,\count3_reg[0]_i_2_n_5 ,\count3_reg[0]_i_2_n_6 ,\count3_reg[0]_i_2_n_7 }),
        .S({\count3[0]_i_6_n_0 ,\count3[0]_i_7_n_0 ,\count3[0]_i_8_n_0 ,\count3[0]_i_9_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count3_reg[10] 
       (.C(CLK),
        .CE(count30),
        .D(\count3_reg[8]_i_1_n_5 ),
        .Q(sel0__0__0[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count3_reg[11] 
       (.C(CLK),
        .CE(count30),
        .D(\count3_reg[8]_i_1_n_4 ),
        .Q(sel0__0__0[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count3_reg[12] 
       (.C(CLK),
        .CE(count30),
        .D(\count3_reg[12]_i_1_n_7 ),
        .Q(sel0__0__0[12]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count3_reg[12]_i_1 
       (.CI(\count3_reg[8]_i_1_n_0 ),
        .CO({\count3_reg[12]_i_1_n_0 ,\NLW_count3_reg[12]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count3_reg[12]_i_1_n_4 ,\count3_reg[12]_i_1_n_5 ,\count3_reg[12]_i_1_n_6 ,\count3_reg[12]_i_1_n_7 }),
        .S({\count3[12]_i_2_n_0 ,\count3[12]_i_3_n_0 ,\count3[12]_i_4_n_0 ,\count3[12]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count3_reg[13] 
       (.C(CLK),
        .CE(count30),
        .D(\count3_reg[12]_i_1_n_6 ),
        .Q(sel0__0__0[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count3_reg[14] 
       (.C(CLK),
        .CE(count30),
        .D(\count3_reg[12]_i_1_n_5 ),
        .Q(sel0__0__0[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count3_reg[15] 
       (.C(CLK),
        .CE(count30),
        .D(\count3_reg[12]_i_1_n_4 ),
        .Q(sel0__0__0[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count3_reg[16] 
       (.C(CLK),
        .CE(count30),
        .D(\count3_reg[16]_i_1_n_7 ),
        .Q(sel0__0__0[16]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count3_reg[16]_i_1 
       (.CI(\count3_reg[12]_i_1_n_0 ),
        .CO({\count3_reg[16]_i_1_n_0 ,\NLW_count3_reg[16]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count3_reg[16]_i_1_n_4 ,\count3_reg[16]_i_1_n_5 ,\count3_reg[16]_i_1_n_6 ,\count3_reg[16]_i_1_n_7 }),
        .S({\count3[16]_i_2_n_0 ,\count3[16]_i_3_n_0 ,\count3[16]_i_4_n_0 ,\count3[16]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count3_reg[17] 
       (.C(CLK),
        .CE(count30),
        .D(\count3_reg[16]_i_1_n_6 ),
        .Q(sel0__0__0[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count3_reg[18] 
       (.C(CLK),
        .CE(count30),
        .D(\count3_reg[16]_i_1_n_5 ),
        .Q(sel0__0__0[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count3_reg[19] 
       (.C(CLK),
        .CE(count30),
        .D(\count3_reg[16]_i_1_n_4 ),
        .Q(sel0__0__0[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count3_reg[1] 
       (.C(CLK),
        .CE(count30),
        .D(\count3_reg[0]_i_2_n_6 ),
        .Q(sel0__0__0[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count3_reg[20] 
       (.C(CLK),
        .CE(count30),
        .D(\count3_reg[20]_i_1_n_7 ),
        .Q(sel0__0__0[20]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count3_reg[20]_i_1 
       (.CI(\count3_reg[16]_i_1_n_0 ),
        .CO({\count3_reg[20]_i_1_n_0 ,\NLW_count3_reg[20]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count3_reg[20]_i_1_n_4 ,\count3_reg[20]_i_1_n_5 ,\count3_reg[20]_i_1_n_6 ,\count3_reg[20]_i_1_n_7 }),
        .S({\count3[20]_i_2_n_0 ,\count3[20]_i_3_n_0 ,\count3[20]_i_4_n_0 ,\count3[20]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count3_reg[21] 
       (.C(CLK),
        .CE(count30),
        .D(\count3_reg[20]_i_1_n_6 ),
        .Q(sel0__0__0[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count3_reg[22] 
       (.C(CLK),
        .CE(count30),
        .D(\count3_reg[20]_i_1_n_5 ),
        .Q(sel0__0__0[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count3_reg[23] 
       (.C(CLK),
        .CE(count30),
        .D(\count3_reg[20]_i_1_n_4 ),
        .Q(sel0__0__0[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count3_reg[24] 
       (.C(CLK),
        .CE(count30),
        .D(\count3_reg[24]_i_1_n_7 ),
        .Q(sel0__0__0[24]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count3_reg[24]_i_1 
       (.CI(\count3_reg[20]_i_1_n_0 ),
        .CO({\count3_reg[24]_i_1_n_0 ,\NLW_count3_reg[24]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count3_reg[24]_i_1_n_4 ,\count3_reg[24]_i_1_n_5 ,\count3_reg[24]_i_1_n_6 ,\count3_reg[24]_i_1_n_7 }),
        .S({\count3[24]_i_2_n_0 ,\count3[24]_i_3_n_0 ,\count3[24]_i_4_n_0 ,\count3[24]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count3_reg[25] 
       (.C(CLK),
        .CE(count30),
        .D(\count3_reg[24]_i_1_n_6 ),
        .Q(sel0__0__0[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count3_reg[26] 
       (.C(CLK),
        .CE(count30),
        .D(\count3_reg[24]_i_1_n_5 ),
        .Q(sel0__0__0[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count3_reg[27] 
       (.C(CLK),
        .CE(count30),
        .D(\count3_reg[24]_i_1_n_4 ),
        .Q(sel0__0__0[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count3_reg[28] 
       (.C(CLK),
        .CE(count30),
        .D(\count3_reg[28]_i_1_n_7 ),
        .Q(sel0__0__0[28]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count3_reg[28]_i_1 
       (.CI(\count3_reg[24]_i_1_n_0 ),
        .CO(\NLW_count3_reg[28]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count3_reg[28]_i_1_n_4 ,\count3_reg[28]_i_1_n_5 ,\count3_reg[28]_i_1_n_6 ,\count3_reg[28]_i_1_n_7 }),
        .S({\count3[28]_i_2_n_0 ,\count3[28]_i_3_n_0 ,\count3[28]_i_4_n_0 ,\count3[28]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count3_reg[29] 
       (.C(CLK),
        .CE(count30),
        .D(\count3_reg[28]_i_1_n_6 ),
        .Q(sel0__0__0[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count3_reg[2] 
       (.C(CLK),
        .CE(count30),
        .D(\count3_reg[0]_i_2_n_5 ),
        .Q(sel0__0__0[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count3_reg[30] 
       (.C(CLK),
        .CE(count30),
        .D(\count3_reg[28]_i_1_n_5 ),
        .Q(sel0__0__0[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count3_reg[31] 
       (.C(CLK),
        .CE(count30),
        .D(\count3_reg[28]_i_1_n_4 ),
        .Q(sel0__0__0[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count3_reg[3] 
       (.C(CLK),
        .CE(count30),
        .D(\count3_reg[0]_i_2_n_4 ),
        .Q(sel0__0__0[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count3_reg[4] 
       (.C(CLK),
        .CE(count30),
        .D(\count3_reg[4]_i_1_n_7 ),
        .Q(sel0__0__0[4]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count3_reg[4]_i_1 
       (.CI(\count3_reg[0]_i_2_n_0 ),
        .CO({\count3_reg[4]_i_1_n_0 ,\NLW_count3_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count3_reg[4]_i_1_n_4 ,\count3_reg[4]_i_1_n_5 ,\count3_reg[4]_i_1_n_6 ,\count3_reg[4]_i_1_n_7 }),
        .S({\count3[4]_i_2_n_0 ,\count3[4]_i_3_n_0 ,\count3[4]_i_4_n_0 ,\count3[4]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count3_reg[5] 
       (.C(CLK),
        .CE(count30),
        .D(\count3_reg[4]_i_1_n_6 ),
        .Q(sel0__0__0[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count3_reg[6] 
       (.C(CLK),
        .CE(count30),
        .D(\count3_reg[4]_i_1_n_5 ),
        .Q(sel0__0__0[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count3_reg[7] 
       (.C(CLK),
        .CE(count30),
        .D(\count3_reg[4]_i_1_n_4 ),
        .Q(sel0__0__0[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count3_reg[8] 
       (.C(CLK),
        .CE(count30),
        .D(\count3_reg[8]_i_1_n_7 ),
        .Q(sel0__0__0[8]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count3_reg[8]_i_1 
       (.CI(\count3_reg[4]_i_1_n_0 ),
        .CO({\count3_reg[8]_i_1_n_0 ,\NLW_count3_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count3_reg[8]_i_1_n_4 ,\count3_reg[8]_i_1_n_5 ,\count3_reg[8]_i_1_n_6 ,\count3_reg[8]_i_1_n_7 }),
        .S({\count3[8]_i_2_n_0 ,\count3[8]_i_3_n_0 ,\count3[8]_i_4_n_0 ,\count3[8]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count3_reg[9] 
       (.C(CLK),
        .CE(count30),
        .D(\count3_reg[8]_i_1_n_6 ),
        .Q(sel0__0__0[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    cout_reg
       (.C(CLK),
        .CE(1'b1),
        .D(d),
        .Q(cout),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000010)) 
    d_i_1
       (.I0(d_i_2_n_0),
        .I1(d_i_3_n_0),
        .I2(sel0__0__0[4]),
        .I3(sel0),
        .I4(sel0__0[33]),
        .I5(d),
        .O(d_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    d_i_2
       (.I0(d_i_4_n_0),
        .I1(sel0__0__0[31]),
        .I2(sel0__0[32]),
        .I3(sel0__0__0[29]),
        .I4(sel0__0__0[30]),
        .I5(d_i_5_n_0),
        .O(d_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    d_i_3
       (.I0(d_i_6_n_0),
        .I1(sel0__0__0[15]),
        .I2(sel0__0__0[16]),
        .I3(sel0__0__0[13]),
        .I4(sel0__0__0[14]),
        .I5(d_i_7_n_0),
        .O(d_i_3_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    d_i_4
       (.I0(sel0__0__0[27]),
        .I1(sel0__0__0[28]),
        .I2(sel0__0__0[25]),
        .I3(sel0__0__0[26]),
        .O(d_i_4_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    d_i_5
       (.I0(sel0__0__0[22]),
        .I1(sel0__0__0[21]),
        .I2(sel0__0__0[24]),
        .I3(sel0__0__0[23]),
        .I4(d_i_8_n_0),
        .O(d_i_5_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    d_i_6
       (.I0(sel0__0__0[11]),
        .I1(sel0__0__0[12]),
        .I2(sel0__0__0[9]),
        .I3(sel0__0__0[10]),
        .O(d_i_6_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    d_i_7
       (.I0(sel0__0__0[1]),
        .I1(sel0__0__0[5]),
        .I2(sel0__0__0[8]),
        .I3(sel0__0__0[7]),
        .I4(d_i_9_n_0),
        .O(d_i_7_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    d_i_8
       (.I0(sel0__0__0[19]),
        .I1(sel0__0__0[20]),
        .I2(sel0__0__0[17]),
        .I3(sel0__0__0[18]),
        .O(d_i_8_n_0));
  LUT4 #(
    .INIT(16'hEFFF)) 
    d_i_9
       (.I0(sel0__0__0[3]),
        .I1(sel0__0__0[0]),
        .I2(sel0__0__0[2]),
        .I3(sel0__0__0[6]),
        .O(d_i_9_n_0));
  FDRE #(
    .INIT(1'b0)) 
    d_reg
       (.C(CLK),
        .CE(1'b1),
        .D(d_i_1_n_0),
        .Q(d),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "clock_divider" *) 
module clock_divider__parameterized0
   (CLK,
    \count3_reg[0]_0 );
  output CLK;
  input \count3_reg[0]_0 ;

  wire CLK;
  wire \count0[0]_i_1__0_n_0 ;
  wire \count0[31]_i_1__1_n_0 ;
  wire \count0[31]_i_3__1_n_0 ;
  wire \count0[31]_i_4__1_n_0 ;
  wire \count0[31]_i_5__1_n_0 ;
  wire \count0[31]_i_6__1_n_0 ;
  wire \count0[31]_i_7__1_n_0 ;
  wire \count0[31]_i_8__1_n_0 ;
  wire \count0_reg[12]_i_1__1_n_0 ;
  wire \count0_reg[12]_i_1__1_n_4 ;
  wire \count0_reg[12]_i_1__1_n_5 ;
  wire \count0_reg[12]_i_1__1_n_6 ;
  wire \count0_reg[12]_i_1__1_n_7 ;
  wire \count0_reg[16]_i_1__1_n_0 ;
  wire \count0_reg[16]_i_1__1_n_4 ;
  wire \count0_reg[16]_i_1__1_n_5 ;
  wire \count0_reg[16]_i_1__1_n_6 ;
  wire \count0_reg[16]_i_1__1_n_7 ;
  wire \count0_reg[20]_i_1__1_n_0 ;
  wire \count0_reg[20]_i_1__1_n_4 ;
  wire \count0_reg[20]_i_1__1_n_5 ;
  wire \count0_reg[20]_i_1__1_n_6 ;
  wire \count0_reg[20]_i_1__1_n_7 ;
  wire \count0_reg[24]_i_1__1_n_0 ;
  wire \count0_reg[24]_i_1__1_n_4 ;
  wire \count0_reg[24]_i_1__1_n_5 ;
  wire \count0_reg[24]_i_1__1_n_6 ;
  wire \count0_reg[24]_i_1__1_n_7 ;
  wire \count0_reg[28]_i_1__1_n_0 ;
  wire \count0_reg[28]_i_1__1_n_4 ;
  wire \count0_reg[28]_i_1__1_n_5 ;
  wire \count0_reg[28]_i_1__1_n_6 ;
  wire \count0_reg[28]_i_1__1_n_7 ;
  wire \count0_reg[31]_i_2__1_n_5 ;
  wire \count0_reg[31]_i_2__1_n_6 ;
  wire \count0_reg[31]_i_2__1_n_7 ;
  wire \count0_reg[4]_i_1__1_n_0 ;
  wire \count0_reg[4]_i_1__1_n_4 ;
  wire \count0_reg[4]_i_1__1_n_5 ;
  wire \count0_reg[4]_i_1__1_n_6 ;
  wire \count0_reg[4]_i_1__1_n_7 ;
  wire \count0_reg[8]_i_1__1_n_0 ;
  wire \count0_reg[8]_i_1__1_n_4 ;
  wire \count0_reg[8]_i_1__1_n_5 ;
  wire \count0_reg[8]_i_1__1_n_6 ;
  wire \count0_reg[8]_i_1__1_n_7 ;
  wire \count0_reg_n_0_[0] ;
  wire \count0_reg_n_0_[10] ;
  wire \count0_reg_n_0_[11] ;
  wire \count0_reg_n_0_[12] ;
  wire \count0_reg_n_0_[13] ;
  wire \count0_reg_n_0_[14] ;
  wire \count0_reg_n_0_[15] ;
  wire \count0_reg_n_0_[16] ;
  wire \count0_reg_n_0_[17] ;
  wire \count0_reg_n_0_[18] ;
  wire \count0_reg_n_0_[19] ;
  wire \count0_reg_n_0_[1] ;
  wire \count0_reg_n_0_[20] ;
  wire \count0_reg_n_0_[21] ;
  wire \count0_reg_n_0_[22] ;
  wire \count0_reg_n_0_[23] ;
  wire \count0_reg_n_0_[24] ;
  wire \count0_reg_n_0_[25] ;
  wire \count0_reg_n_0_[26] ;
  wire \count0_reg_n_0_[27] ;
  wire \count0_reg_n_0_[28] ;
  wire \count0_reg_n_0_[29] ;
  wire \count0_reg_n_0_[2] ;
  wire \count0_reg_n_0_[30] ;
  wire \count0_reg_n_0_[31] ;
  wire \count0_reg_n_0_[3] ;
  wire \count0_reg_n_0_[4] ;
  wire \count0_reg_n_0_[5] ;
  wire \count0_reg_n_0_[6] ;
  wire \count0_reg_n_0_[7] ;
  wire \count0_reg_n_0_[8] ;
  wire \count0_reg_n_0_[9] ;
  wire \count1[0]_i_10__1_n_0 ;
  wire \count1[0]_i_11__1_n_0 ;
  wire \count1[0]_i_12__1_n_0 ;
  wire \count1[0]_i_13__1_n_0 ;
  wire \count1[0]_i_14__1_n_0 ;
  wire \count1[0]_i_1__0_n_0 ;
  wire \count1[0]_i_3__1_n_0 ;
  wire \count1[0]_i_4__1_n_0 ;
  wire \count1[0]_i_5__1_n_0 ;
  wire \count1[0]_i_6__1_n_0 ;
  wire \count1[0]_i_7__1_n_0 ;
  wire \count1[0]_i_8__1_n_0 ;
  wire \count1[0]_i_9__1_n_0 ;
  wire \count1[12]_i_2__1_n_0 ;
  wire \count1[12]_i_3__1_n_0 ;
  wire \count1[12]_i_4__1_n_0 ;
  wire \count1[12]_i_5__1_n_0 ;
  wire \count1[16]_i_2__1_n_0 ;
  wire \count1[16]_i_3__1_n_0 ;
  wire \count1[16]_i_4__1_n_0 ;
  wire \count1[16]_i_5__1_n_0 ;
  wire \count1[20]_i_2__1_n_0 ;
  wire \count1[20]_i_3__1_n_0 ;
  wire \count1[20]_i_4__1_n_0 ;
  wire \count1[20]_i_5__1_n_0 ;
  wire \count1[24]_i_2__1_n_0 ;
  wire \count1[24]_i_3__1_n_0 ;
  wire \count1[24]_i_4__1_n_0 ;
  wire \count1[24]_i_5__1_n_0 ;
  wire \count1[28]_i_2__1_n_0 ;
  wire \count1[28]_i_3__1_n_0 ;
  wire \count1[28]_i_4__1_n_0 ;
  wire \count1[28]_i_5__1_n_0 ;
  wire \count1[4]_i_2__1_n_0 ;
  wire \count1[4]_i_3__1_n_0 ;
  wire \count1[4]_i_4__1_n_0 ;
  wire \count1[4]_i_5__1_n_0 ;
  wire \count1[8]_i_2__1_n_0 ;
  wire \count1[8]_i_3__1_n_0 ;
  wire \count1[8]_i_4__1_n_0 ;
  wire \count1[8]_i_5__1_n_0 ;
  wire [31:0]count1_reg;
  wire \count1_reg[0]_i_2__1_n_0 ;
  wire \count1_reg[0]_i_2__1_n_4 ;
  wire \count1_reg[0]_i_2__1_n_5 ;
  wire \count1_reg[0]_i_2__1_n_6 ;
  wire \count1_reg[0]_i_2__1_n_7 ;
  wire \count1_reg[12]_i_1__1_n_0 ;
  wire \count1_reg[12]_i_1__1_n_4 ;
  wire \count1_reg[12]_i_1__1_n_5 ;
  wire \count1_reg[12]_i_1__1_n_6 ;
  wire \count1_reg[12]_i_1__1_n_7 ;
  wire \count1_reg[16]_i_1__1_n_0 ;
  wire \count1_reg[16]_i_1__1_n_4 ;
  wire \count1_reg[16]_i_1__1_n_5 ;
  wire \count1_reg[16]_i_1__1_n_6 ;
  wire \count1_reg[16]_i_1__1_n_7 ;
  wire \count1_reg[20]_i_1__1_n_0 ;
  wire \count1_reg[20]_i_1__1_n_4 ;
  wire \count1_reg[20]_i_1__1_n_5 ;
  wire \count1_reg[20]_i_1__1_n_6 ;
  wire \count1_reg[20]_i_1__1_n_7 ;
  wire \count1_reg[24]_i_1__1_n_0 ;
  wire \count1_reg[24]_i_1__1_n_4 ;
  wire \count1_reg[24]_i_1__1_n_5 ;
  wire \count1_reg[24]_i_1__1_n_6 ;
  wire \count1_reg[24]_i_1__1_n_7 ;
  wire \count1_reg[28]_i_1__1_n_4 ;
  wire \count1_reg[28]_i_1__1_n_5 ;
  wire \count1_reg[28]_i_1__1_n_6 ;
  wire \count1_reg[28]_i_1__1_n_7 ;
  wire \count1_reg[4]_i_1__1_n_0 ;
  wire \count1_reg[4]_i_1__1_n_4 ;
  wire \count1_reg[4]_i_1__1_n_5 ;
  wire \count1_reg[4]_i_1__1_n_6 ;
  wire \count1_reg[4]_i_1__1_n_7 ;
  wire \count1_reg[8]_i_1__1_n_0 ;
  wire \count1_reg[8]_i_1__1_n_4 ;
  wire \count1_reg[8]_i_1__1_n_5 ;
  wire \count1_reg[8]_i_1__1_n_6 ;
  wire \count1_reg[8]_i_1__1_n_7 ;
  wire \count2[0]_i_10__1_n_0 ;
  wire \count2[0]_i_11__1_n_0 ;
  wire \count2[0]_i_12__1_n_0 ;
  wire \count2[0]_i_13__1_n_0 ;
  wire \count2[0]_i_14__1_n_0 ;
  wire \count2[0]_i_1__0_n_0 ;
  wire \count2[0]_i_3__1_n_0 ;
  wire \count2[0]_i_4__1_n_0 ;
  wire \count2[0]_i_5__1_n_0 ;
  wire \count2[0]_i_6__1_n_0 ;
  wire \count2[0]_i_7__1_n_0 ;
  wire \count2[0]_i_8__1_n_0 ;
  wire \count2[0]_i_9__1_n_0 ;
  wire \count2[12]_i_2__1_n_0 ;
  wire \count2[12]_i_3__1_n_0 ;
  wire \count2[12]_i_4__1_n_0 ;
  wire \count2[12]_i_5__1_n_0 ;
  wire \count2[16]_i_2__1_n_0 ;
  wire \count2[16]_i_3__1_n_0 ;
  wire \count2[16]_i_4__1_n_0 ;
  wire \count2[16]_i_5__1_n_0 ;
  wire \count2[20]_i_2__1_n_0 ;
  wire \count2[20]_i_3__1_n_0 ;
  wire \count2[20]_i_4__1_n_0 ;
  wire \count2[20]_i_5__1_n_0 ;
  wire \count2[24]_i_2__1_n_0 ;
  wire \count2[24]_i_3__1_n_0 ;
  wire \count2[24]_i_4__1_n_0 ;
  wire \count2[24]_i_5__1_n_0 ;
  wire \count2[28]_i_2__1_n_0 ;
  wire \count2[28]_i_3__1_n_0 ;
  wire \count2[28]_i_4__1_n_0 ;
  wire \count2[28]_i_5__1_n_0 ;
  wire \count2[4]_i_2__1_n_0 ;
  wire \count2[4]_i_3__1_n_0 ;
  wire \count2[4]_i_4__1_n_0 ;
  wire \count2[4]_i_5__1_n_0 ;
  wire \count2[8]_i_2__1_n_0 ;
  wire \count2[8]_i_3__1_n_0 ;
  wire \count2[8]_i_4__1_n_0 ;
  wire \count2[8]_i_5__1_n_0 ;
  wire [31:0]count2_reg;
  wire \count2_reg[0]_i_2__1_n_0 ;
  wire \count2_reg[0]_i_2__1_n_4 ;
  wire \count2_reg[0]_i_2__1_n_5 ;
  wire \count2_reg[0]_i_2__1_n_6 ;
  wire \count2_reg[0]_i_2__1_n_7 ;
  wire \count2_reg[12]_i_1__1_n_0 ;
  wire \count2_reg[12]_i_1__1_n_4 ;
  wire \count2_reg[12]_i_1__1_n_5 ;
  wire \count2_reg[12]_i_1__1_n_6 ;
  wire \count2_reg[12]_i_1__1_n_7 ;
  wire \count2_reg[16]_i_1__1_n_0 ;
  wire \count2_reg[16]_i_1__1_n_4 ;
  wire \count2_reg[16]_i_1__1_n_5 ;
  wire \count2_reg[16]_i_1__1_n_6 ;
  wire \count2_reg[16]_i_1__1_n_7 ;
  wire \count2_reg[20]_i_1__1_n_0 ;
  wire \count2_reg[20]_i_1__1_n_4 ;
  wire \count2_reg[20]_i_1__1_n_5 ;
  wire \count2_reg[20]_i_1__1_n_6 ;
  wire \count2_reg[20]_i_1__1_n_7 ;
  wire \count2_reg[24]_i_1__1_n_0 ;
  wire \count2_reg[24]_i_1__1_n_4 ;
  wire \count2_reg[24]_i_1__1_n_5 ;
  wire \count2_reg[24]_i_1__1_n_6 ;
  wire \count2_reg[24]_i_1__1_n_7 ;
  wire \count2_reg[28]_i_1__1_n_4 ;
  wire \count2_reg[28]_i_1__1_n_5 ;
  wire \count2_reg[28]_i_1__1_n_6 ;
  wire \count2_reg[28]_i_1__1_n_7 ;
  wire \count2_reg[4]_i_1__1_n_0 ;
  wire \count2_reg[4]_i_1__1_n_4 ;
  wire \count2_reg[4]_i_1__1_n_5 ;
  wire \count2_reg[4]_i_1__1_n_6 ;
  wire \count2_reg[4]_i_1__1_n_7 ;
  wire \count2_reg[8]_i_1__1_n_0 ;
  wire \count2_reg[8]_i_1__1_n_4 ;
  wire \count2_reg[8]_i_1__1_n_5 ;
  wire \count2_reg[8]_i_1__1_n_6 ;
  wire \count2_reg[8]_i_1__1_n_7 ;
  wire \count3[0]_i_10__1_n_0 ;
  wire \count3[0]_i_11__1_n_0 ;
  wire \count3[0]_i_12__1_n_0 ;
  wire \count3[0]_i_13__1_n_0 ;
  wire \count3[0]_i_14__1_n_0 ;
  wire \count3[0]_i_15__1_n_0 ;
  wire \count3[0]_i_1__0_n_0 ;
  wire \count3[0]_i_3__1_n_0 ;
  wire \count3[0]_i_4__1_n_0 ;
  wire \count3[0]_i_5__1_n_0 ;
  wire \count3[0]_i_6__1_n_0 ;
  wire \count3[0]_i_7__1_n_0 ;
  wire \count3[0]_i_8__1_n_0 ;
  wire \count3[0]_i_9__1_n_0 ;
  wire \count3[12]_i_2__1_n_0 ;
  wire \count3[12]_i_3__1_n_0 ;
  wire \count3[12]_i_4__1_n_0 ;
  wire \count3[12]_i_5__1_n_0 ;
  wire \count3[16]_i_2__1_n_0 ;
  wire \count3[16]_i_3__1_n_0 ;
  wire \count3[16]_i_4__1_n_0 ;
  wire \count3[16]_i_5__1_n_0 ;
  wire \count3[20]_i_2__1_n_0 ;
  wire \count3[20]_i_3__1_n_0 ;
  wire \count3[20]_i_4__1_n_0 ;
  wire \count3[20]_i_5__1_n_0 ;
  wire \count3[24]_i_2__1_n_0 ;
  wire \count3[24]_i_3__1_n_0 ;
  wire \count3[24]_i_4__1_n_0 ;
  wire \count3[24]_i_5__1_n_0 ;
  wire \count3[28]_i_2__1_n_0 ;
  wire \count3[28]_i_3__1_n_0 ;
  wire \count3[28]_i_4__1_n_0 ;
  wire \count3[28]_i_5__1_n_0 ;
  wire \count3[4]_i_2__1_n_0 ;
  wire \count3[4]_i_3__1_n_0 ;
  wire \count3[4]_i_4__1_n_0 ;
  wire \count3[4]_i_5__1_n_0 ;
  wire \count3[8]_i_2__1_n_0 ;
  wire \count3[8]_i_3__1_n_0 ;
  wire \count3[8]_i_4__1_n_0 ;
  wire \count3[8]_i_5__1_n_0 ;
  wire \count3_reg[0]_0 ;
  wire \count3_reg[0]_i_2__1_n_0 ;
  wire \count3_reg[0]_i_2__1_n_4 ;
  wire \count3_reg[0]_i_2__1_n_5 ;
  wire \count3_reg[0]_i_2__1_n_6 ;
  wire \count3_reg[0]_i_2__1_n_7 ;
  wire \count3_reg[12]_i_1__1_n_0 ;
  wire \count3_reg[12]_i_1__1_n_4 ;
  wire \count3_reg[12]_i_1__1_n_5 ;
  wire \count3_reg[12]_i_1__1_n_6 ;
  wire \count3_reg[12]_i_1__1_n_7 ;
  wire \count3_reg[16]_i_1__1_n_0 ;
  wire \count3_reg[16]_i_1__1_n_4 ;
  wire \count3_reg[16]_i_1__1_n_5 ;
  wire \count3_reg[16]_i_1__1_n_6 ;
  wire \count3_reg[16]_i_1__1_n_7 ;
  wire \count3_reg[20]_i_1__1_n_0 ;
  wire \count3_reg[20]_i_1__1_n_4 ;
  wire \count3_reg[20]_i_1__1_n_5 ;
  wire \count3_reg[20]_i_1__1_n_6 ;
  wire \count3_reg[20]_i_1__1_n_7 ;
  wire \count3_reg[24]_i_1__1_n_0 ;
  wire \count3_reg[24]_i_1__1_n_4 ;
  wire \count3_reg[24]_i_1__1_n_5 ;
  wire \count3_reg[24]_i_1__1_n_6 ;
  wire \count3_reg[24]_i_1__1_n_7 ;
  wire \count3_reg[28]_i_1__1_n_4 ;
  wire \count3_reg[28]_i_1__1_n_5 ;
  wire \count3_reg[28]_i_1__1_n_6 ;
  wire \count3_reg[28]_i_1__1_n_7 ;
  wire \count3_reg[4]_i_1__1_n_0 ;
  wire \count3_reg[4]_i_1__1_n_4 ;
  wire \count3_reg[4]_i_1__1_n_5 ;
  wire \count3_reg[4]_i_1__1_n_6 ;
  wire \count3_reg[4]_i_1__1_n_7 ;
  wire \count3_reg[8]_i_1__1_n_0 ;
  wire \count3_reg[8]_i_1__1_n_4 ;
  wire \count3_reg[8]_i_1__1_n_5 ;
  wire \count3_reg[8]_i_1__1_n_6 ;
  wire \count3_reg[8]_i_1__1_n_7 ;
  wire d_i_1__0_n_0;
  wire d_i_2__1_n_0;
  wire d_i_3__1_n_0;
  wire d_i_4__1_n_0;
  wire d_i_5__1_n_0;
  wire d_i_6__1_n_0;
  wire d_i_7__1_n_0;
  wire d_i_8__1_n_0;
  wire d_i_9__1_n_0;
  wire d_reg_n_0;
  wire [31:0]sel0__1;
  wire [2:0]\NLW_count0_reg[12]_i_1__1_CO_UNCONNECTED ;
  wire [2:0]\NLW_count0_reg[16]_i_1__1_CO_UNCONNECTED ;
  wire [2:0]\NLW_count0_reg[20]_i_1__1_CO_UNCONNECTED ;
  wire [2:0]\NLW_count0_reg[24]_i_1__1_CO_UNCONNECTED ;
  wire [2:0]\NLW_count0_reg[28]_i_1__1_CO_UNCONNECTED ;
  wire [3:0]\NLW_count0_reg[31]_i_2__1_CO_UNCONNECTED ;
  wire [3:3]\NLW_count0_reg[31]_i_2__1_O_UNCONNECTED ;
  wire [2:0]\NLW_count0_reg[4]_i_1__1_CO_UNCONNECTED ;
  wire [2:0]\NLW_count0_reg[8]_i_1__1_CO_UNCONNECTED ;
  wire [2:0]\NLW_count1_reg[0]_i_2__1_CO_UNCONNECTED ;
  wire [2:0]\NLW_count1_reg[12]_i_1__1_CO_UNCONNECTED ;
  wire [2:0]\NLW_count1_reg[16]_i_1__1_CO_UNCONNECTED ;
  wire [2:0]\NLW_count1_reg[20]_i_1__1_CO_UNCONNECTED ;
  wire [2:0]\NLW_count1_reg[24]_i_1__1_CO_UNCONNECTED ;
  wire [3:0]\NLW_count1_reg[28]_i_1__1_CO_UNCONNECTED ;
  wire [2:0]\NLW_count1_reg[4]_i_1__1_CO_UNCONNECTED ;
  wire [2:0]\NLW_count1_reg[8]_i_1__1_CO_UNCONNECTED ;
  wire [2:0]\NLW_count2_reg[0]_i_2__1_CO_UNCONNECTED ;
  wire [2:0]\NLW_count2_reg[12]_i_1__1_CO_UNCONNECTED ;
  wire [2:0]\NLW_count2_reg[16]_i_1__1_CO_UNCONNECTED ;
  wire [2:0]\NLW_count2_reg[20]_i_1__1_CO_UNCONNECTED ;
  wire [2:0]\NLW_count2_reg[24]_i_1__1_CO_UNCONNECTED ;
  wire [3:0]\NLW_count2_reg[28]_i_1__1_CO_UNCONNECTED ;
  wire [2:0]\NLW_count2_reg[4]_i_1__1_CO_UNCONNECTED ;
  wire [2:0]\NLW_count2_reg[8]_i_1__1_CO_UNCONNECTED ;
  wire [2:0]\NLW_count3_reg[0]_i_2__1_CO_UNCONNECTED ;
  wire [2:0]\NLW_count3_reg[12]_i_1__1_CO_UNCONNECTED ;
  wire [2:0]\NLW_count3_reg[16]_i_1__1_CO_UNCONNECTED ;
  wire [2:0]\NLW_count3_reg[20]_i_1__1_CO_UNCONNECTED ;
  wire [2:0]\NLW_count3_reg[24]_i_1__1_CO_UNCONNECTED ;
  wire [3:0]\NLW_count3_reg[28]_i_1__1_CO_UNCONNECTED ;
  wire [2:0]\NLW_count3_reg[4]_i_1__1_CO_UNCONNECTED ;
  wire [2:0]\NLW_count3_reg[8]_i_1__1_CO_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \count0[0]_i_1__0 
       (.I0(\count0_reg_n_0_[0] ),
        .O(\count0[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \count0[31]_i_1__1 
       (.I0(\count0[31]_i_3__1_n_0 ),
        .I1(\count0[31]_i_4__1_n_0 ),
        .I2(\count0[31]_i_5__1_n_0 ),
        .I3(\count0[31]_i_6__1_n_0 ),
        .I4(\count0[31]_i_7__1_n_0 ),
        .I5(\count0[31]_i_8__1_n_0 ),
        .O(\count0[31]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \count0[31]_i_3__1 
       (.I0(\count0_reg_n_0_[24] ),
        .I1(\count0_reg_n_0_[25] ),
        .I2(\count0_reg_n_0_[26] ),
        .I3(\count0_reg_n_0_[27] ),
        .I4(\count0_reg_n_0_[28] ),
        .I5(\count0_reg_n_0_[29] ),
        .O(\count0[31]_i_3__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \count0[31]_i_4__1 
       (.I0(\count0_reg_n_0_[6] ),
        .I1(\count0_reg_n_0_[7] ),
        .I2(\count0_reg_n_0_[8] ),
        .I3(\count0_reg_n_0_[9] ),
        .I4(\count0_reg_n_0_[10] ),
        .I5(\count0_reg_n_0_[11] ),
        .O(\count0[31]_i_4__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \count0[31]_i_5__1 
       (.I0(\count0_reg_n_0_[18] ),
        .I1(\count0_reg_n_0_[19] ),
        .I2(\count0_reg_n_0_[20] ),
        .I3(\count0_reg_n_0_[21] ),
        .I4(\count0_reg_n_0_[22] ),
        .I5(\count0_reg_n_0_[23] ),
        .O(\count0[31]_i_5__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \count0[31]_i_6__1 
       (.I0(\count0_reg_n_0_[12] ),
        .I1(\count0_reg_n_0_[13] ),
        .I2(\count0_reg_n_0_[14] ),
        .I3(\count0_reg_n_0_[15] ),
        .I4(\count0_reg_n_0_[16] ),
        .I5(\count0_reg_n_0_[17] ),
        .O(\count0[31]_i_6__1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \count0[31]_i_7__1 
       (.I0(\count0_reg_n_0_[30] ),
        .I1(\count0_reg_n_0_[31] ),
        .O(\count0[31]_i_7__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFBFFFF)) 
    \count0[31]_i_8__1 
       (.I0(\count0_reg_n_0_[0] ),
        .I1(\count0_reg_n_0_[2] ),
        .I2(\count0_reg_n_0_[1] ),
        .I3(\count0_reg_n_0_[3] ),
        .I4(\count0_reg_n_0_[4] ),
        .I5(\count0_reg_n_0_[5] ),
        .O(\count0[31]_i_8__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count0_reg[0] 
       (.C(\count3_reg[0]_0 ),
        .CE(1'b1),
        .D(\count0[0]_i_1__0_n_0 ),
        .Q(\count0_reg_n_0_[0] ),
        .R(\count0[31]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count0_reg[10] 
       (.C(\count3_reg[0]_0 ),
        .CE(1'b1),
        .D(\count0_reg[12]_i_1__1_n_6 ),
        .Q(\count0_reg_n_0_[10] ),
        .R(\count0[31]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count0_reg[11] 
       (.C(\count3_reg[0]_0 ),
        .CE(1'b1),
        .D(\count0_reg[12]_i_1__1_n_5 ),
        .Q(\count0_reg_n_0_[11] ),
        .R(\count0[31]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count0_reg[12] 
       (.C(\count3_reg[0]_0 ),
        .CE(1'b1),
        .D(\count0_reg[12]_i_1__1_n_4 ),
        .Q(\count0_reg_n_0_[12] ),
        .R(\count0[31]_i_1__1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \count0_reg[12]_i_1__1 
       (.CI(\count0_reg[8]_i_1__1_n_0 ),
        .CO({\count0_reg[12]_i_1__1_n_0 ,\NLW_count0_reg[12]_i_1__1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count0_reg[12]_i_1__1_n_4 ,\count0_reg[12]_i_1__1_n_5 ,\count0_reg[12]_i_1__1_n_6 ,\count0_reg[12]_i_1__1_n_7 }),
        .S({\count0_reg_n_0_[12] ,\count0_reg_n_0_[11] ,\count0_reg_n_0_[10] ,\count0_reg_n_0_[9] }));
  FDRE #(
    .INIT(1'b0)) 
    \count0_reg[13] 
       (.C(\count3_reg[0]_0 ),
        .CE(1'b1),
        .D(\count0_reg[16]_i_1__1_n_7 ),
        .Q(\count0_reg_n_0_[13] ),
        .R(\count0[31]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count0_reg[14] 
       (.C(\count3_reg[0]_0 ),
        .CE(1'b1),
        .D(\count0_reg[16]_i_1__1_n_6 ),
        .Q(\count0_reg_n_0_[14] ),
        .R(\count0[31]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count0_reg[15] 
       (.C(\count3_reg[0]_0 ),
        .CE(1'b1),
        .D(\count0_reg[16]_i_1__1_n_5 ),
        .Q(\count0_reg_n_0_[15] ),
        .R(\count0[31]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count0_reg[16] 
       (.C(\count3_reg[0]_0 ),
        .CE(1'b1),
        .D(\count0_reg[16]_i_1__1_n_4 ),
        .Q(\count0_reg_n_0_[16] ),
        .R(\count0[31]_i_1__1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \count0_reg[16]_i_1__1 
       (.CI(\count0_reg[12]_i_1__1_n_0 ),
        .CO({\count0_reg[16]_i_1__1_n_0 ,\NLW_count0_reg[16]_i_1__1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count0_reg[16]_i_1__1_n_4 ,\count0_reg[16]_i_1__1_n_5 ,\count0_reg[16]_i_1__1_n_6 ,\count0_reg[16]_i_1__1_n_7 }),
        .S({\count0_reg_n_0_[16] ,\count0_reg_n_0_[15] ,\count0_reg_n_0_[14] ,\count0_reg_n_0_[13] }));
  FDRE #(
    .INIT(1'b0)) 
    \count0_reg[17] 
       (.C(\count3_reg[0]_0 ),
        .CE(1'b1),
        .D(\count0_reg[20]_i_1__1_n_7 ),
        .Q(\count0_reg_n_0_[17] ),
        .R(\count0[31]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count0_reg[18] 
       (.C(\count3_reg[0]_0 ),
        .CE(1'b1),
        .D(\count0_reg[20]_i_1__1_n_6 ),
        .Q(\count0_reg_n_0_[18] ),
        .R(\count0[31]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count0_reg[19] 
       (.C(\count3_reg[0]_0 ),
        .CE(1'b1),
        .D(\count0_reg[20]_i_1__1_n_5 ),
        .Q(\count0_reg_n_0_[19] ),
        .R(\count0[31]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count0_reg[1] 
       (.C(\count3_reg[0]_0 ),
        .CE(1'b1),
        .D(\count0_reg[4]_i_1__1_n_7 ),
        .Q(\count0_reg_n_0_[1] ),
        .R(\count0[31]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count0_reg[20] 
       (.C(\count3_reg[0]_0 ),
        .CE(1'b1),
        .D(\count0_reg[20]_i_1__1_n_4 ),
        .Q(\count0_reg_n_0_[20] ),
        .R(\count0[31]_i_1__1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \count0_reg[20]_i_1__1 
       (.CI(\count0_reg[16]_i_1__1_n_0 ),
        .CO({\count0_reg[20]_i_1__1_n_0 ,\NLW_count0_reg[20]_i_1__1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count0_reg[20]_i_1__1_n_4 ,\count0_reg[20]_i_1__1_n_5 ,\count0_reg[20]_i_1__1_n_6 ,\count0_reg[20]_i_1__1_n_7 }),
        .S({\count0_reg_n_0_[20] ,\count0_reg_n_0_[19] ,\count0_reg_n_0_[18] ,\count0_reg_n_0_[17] }));
  FDRE #(
    .INIT(1'b0)) 
    \count0_reg[21] 
       (.C(\count3_reg[0]_0 ),
        .CE(1'b1),
        .D(\count0_reg[24]_i_1__1_n_7 ),
        .Q(\count0_reg_n_0_[21] ),
        .R(\count0[31]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count0_reg[22] 
       (.C(\count3_reg[0]_0 ),
        .CE(1'b1),
        .D(\count0_reg[24]_i_1__1_n_6 ),
        .Q(\count0_reg_n_0_[22] ),
        .R(\count0[31]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count0_reg[23] 
       (.C(\count3_reg[0]_0 ),
        .CE(1'b1),
        .D(\count0_reg[24]_i_1__1_n_5 ),
        .Q(\count0_reg_n_0_[23] ),
        .R(\count0[31]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count0_reg[24] 
       (.C(\count3_reg[0]_0 ),
        .CE(1'b1),
        .D(\count0_reg[24]_i_1__1_n_4 ),
        .Q(\count0_reg_n_0_[24] ),
        .R(\count0[31]_i_1__1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \count0_reg[24]_i_1__1 
       (.CI(\count0_reg[20]_i_1__1_n_0 ),
        .CO({\count0_reg[24]_i_1__1_n_0 ,\NLW_count0_reg[24]_i_1__1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count0_reg[24]_i_1__1_n_4 ,\count0_reg[24]_i_1__1_n_5 ,\count0_reg[24]_i_1__1_n_6 ,\count0_reg[24]_i_1__1_n_7 }),
        .S({\count0_reg_n_0_[24] ,\count0_reg_n_0_[23] ,\count0_reg_n_0_[22] ,\count0_reg_n_0_[21] }));
  FDRE #(
    .INIT(1'b0)) 
    \count0_reg[25] 
       (.C(\count3_reg[0]_0 ),
        .CE(1'b1),
        .D(\count0_reg[28]_i_1__1_n_7 ),
        .Q(\count0_reg_n_0_[25] ),
        .R(\count0[31]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count0_reg[26] 
       (.C(\count3_reg[0]_0 ),
        .CE(1'b1),
        .D(\count0_reg[28]_i_1__1_n_6 ),
        .Q(\count0_reg_n_0_[26] ),
        .R(\count0[31]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count0_reg[27] 
       (.C(\count3_reg[0]_0 ),
        .CE(1'b1),
        .D(\count0_reg[28]_i_1__1_n_5 ),
        .Q(\count0_reg_n_0_[27] ),
        .R(\count0[31]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count0_reg[28] 
       (.C(\count3_reg[0]_0 ),
        .CE(1'b1),
        .D(\count0_reg[28]_i_1__1_n_4 ),
        .Q(\count0_reg_n_0_[28] ),
        .R(\count0[31]_i_1__1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \count0_reg[28]_i_1__1 
       (.CI(\count0_reg[24]_i_1__1_n_0 ),
        .CO({\count0_reg[28]_i_1__1_n_0 ,\NLW_count0_reg[28]_i_1__1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count0_reg[28]_i_1__1_n_4 ,\count0_reg[28]_i_1__1_n_5 ,\count0_reg[28]_i_1__1_n_6 ,\count0_reg[28]_i_1__1_n_7 }),
        .S({\count0_reg_n_0_[28] ,\count0_reg_n_0_[27] ,\count0_reg_n_0_[26] ,\count0_reg_n_0_[25] }));
  FDRE #(
    .INIT(1'b0)) 
    \count0_reg[29] 
       (.C(\count3_reg[0]_0 ),
        .CE(1'b1),
        .D(\count0_reg[31]_i_2__1_n_7 ),
        .Q(\count0_reg_n_0_[29] ),
        .R(\count0[31]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count0_reg[2] 
       (.C(\count3_reg[0]_0 ),
        .CE(1'b1),
        .D(\count0_reg[4]_i_1__1_n_6 ),
        .Q(\count0_reg_n_0_[2] ),
        .R(\count0[31]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count0_reg[30] 
       (.C(\count3_reg[0]_0 ),
        .CE(1'b1),
        .D(\count0_reg[31]_i_2__1_n_6 ),
        .Q(\count0_reg_n_0_[30] ),
        .R(\count0[31]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count0_reg[31] 
       (.C(\count3_reg[0]_0 ),
        .CE(1'b1),
        .D(\count0_reg[31]_i_2__1_n_5 ),
        .Q(\count0_reg_n_0_[31] ),
        .R(\count0[31]_i_1__1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \count0_reg[31]_i_2__1 
       (.CI(\count0_reg[28]_i_1__1_n_0 ),
        .CO(\NLW_count0_reg[31]_i_2__1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_count0_reg[31]_i_2__1_O_UNCONNECTED [3],\count0_reg[31]_i_2__1_n_5 ,\count0_reg[31]_i_2__1_n_6 ,\count0_reg[31]_i_2__1_n_7 }),
        .S({1'b0,\count0_reg_n_0_[31] ,\count0_reg_n_0_[30] ,\count0_reg_n_0_[29] }));
  FDRE #(
    .INIT(1'b0)) 
    \count0_reg[3] 
       (.C(\count3_reg[0]_0 ),
        .CE(1'b1),
        .D(\count0_reg[4]_i_1__1_n_5 ),
        .Q(\count0_reg_n_0_[3] ),
        .R(\count0[31]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count0_reg[4] 
       (.C(\count3_reg[0]_0 ),
        .CE(1'b1),
        .D(\count0_reg[4]_i_1__1_n_4 ),
        .Q(\count0_reg_n_0_[4] ),
        .R(\count0[31]_i_1__1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \count0_reg[4]_i_1__1 
       (.CI(1'b0),
        .CO({\count0_reg[4]_i_1__1_n_0 ,\NLW_count0_reg[4]_i_1__1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\count0_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count0_reg[4]_i_1__1_n_4 ,\count0_reg[4]_i_1__1_n_5 ,\count0_reg[4]_i_1__1_n_6 ,\count0_reg[4]_i_1__1_n_7 }),
        .S({\count0_reg_n_0_[4] ,\count0_reg_n_0_[3] ,\count0_reg_n_0_[2] ,\count0_reg_n_0_[1] }));
  FDRE #(
    .INIT(1'b0)) 
    \count0_reg[5] 
       (.C(\count3_reg[0]_0 ),
        .CE(1'b1),
        .D(\count0_reg[8]_i_1__1_n_7 ),
        .Q(\count0_reg_n_0_[5] ),
        .R(\count0[31]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count0_reg[6] 
       (.C(\count3_reg[0]_0 ),
        .CE(1'b1),
        .D(\count0_reg[8]_i_1__1_n_6 ),
        .Q(\count0_reg_n_0_[6] ),
        .R(\count0[31]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count0_reg[7] 
       (.C(\count3_reg[0]_0 ),
        .CE(1'b1),
        .D(\count0_reg[8]_i_1__1_n_5 ),
        .Q(\count0_reg_n_0_[7] ),
        .R(\count0[31]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count0_reg[8] 
       (.C(\count3_reg[0]_0 ),
        .CE(1'b1),
        .D(\count0_reg[8]_i_1__1_n_4 ),
        .Q(\count0_reg_n_0_[8] ),
        .R(\count0[31]_i_1__1_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \count0_reg[8]_i_1__1 
       (.CI(\count0_reg[4]_i_1__1_n_0 ),
        .CO({\count0_reg[8]_i_1__1_n_0 ,\NLW_count0_reg[8]_i_1__1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count0_reg[8]_i_1__1_n_4 ,\count0_reg[8]_i_1__1_n_5 ,\count0_reg[8]_i_1__1_n_6 ,\count0_reg[8]_i_1__1_n_7 }),
        .S({\count0_reg_n_0_[8] ,\count0_reg_n_0_[7] ,\count0_reg_n_0_[6] ,\count0_reg_n_0_[5] }));
  FDRE #(
    .INIT(1'b0)) 
    \count0_reg[9] 
       (.C(\count3_reg[0]_0 ),
        .CE(1'b1),
        .D(\count0_reg[12]_i_1__1_n_7 ),
        .Q(\count0_reg_n_0_[9] ),
        .R(\count0[31]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \count1[0]_i_10__1 
       (.I0(count1_reg[6]),
        .I1(count1_reg[7]),
        .I2(count1_reg[8]),
        .I3(count1_reg[9]),
        .I4(count1_reg[10]),
        .I5(count1_reg[11]),
        .O(\count1[0]_i_10__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \count1[0]_i_11__1 
       (.I0(count1_reg[18]),
        .I1(count1_reg[19]),
        .I2(count1_reg[20]),
        .I3(count1_reg[21]),
        .I4(count1_reg[22]),
        .I5(count1_reg[23]),
        .O(\count1[0]_i_11__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \count1[0]_i_12__1 
       (.I0(count1_reg[12]),
        .I1(count1_reg[13]),
        .I2(count1_reg[14]),
        .I3(count1_reg[15]),
        .I4(count1_reg[16]),
        .I5(count1_reg[17]),
        .O(\count1[0]_i_12__1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \count1[0]_i_13__1 
       (.I0(count1_reg[30]),
        .I1(count1_reg[31]),
        .O(\count1[0]_i_13__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFBFFFF)) 
    \count1[0]_i_14__1 
       (.I0(count1_reg[0]),
        .I1(count1_reg[2]),
        .I2(count1_reg[1]),
        .I3(count1_reg[3]),
        .I4(count1_reg[4]),
        .I5(count1_reg[5]),
        .O(\count1[0]_i_14__1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \count1[0]_i_1__0 
       (.I0(\count0[31]_i_1__1_n_0 ),
        .I1(\count1[0]_i_3__1_n_0 ),
        .O(\count1[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \count1[0]_i_3__1 
       (.I0(\count1[0]_i_9__1_n_0 ),
        .I1(\count1[0]_i_10__1_n_0 ),
        .I2(\count1[0]_i_11__1_n_0 ),
        .I3(\count1[0]_i_12__1_n_0 ),
        .I4(\count1[0]_i_13__1_n_0 ),
        .I5(\count1[0]_i_14__1_n_0 ),
        .O(\count1[0]_i_3__1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count1[0]_i_4__1 
       (.I0(\count0[31]_i_1__1_n_0 ),
        .I1(count1_reg[0]),
        .O(\count1[0]_i_4__1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count1[0]_i_5__1 
       (.I0(\count0[31]_i_1__1_n_0 ),
        .I1(count1_reg[3]),
        .O(\count1[0]_i_5__1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count1[0]_i_6__1 
       (.I0(\count0[31]_i_1__1_n_0 ),
        .I1(count1_reg[2]),
        .O(\count1[0]_i_6__1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count1[0]_i_7__1 
       (.I0(\count0[31]_i_1__1_n_0 ),
        .I1(count1_reg[1]),
        .O(\count1[0]_i_7__1_n_0 ));
  LUT2 #(
    .INIT(4'h4)) 
    \count1[0]_i_8__1 
       (.I0(count1_reg[0]),
        .I1(\count0[31]_i_1__1_n_0 ),
        .O(\count1[0]_i_8__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \count1[0]_i_9__1 
       (.I0(count1_reg[24]),
        .I1(count1_reg[25]),
        .I2(count1_reg[26]),
        .I3(count1_reg[27]),
        .I4(count1_reg[28]),
        .I5(count1_reg[29]),
        .O(\count1[0]_i_9__1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count1[12]_i_2__1 
       (.I0(\count0[31]_i_1__1_n_0 ),
        .I1(count1_reg[15]),
        .O(\count1[12]_i_2__1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count1[12]_i_3__1 
       (.I0(\count0[31]_i_1__1_n_0 ),
        .I1(count1_reg[14]),
        .O(\count1[12]_i_3__1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count1[12]_i_4__1 
       (.I0(\count0[31]_i_1__1_n_0 ),
        .I1(count1_reg[13]),
        .O(\count1[12]_i_4__1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count1[12]_i_5__1 
       (.I0(\count0[31]_i_1__1_n_0 ),
        .I1(count1_reg[12]),
        .O(\count1[12]_i_5__1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count1[16]_i_2__1 
       (.I0(\count0[31]_i_1__1_n_0 ),
        .I1(count1_reg[19]),
        .O(\count1[16]_i_2__1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count1[16]_i_3__1 
       (.I0(\count0[31]_i_1__1_n_0 ),
        .I1(count1_reg[18]),
        .O(\count1[16]_i_3__1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count1[16]_i_4__1 
       (.I0(\count0[31]_i_1__1_n_0 ),
        .I1(count1_reg[17]),
        .O(\count1[16]_i_4__1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count1[16]_i_5__1 
       (.I0(\count0[31]_i_1__1_n_0 ),
        .I1(count1_reg[16]),
        .O(\count1[16]_i_5__1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count1[20]_i_2__1 
       (.I0(\count0[31]_i_1__1_n_0 ),
        .I1(count1_reg[23]),
        .O(\count1[20]_i_2__1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count1[20]_i_3__1 
       (.I0(\count0[31]_i_1__1_n_0 ),
        .I1(count1_reg[22]),
        .O(\count1[20]_i_3__1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count1[20]_i_4__1 
       (.I0(\count0[31]_i_1__1_n_0 ),
        .I1(count1_reg[21]),
        .O(\count1[20]_i_4__1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count1[20]_i_5__1 
       (.I0(\count0[31]_i_1__1_n_0 ),
        .I1(count1_reg[20]),
        .O(\count1[20]_i_5__1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count1[24]_i_2__1 
       (.I0(\count0[31]_i_1__1_n_0 ),
        .I1(count1_reg[27]),
        .O(\count1[24]_i_2__1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count1[24]_i_3__1 
       (.I0(\count0[31]_i_1__1_n_0 ),
        .I1(count1_reg[26]),
        .O(\count1[24]_i_3__1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count1[24]_i_4__1 
       (.I0(\count0[31]_i_1__1_n_0 ),
        .I1(count1_reg[25]),
        .O(\count1[24]_i_4__1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count1[24]_i_5__1 
       (.I0(\count0[31]_i_1__1_n_0 ),
        .I1(count1_reg[24]),
        .O(\count1[24]_i_5__1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count1[28]_i_2__1 
       (.I0(\count0[31]_i_1__1_n_0 ),
        .I1(count1_reg[31]),
        .O(\count1[28]_i_2__1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count1[28]_i_3__1 
       (.I0(\count0[31]_i_1__1_n_0 ),
        .I1(count1_reg[30]),
        .O(\count1[28]_i_3__1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count1[28]_i_4__1 
       (.I0(\count0[31]_i_1__1_n_0 ),
        .I1(count1_reg[29]),
        .O(\count1[28]_i_4__1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count1[28]_i_5__1 
       (.I0(\count0[31]_i_1__1_n_0 ),
        .I1(count1_reg[28]),
        .O(\count1[28]_i_5__1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count1[4]_i_2__1 
       (.I0(\count0[31]_i_1__1_n_0 ),
        .I1(count1_reg[7]),
        .O(\count1[4]_i_2__1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count1[4]_i_3__1 
       (.I0(\count0[31]_i_1__1_n_0 ),
        .I1(count1_reg[6]),
        .O(\count1[4]_i_3__1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count1[4]_i_4__1 
       (.I0(\count0[31]_i_1__1_n_0 ),
        .I1(count1_reg[5]),
        .O(\count1[4]_i_4__1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count1[4]_i_5__1 
       (.I0(\count0[31]_i_1__1_n_0 ),
        .I1(count1_reg[4]),
        .O(\count1[4]_i_5__1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count1[8]_i_2__1 
       (.I0(\count0[31]_i_1__1_n_0 ),
        .I1(count1_reg[11]),
        .O(\count1[8]_i_2__1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count1[8]_i_3__1 
       (.I0(\count0[31]_i_1__1_n_0 ),
        .I1(count1_reg[10]),
        .O(\count1[8]_i_3__1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count1[8]_i_4__1 
       (.I0(\count0[31]_i_1__1_n_0 ),
        .I1(count1_reg[9]),
        .O(\count1[8]_i_4__1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count1[8]_i_5__1 
       (.I0(\count0[31]_i_1__1_n_0 ),
        .I1(count1_reg[8]),
        .O(\count1[8]_i_5__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[0] 
       (.C(\count3_reg[0]_0 ),
        .CE(\count1[0]_i_1__0_n_0 ),
        .D(\count1_reg[0]_i_2__1_n_7 ),
        .Q(count1_reg[0]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count1_reg[0]_i_2__1 
       (.CI(1'b0),
        .CO({\count1_reg[0]_i_2__1_n_0 ,\NLW_count1_reg[0]_i_2__1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\count1[0]_i_4__1_n_0 }),
        .O({\count1_reg[0]_i_2__1_n_4 ,\count1_reg[0]_i_2__1_n_5 ,\count1_reg[0]_i_2__1_n_6 ,\count1_reg[0]_i_2__1_n_7 }),
        .S({\count1[0]_i_5__1_n_0 ,\count1[0]_i_6__1_n_0 ,\count1[0]_i_7__1_n_0 ,\count1[0]_i_8__1_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[10] 
       (.C(\count3_reg[0]_0 ),
        .CE(\count1[0]_i_1__0_n_0 ),
        .D(\count1_reg[8]_i_1__1_n_5 ),
        .Q(count1_reg[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[11] 
       (.C(\count3_reg[0]_0 ),
        .CE(\count1[0]_i_1__0_n_0 ),
        .D(\count1_reg[8]_i_1__1_n_4 ),
        .Q(count1_reg[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[12] 
       (.C(\count3_reg[0]_0 ),
        .CE(\count1[0]_i_1__0_n_0 ),
        .D(\count1_reg[12]_i_1__1_n_7 ),
        .Q(count1_reg[12]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count1_reg[12]_i_1__1 
       (.CI(\count1_reg[8]_i_1__1_n_0 ),
        .CO({\count1_reg[12]_i_1__1_n_0 ,\NLW_count1_reg[12]_i_1__1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count1_reg[12]_i_1__1_n_4 ,\count1_reg[12]_i_1__1_n_5 ,\count1_reg[12]_i_1__1_n_6 ,\count1_reg[12]_i_1__1_n_7 }),
        .S({\count1[12]_i_2__1_n_0 ,\count1[12]_i_3__1_n_0 ,\count1[12]_i_4__1_n_0 ,\count1[12]_i_5__1_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[13] 
       (.C(\count3_reg[0]_0 ),
        .CE(\count1[0]_i_1__0_n_0 ),
        .D(\count1_reg[12]_i_1__1_n_6 ),
        .Q(count1_reg[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[14] 
       (.C(\count3_reg[0]_0 ),
        .CE(\count1[0]_i_1__0_n_0 ),
        .D(\count1_reg[12]_i_1__1_n_5 ),
        .Q(count1_reg[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[15] 
       (.C(\count3_reg[0]_0 ),
        .CE(\count1[0]_i_1__0_n_0 ),
        .D(\count1_reg[12]_i_1__1_n_4 ),
        .Q(count1_reg[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[16] 
       (.C(\count3_reg[0]_0 ),
        .CE(\count1[0]_i_1__0_n_0 ),
        .D(\count1_reg[16]_i_1__1_n_7 ),
        .Q(count1_reg[16]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count1_reg[16]_i_1__1 
       (.CI(\count1_reg[12]_i_1__1_n_0 ),
        .CO({\count1_reg[16]_i_1__1_n_0 ,\NLW_count1_reg[16]_i_1__1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count1_reg[16]_i_1__1_n_4 ,\count1_reg[16]_i_1__1_n_5 ,\count1_reg[16]_i_1__1_n_6 ,\count1_reg[16]_i_1__1_n_7 }),
        .S({\count1[16]_i_2__1_n_0 ,\count1[16]_i_3__1_n_0 ,\count1[16]_i_4__1_n_0 ,\count1[16]_i_5__1_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[17] 
       (.C(\count3_reg[0]_0 ),
        .CE(\count1[0]_i_1__0_n_0 ),
        .D(\count1_reg[16]_i_1__1_n_6 ),
        .Q(count1_reg[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[18] 
       (.C(\count3_reg[0]_0 ),
        .CE(\count1[0]_i_1__0_n_0 ),
        .D(\count1_reg[16]_i_1__1_n_5 ),
        .Q(count1_reg[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[19] 
       (.C(\count3_reg[0]_0 ),
        .CE(\count1[0]_i_1__0_n_0 ),
        .D(\count1_reg[16]_i_1__1_n_4 ),
        .Q(count1_reg[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[1] 
       (.C(\count3_reg[0]_0 ),
        .CE(\count1[0]_i_1__0_n_0 ),
        .D(\count1_reg[0]_i_2__1_n_6 ),
        .Q(count1_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[20] 
       (.C(\count3_reg[0]_0 ),
        .CE(\count1[0]_i_1__0_n_0 ),
        .D(\count1_reg[20]_i_1__1_n_7 ),
        .Q(count1_reg[20]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count1_reg[20]_i_1__1 
       (.CI(\count1_reg[16]_i_1__1_n_0 ),
        .CO({\count1_reg[20]_i_1__1_n_0 ,\NLW_count1_reg[20]_i_1__1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count1_reg[20]_i_1__1_n_4 ,\count1_reg[20]_i_1__1_n_5 ,\count1_reg[20]_i_1__1_n_6 ,\count1_reg[20]_i_1__1_n_7 }),
        .S({\count1[20]_i_2__1_n_0 ,\count1[20]_i_3__1_n_0 ,\count1[20]_i_4__1_n_0 ,\count1[20]_i_5__1_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[21] 
       (.C(\count3_reg[0]_0 ),
        .CE(\count1[0]_i_1__0_n_0 ),
        .D(\count1_reg[20]_i_1__1_n_6 ),
        .Q(count1_reg[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[22] 
       (.C(\count3_reg[0]_0 ),
        .CE(\count1[0]_i_1__0_n_0 ),
        .D(\count1_reg[20]_i_1__1_n_5 ),
        .Q(count1_reg[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[23] 
       (.C(\count3_reg[0]_0 ),
        .CE(\count1[0]_i_1__0_n_0 ),
        .D(\count1_reg[20]_i_1__1_n_4 ),
        .Q(count1_reg[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[24] 
       (.C(\count3_reg[0]_0 ),
        .CE(\count1[0]_i_1__0_n_0 ),
        .D(\count1_reg[24]_i_1__1_n_7 ),
        .Q(count1_reg[24]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count1_reg[24]_i_1__1 
       (.CI(\count1_reg[20]_i_1__1_n_0 ),
        .CO({\count1_reg[24]_i_1__1_n_0 ,\NLW_count1_reg[24]_i_1__1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count1_reg[24]_i_1__1_n_4 ,\count1_reg[24]_i_1__1_n_5 ,\count1_reg[24]_i_1__1_n_6 ,\count1_reg[24]_i_1__1_n_7 }),
        .S({\count1[24]_i_2__1_n_0 ,\count1[24]_i_3__1_n_0 ,\count1[24]_i_4__1_n_0 ,\count1[24]_i_5__1_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[25] 
       (.C(\count3_reg[0]_0 ),
        .CE(\count1[0]_i_1__0_n_0 ),
        .D(\count1_reg[24]_i_1__1_n_6 ),
        .Q(count1_reg[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[26] 
       (.C(\count3_reg[0]_0 ),
        .CE(\count1[0]_i_1__0_n_0 ),
        .D(\count1_reg[24]_i_1__1_n_5 ),
        .Q(count1_reg[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[27] 
       (.C(\count3_reg[0]_0 ),
        .CE(\count1[0]_i_1__0_n_0 ),
        .D(\count1_reg[24]_i_1__1_n_4 ),
        .Q(count1_reg[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[28] 
       (.C(\count3_reg[0]_0 ),
        .CE(\count1[0]_i_1__0_n_0 ),
        .D(\count1_reg[28]_i_1__1_n_7 ),
        .Q(count1_reg[28]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count1_reg[28]_i_1__1 
       (.CI(\count1_reg[24]_i_1__1_n_0 ),
        .CO(\NLW_count1_reg[28]_i_1__1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count1_reg[28]_i_1__1_n_4 ,\count1_reg[28]_i_1__1_n_5 ,\count1_reg[28]_i_1__1_n_6 ,\count1_reg[28]_i_1__1_n_7 }),
        .S({\count1[28]_i_2__1_n_0 ,\count1[28]_i_3__1_n_0 ,\count1[28]_i_4__1_n_0 ,\count1[28]_i_5__1_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[29] 
       (.C(\count3_reg[0]_0 ),
        .CE(\count1[0]_i_1__0_n_0 ),
        .D(\count1_reg[28]_i_1__1_n_6 ),
        .Q(count1_reg[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[2] 
       (.C(\count3_reg[0]_0 ),
        .CE(\count1[0]_i_1__0_n_0 ),
        .D(\count1_reg[0]_i_2__1_n_5 ),
        .Q(count1_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[30] 
       (.C(\count3_reg[0]_0 ),
        .CE(\count1[0]_i_1__0_n_0 ),
        .D(\count1_reg[28]_i_1__1_n_5 ),
        .Q(count1_reg[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[31] 
       (.C(\count3_reg[0]_0 ),
        .CE(\count1[0]_i_1__0_n_0 ),
        .D(\count1_reg[28]_i_1__1_n_4 ),
        .Q(count1_reg[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[3] 
       (.C(\count3_reg[0]_0 ),
        .CE(\count1[0]_i_1__0_n_0 ),
        .D(\count1_reg[0]_i_2__1_n_4 ),
        .Q(count1_reg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[4] 
       (.C(\count3_reg[0]_0 ),
        .CE(\count1[0]_i_1__0_n_0 ),
        .D(\count1_reg[4]_i_1__1_n_7 ),
        .Q(count1_reg[4]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count1_reg[4]_i_1__1 
       (.CI(\count1_reg[0]_i_2__1_n_0 ),
        .CO({\count1_reg[4]_i_1__1_n_0 ,\NLW_count1_reg[4]_i_1__1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count1_reg[4]_i_1__1_n_4 ,\count1_reg[4]_i_1__1_n_5 ,\count1_reg[4]_i_1__1_n_6 ,\count1_reg[4]_i_1__1_n_7 }),
        .S({\count1[4]_i_2__1_n_0 ,\count1[4]_i_3__1_n_0 ,\count1[4]_i_4__1_n_0 ,\count1[4]_i_5__1_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[5] 
       (.C(\count3_reg[0]_0 ),
        .CE(\count1[0]_i_1__0_n_0 ),
        .D(\count1_reg[4]_i_1__1_n_6 ),
        .Q(count1_reg[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[6] 
       (.C(\count3_reg[0]_0 ),
        .CE(\count1[0]_i_1__0_n_0 ),
        .D(\count1_reg[4]_i_1__1_n_5 ),
        .Q(count1_reg[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[7] 
       (.C(\count3_reg[0]_0 ),
        .CE(\count1[0]_i_1__0_n_0 ),
        .D(\count1_reg[4]_i_1__1_n_4 ),
        .Q(count1_reg[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[8] 
       (.C(\count3_reg[0]_0 ),
        .CE(\count1[0]_i_1__0_n_0 ),
        .D(\count1_reg[8]_i_1__1_n_7 ),
        .Q(count1_reg[8]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count1_reg[8]_i_1__1 
       (.CI(\count1_reg[4]_i_1__1_n_0 ),
        .CO({\count1_reg[8]_i_1__1_n_0 ,\NLW_count1_reg[8]_i_1__1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count1_reg[8]_i_1__1_n_4 ,\count1_reg[8]_i_1__1_n_5 ,\count1_reg[8]_i_1__1_n_6 ,\count1_reg[8]_i_1__1_n_7 }),
        .S({\count1[8]_i_2__1_n_0 ,\count1[8]_i_3__1_n_0 ,\count1[8]_i_4__1_n_0 ,\count1[8]_i_5__1_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[9] 
       (.C(\count3_reg[0]_0 ),
        .CE(\count1[0]_i_1__0_n_0 ),
        .D(\count1_reg[8]_i_1__1_n_6 ),
        .Q(count1_reg[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \count2[0]_i_10__1 
       (.I0(count2_reg[6]),
        .I1(count2_reg[7]),
        .I2(count2_reg[8]),
        .I3(count2_reg[9]),
        .I4(count2_reg[10]),
        .I5(count2_reg[11]),
        .O(\count2[0]_i_10__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \count2[0]_i_11__1 
       (.I0(count2_reg[18]),
        .I1(count2_reg[19]),
        .I2(count2_reg[20]),
        .I3(count2_reg[21]),
        .I4(count2_reg[22]),
        .I5(count2_reg[23]),
        .O(\count2[0]_i_11__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \count2[0]_i_12__1 
       (.I0(count2_reg[12]),
        .I1(count2_reg[13]),
        .I2(count2_reg[14]),
        .I3(count2_reg[15]),
        .I4(count2_reg[16]),
        .I5(count2_reg[17]),
        .O(\count2[0]_i_12__1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \count2[0]_i_13__1 
       (.I0(count2_reg[30]),
        .I1(count2_reg[31]),
        .O(\count2[0]_i_13__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFBFFFF)) 
    \count2[0]_i_14__1 
       (.I0(count2_reg[0]),
        .I1(count2_reg[2]),
        .I2(count2_reg[1]),
        .I3(count2_reg[3]),
        .I4(count2_reg[4]),
        .I5(count2_reg[5]),
        .O(\count2[0]_i_14__1_n_0 ));
  LUT3 #(
    .INIT(8'h0E)) 
    \count2[0]_i_1__0 
       (.I0(\count2[0]_i_3__1_n_0 ),
        .I1(\count1[0]_i_3__1_n_0 ),
        .I2(\count0[31]_i_1__1_n_0 ),
        .O(\count2[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \count2[0]_i_3__1 
       (.I0(\count2[0]_i_9__1_n_0 ),
        .I1(\count2[0]_i_10__1_n_0 ),
        .I2(\count2[0]_i_11__1_n_0 ),
        .I3(\count2[0]_i_12__1_n_0 ),
        .I4(\count2[0]_i_13__1_n_0 ),
        .I5(\count2[0]_i_14__1_n_0 ),
        .O(\count2[0]_i_3__1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count2[0]_i_4__1 
       (.I0(\count1[0]_i_3__1_n_0 ),
        .I1(count2_reg[0]),
        .O(\count2[0]_i_4__1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count2[0]_i_5__1 
       (.I0(\count1[0]_i_3__1_n_0 ),
        .I1(count2_reg[3]),
        .O(\count2[0]_i_5__1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count2[0]_i_6__1 
       (.I0(\count1[0]_i_3__1_n_0 ),
        .I1(count2_reg[2]),
        .O(\count2[0]_i_6__1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count2[0]_i_7__1 
       (.I0(\count1[0]_i_3__1_n_0 ),
        .I1(count2_reg[1]),
        .O(\count2[0]_i_7__1_n_0 ));
  LUT2 #(
    .INIT(4'h4)) 
    \count2[0]_i_8__1 
       (.I0(count2_reg[0]),
        .I1(\count1[0]_i_3__1_n_0 ),
        .O(\count2[0]_i_8__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \count2[0]_i_9__1 
       (.I0(count2_reg[24]),
        .I1(count2_reg[25]),
        .I2(count2_reg[26]),
        .I3(count2_reg[27]),
        .I4(count2_reg[28]),
        .I5(count2_reg[29]),
        .O(\count2[0]_i_9__1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count2[12]_i_2__1 
       (.I0(\count1[0]_i_3__1_n_0 ),
        .I1(count2_reg[15]),
        .O(\count2[12]_i_2__1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count2[12]_i_3__1 
       (.I0(\count1[0]_i_3__1_n_0 ),
        .I1(count2_reg[14]),
        .O(\count2[12]_i_3__1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count2[12]_i_4__1 
       (.I0(\count1[0]_i_3__1_n_0 ),
        .I1(count2_reg[13]),
        .O(\count2[12]_i_4__1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count2[12]_i_5__1 
       (.I0(\count1[0]_i_3__1_n_0 ),
        .I1(count2_reg[12]),
        .O(\count2[12]_i_5__1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count2[16]_i_2__1 
       (.I0(\count1[0]_i_3__1_n_0 ),
        .I1(count2_reg[19]),
        .O(\count2[16]_i_2__1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count2[16]_i_3__1 
       (.I0(\count1[0]_i_3__1_n_0 ),
        .I1(count2_reg[18]),
        .O(\count2[16]_i_3__1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count2[16]_i_4__1 
       (.I0(\count1[0]_i_3__1_n_0 ),
        .I1(count2_reg[17]),
        .O(\count2[16]_i_4__1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count2[16]_i_5__1 
       (.I0(\count1[0]_i_3__1_n_0 ),
        .I1(count2_reg[16]),
        .O(\count2[16]_i_5__1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count2[20]_i_2__1 
       (.I0(\count1[0]_i_3__1_n_0 ),
        .I1(count2_reg[23]),
        .O(\count2[20]_i_2__1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count2[20]_i_3__1 
       (.I0(\count1[0]_i_3__1_n_0 ),
        .I1(count2_reg[22]),
        .O(\count2[20]_i_3__1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count2[20]_i_4__1 
       (.I0(\count1[0]_i_3__1_n_0 ),
        .I1(count2_reg[21]),
        .O(\count2[20]_i_4__1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count2[20]_i_5__1 
       (.I0(\count1[0]_i_3__1_n_0 ),
        .I1(count2_reg[20]),
        .O(\count2[20]_i_5__1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count2[24]_i_2__1 
       (.I0(\count1[0]_i_3__1_n_0 ),
        .I1(count2_reg[27]),
        .O(\count2[24]_i_2__1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count2[24]_i_3__1 
       (.I0(\count1[0]_i_3__1_n_0 ),
        .I1(count2_reg[26]),
        .O(\count2[24]_i_3__1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count2[24]_i_4__1 
       (.I0(\count1[0]_i_3__1_n_0 ),
        .I1(count2_reg[25]),
        .O(\count2[24]_i_4__1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count2[24]_i_5__1 
       (.I0(\count1[0]_i_3__1_n_0 ),
        .I1(count2_reg[24]),
        .O(\count2[24]_i_5__1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count2[28]_i_2__1 
       (.I0(\count1[0]_i_3__1_n_0 ),
        .I1(count2_reg[31]),
        .O(\count2[28]_i_2__1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count2[28]_i_3__1 
       (.I0(\count1[0]_i_3__1_n_0 ),
        .I1(count2_reg[30]),
        .O(\count2[28]_i_3__1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count2[28]_i_4__1 
       (.I0(\count1[0]_i_3__1_n_0 ),
        .I1(count2_reg[29]),
        .O(\count2[28]_i_4__1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count2[28]_i_5__1 
       (.I0(\count1[0]_i_3__1_n_0 ),
        .I1(count2_reg[28]),
        .O(\count2[28]_i_5__1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count2[4]_i_2__1 
       (.I0(\count1[0]_i_3__1_n_0 ),
        .I1(count2_reg[7]),
        .O(\count2[4]_i_2__1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count2[4]_i_3__1 
       (.I0(\count1[0]_i_3__1_n_0 ),
        .I1(count2_reg[6]),
        .O(\count2[4]_i_3__1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count2[4]_i_4__1 
       (.I0(\count1[0]_i_3__1_n_0 ),
        .I1(count2_reg[5]),
        .O(\count2[4]_i_4__1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count2[4]_i_5__1 
       (.I0(\count1[0]_i_3__1_n_0 ),
        .I1(count2_reg[4]),
        .O(\count2[4]_i_5__1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count2[8]_i_2__1 
       (.I0(\count1[0]_i_3__1_n_0 ),
        .I1(count2_reg[11]),
        .O(\count2[8]_i_2__1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count2[8]_i_3__1 
       (.I0(\count1[0]_i_3__1_n_0 ),
        .I1(count2_reg[10]),
        .O(\count2[8]_i_3__1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count2[8]_i_4__1 
       (.I0(\count1[0]_i_3__1_n_0 ),
        .I1(count2_reg[9]),
        .O(\count2[8]_i_4__1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count2[8]_i_5__1 
       (.I0(\count1[0]_i_3__1_n_0 ),
        .I1(count2_reg[8]),
        .O(\count2[8]_i_5__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count2_reg[0] 
       (.C(\count3_reg[0]_0 ),
        .CE(\count2[0]_i_1__0_n_0 ),
        .D(\count2_reg[0]_i_2__1_n_7 ),
        .Q(count2_reg[0]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count2_reg[0]_i_2__1 
       (.CI(1'b0),
        .CO({\count2_reg[0]_i_2__1_n_0 ,\NLW_count2_reg[0]_i_2__1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\count2[0]_i_4__1_n_0 }),
        .O({\count2_reg[0]_i_2__1_n_4 ,\count2_reg[0]_i_2__1_n_5 ,\count2_reg[0]_i_2__1_n_6 ,\count2_reg[0]_i_2__1_n_7 }),
        .S({\count2[0]_i_5__1_n_0 ,\count2[0]_i_6__1_n_0 ,\count2[0]_i_7__1_n_0 ,\count2[0]_i_8__1_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count2_reg[10] 
       (.C(\count3_reg[0]_0 ),
        .CE(\count2[0]_i_1__0_n_0 ),
        .D(\count2_reg[8]_i_1__1_n_5 ),
        .Q(count2_reg[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count2_reg[11] 
       (.C(\count3_reg[0]_0 ),
        .CE(\count2[0]_i_1__0_n_0 ),
        .D(\count2_reg[8]_i_1__1_n_4 ),
        .Q(count2_reg[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count2_reg[12] 
       (.C(\count3_reg[0]_0 ),
        .CE(\count2[0]_i_1__0_n_0 ),
        .D(\count2_reg[12]_i_1__1_n_7 ),
        .Q(count2_reg[12]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count2_reg[12]_i_1__1 
       (.CI(\count2_reg[8]_i_1__1_n_0 ),
        .CO({\count2_reg[12]_i_1__1_n_0 ,\NLW_count2_reg[12]_i_1__1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count2_reg[12]_i_1__1_n_4 ,\count2_reg[12]_i_1__1_n_5 ,\count2_reg[12]_i_1__1_n_6 ,\count2_reg[12]_i_1__1_n_7 }),
        .S({\count2[12]_i_2__1_n_0 ,\count2[12]_i_3__1_n_0 ,\count2[12]_i_4__1_n_0 ,\count2[12]_i_5__1_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count2_reg[13] 
       (.C(\count3_reg[0]_0 ),
        .CE(\count2[0]_i_1__0_n_0 ),
        .D(\count2_reg[12]_i_1__1_n_6 ),
        .Q(count2_reg[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count2_reg[14] 
       (.C(\count3_reg[0]_0 ),
        .CE(\count2[0]_i_1__0_n_0 ),
        .D(\count2_reg[12]_i_1__1_n_5 ),
        .Q(count2_reg[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count2_reg[15] 
       (.C(\count3_reg[0]_0 ),
        .CE(\count2[0]_i_1__0_n_0 ),
        .D(\count2_reg[12]_i_1__1_n_4 ),
        .Q(count2_reg[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count2_reg[16] 
       (.C(\count3_reg[0]_0 ),
        .CE(\count2[0]_i_1__0_n_0 ),
        .D(\count2_reg[16]_i_1__1_n_7 ),
        .Q(count2_reg[16]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count2_reg[16]_i_1__1 
       (.CI(\count2_reg[12]_i_1__1_n_0 ),
        .CO({\count2_reg[16]_i_1__1_n_0 ,\NLW_count2_reg[16]_i_1__1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count2_reg[16]_i_1__1_n_4 ,\count2_reg[16]_i_1__1_n_5 ,\count2_reg[16]_i_1__1_n_6 ,\count2_reg[16]_i_1__1_n_7 }),
        .S({\count2[16]_i_2__1_n_0 ,\count2[16]_i_3__1_n_0 ,\count2[16]_i_4__1_n_0 ,\count2[16]_i_5__1_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count2_reg[17] 
       (.C(\count3_reg[0]_0 ),
        .CE(\count2[0]_i_1__0_n_0 ),
        .D(\count2_reg[16]_i_1__1_n_6 ),
        .Q(count2_reg[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count2_reg[18] 
       (.C(\count3_reg[0]_0 ),
        .CE(\count2[0]_i_1__0_n_0 ),
        .D(\count2_reg[16]_i_1__1_n_5 ),
        .Q(count2_reg[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count2_reg[19] 
       (.C(\count3_reg[0]_0 ),
        .CE(\count2[0]_i_1__0_n_0 ),
        .D(\count2_reg[16]_i_1__1_n_4 ),
        .Q(count2_reg[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count2_reg[1] 
       (.C(\count3_reg[0]_0 ),
        .CE(\count2[0]_i_1__0_n_0 ),
        .D(\count2_reg[0]_i_2__1_n_6 ),
        .Q(count2_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count2_reg[20] 
       (.C(\count3_reg[0]_0 ),
        .CE(\count2[0]_i_1__0_n_0 ),
        .D(\count2_reg[20]_i_1__1_n_7 ),
        .Q(count2_reg[20]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count2_reg[20]_i_1__1 
       (.CI(\count2_reg[16]_i_1__1_n_0 ),
        .CO({\count2_reg[20]_i_1__1_n_0 ,\NLW_count2_reg[20]_i_1__1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count2_reg[20]_i_1__1_n_4 ,\count2_reg[20]_i_1__1_n_5 ,\count2_reg[20]_i_1__1_n_6 ,\count2_reg[20]_i_1__1_n_7 }),
        .S({\count2[20]_i_2__1_n_0 ,\count2[20]_i_3__1_n_0 ,\count2[20]_i_4__1_n_0 ,\count2[20]_i_5__1_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count2_reg[21] 
       (.C(\count3_reg[0]_0 ),
        .CE(\count2[0]_i_1__0_n_0 ),
        .D(\count2_reg[20]_i_1__1_n_6 ),
        .Q(count2_reg[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count2_reg[22] 
       (.C(\count3_reg[0]_0 ),
        .CE(\count2[0]_i_1__0_n_0 ),
        .D(\count2_reg[20]_i_1__1_n_5 ),
        .Q(count2_reg[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count2_reg[23] 
       (.C(\count3_reg[0]_0 ),
        .CE(\count2[0]_i_1__0_n_0 ),
        .D(\count2_reg[20]_i_1__1_n_4 ),
        .Q(count2_reg[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count2_reg[24] 
       (.C(\count3_reg[0]_0 ),
        .CE(\count2[0]_i_1__0_n_0 ),
        .D(\count2_reg[24]_i_1__1_n_7 ),
        .Q(count2_reg[24]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count2_reg[24]_i_1__1 
       (.CI(\count2_reg[20]_i_1__1_n_0 ),
        .CO({\count2_reg[24]_i_1__1_n_0 ,\NLW_count2_reg[24]_i_1__1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count2_reg[24]_i_1__1_n_4 ,\count2_reg[24]_i_1__1_n_5 ,\count2_reg[24]_i_1__1_n_6 ,\count2_reg[24]_i_1__1_n_7 }),
        .S({\count2[24]_i_2__1_n_0 ,\count2[24]_i_3__1_n_0 ,\count2[24]_i_4__1_n_0 ,\count2[24]_i_5__1_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count2_reg[25] 
       (.C(\count3_reg[0]_0 ),
        .CE(\count2[0]_i_1__0_n_0 ),
        .D(\count2_reg[24]_i_1__1_n_6 ),
        .Q(count2_reg[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count2_reg[26] 
       (.C(\count3_reg[0]_0 ),
        .CE(\count2[0]_i_1__0_n_0 ),
        .D(\count2_reg[24]_i_1__1_n_5 ),
        .Q(count2_reg[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count2_reg[27] 
       (.C(\count3_reg[0]_0 ),
        .CE(\count2[0]_i_1__0_n_0 ),
        .D(\count2_reg[24]_i_1__1_n_4 ),
        .Q(count2_reg[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count2_reg[28] 
       (.C(\count3_reg[0]_0 ),
        .CE(\count2[0]_i_1__0_n_0 ),
        .D(\count2_reg[28]_i_1__1_n_7 ),
        .Q(count2_reg[28]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count2_reg[28]_i_1__1 
       (.CI(\count2_reg[24]_i_1__1_n_0 ),
        .CO(\NLW_count2_reg[28]_i_1__1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count2_reg[28]_i_1__1_n_4 ,\count2_reg[28]_i_1__1_n_5 ,\count2_reg[28]_i_1__1_n_6 ,\count2_reg[28]_i_1__1_n_7 }),
        .S({\count2[28]_i_2__1_n_0 ,\count2[28]_i_3__1_n_0 ,\count2[28]_i_4__1_n_0 ,\count2[28]_i_5__1_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count2_reg[29] 
       (.C(\count3_reg[0]_0 ),
        .CE(\count2[0]_i_1__0_n_0 ),
        .D(\count2_reg[28]_i_1__1_n_6 ),
        .Q(count2_reg[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count2_reg[2] 
       (.C(\count3_reg[0]_0 ),
        .CE(\count2[0]_i_1__0_n_0 ),
        .D(\count2_reg[0]_i_2__1_n_5 ),
        .Q(count2_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count2_reg[30] 
       (.C(\count3_reg[0]_0 ),
        .CE(\count2[0]_i_1__0_n_0 ),
        .D(\count2_reg[28]_i_1__1_n_5 ),
        .Q(count2_reg[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count2_reg[31] 
       (.C(\count3_reg[0]_0 ),
        .CE(\count2[0]_i_1__0_n_0 ),
        .D(\count2_reg[28]_i_1__1_n_4 ),
        .Q(count2_reg[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count2_reg[3] 
       (.C(\count3_reg[0]_0 ),
        .CE(\count2[0]_i_1__0_n_0 ),
        .D(\count2_reg[0]_i_2__1_n_4 ),
        .Q(count2_reg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count2_reg[4] 
       (.C(\count3_reg[0]_0 ),
        .CE(\count2[0]_i_1__0_n_0 ),
        .D(\count2_reg[4]_i_1__1_n_7 ),
        .Q(count2_reg[4]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count2_reg[4]_i_1__1 
       (.CI(\count2_reg[0]_i_2__1_n_0 ),
        .CO({\count2_reg[4]_i_1__1_n_0 ,\NLW_count2_reg[4]_i_1__1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count2_reg[4]_i_1__1_n_4 ,\count2_reg[4]_i_1__1_n_5 ,\count2_reg[4]_i_1__1_n_6 ,\count2_reg[4]_i_1__1_n_7 }),
        .S({\count2[4]_i_2__1_n_0 ,\count2[4]_i_3__1_n_0 ,\count2[4]_i_4__1_n_0 ,\count2[4]_i_5__1_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count2_reg[5] 
       (.C(\count3_reg[0]_0 ),
        .CE(\count2[0]_i_1__0_n_0 ),
        .D(\count2_reg[4]_i_1__1_n_6 ),
        .Q(count2_reg[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count2_reg[6] 
       (.C(\count3_reg[0]_0 ),
        .CE(\count2[0]_i_1__0_n_0 ),
        .D(\count2_reg[4]_i_1__1_n_5 ),
        .Q(count2_reg[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count2_reg[7] 
       (.C(\count3_reg[0]_0 ),
        .CE(\count2[0]_i_1__0_n_0 ),
        .D(\count2_reg[4]_i_1__1_n_4 ),
        .Q(count2_reg[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count2_reg[8] 
       (.C(\count3_reg[0]_0 ),
        .CE(\count2[0]_i_1__0_n_0 ),
        .D(\count2_reg[8]_i_1__1_n_7 ),
        .Q(count2_reg[8]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count2_reg[8]_i_1__1 
       (.CI(\count2_reg[4]_i_1__1_n_0 ),
        .CO({\count2_reg[8]_i_1__1_n_0 ,\NLW_count2_reg[8]_i_1__1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count2_reg[8]_i_1__1_n_4 ,\count2_reg[8]_i_1__1_n_5 ,\count2_reg[8]_i_1__1_n_6 ,\count2_reg[8]_i_1__1_n_7 }),
        .S({\count2[8]_i_2__1_n_0 ,\count2[8]_i_3__1_n_0 ,\count2[8]_i_4__1_n_0 ,\count2[8]_i_5__1_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count2_reg[9] 
       (.C(\count3_reg[0]_0 ),
        .CE(\count2[0]_i_1__0_n_0 ),
        .D(\count2_reg[8]_i_1__1_n_6 ),
        .Q(count2_reg[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \count3[0]_i_10__1 
       (.I0(sel0__1[26]),
        .I1(sel0__1[27]),
        .I2(sel0__1[24]),
        .I3(sel0__1[25]),
        .O(\count3[0]_i_10__1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \count3[0]_i_11__1 
       (.I0(sel0__1[21]),
        .I1(sel0__1[20]),
        .I2(sel0__1[23]),
        .I3(sel0__1[22]),
        .I4(\count3[0]_i_14__1_n_0 ),
        .O(\count3[0]_i_11__1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \count3[0]_i_12__1 
       (.I0(sel0__1[10]),
        .I1(sel0__1[11]),
        .I2(sel0__1[8]),
        .I3(sel0__1[9]),
        .O(\count3[0]_i_12__1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \count3[0]_i_13__1 
       (.I0(sel0__1[5]),
        .I1(sel0__1[1]),
        .I2(sel0__1[7]),
        .I3(sel0__1[6]),
        .I4(\count3[0]_i_15__1_n_0 ),
        .O(\count3[0]_i_13__1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \count3[0]_i_14__1 
       (.I0(sel0__1[18]),
        .I1(sel0__1[19]),
        .I2(sel0__1[16]),
        .I3(sel0__1[17]),
        .O(\count3[0]_i_14__1_n_0 ));
  LUT4 #(
    .INIT(16'hEFFF)) 
    \count3[0]_i_15__1 
       (.I0(sel0__1[0]),
        .I1(sel0__1[3]),
        .I2(sel0__1[2]),
        .I3(sel0__1[4]),
        .O(\count3[0]_i_15__1_n_0 ));
  LUT5 #(
    .INIT(32'h11110001)) 
    \count3[0]_i_1__0 
       (.I0(\count0[31]_i_1__1_n_0 ),
        .I1(\count1[0]_i_3__1_n_0 ),
        .I2(\count3[0]_i_3__1_n_0 ),
        .I3(\count3[0]_i_4__1_n_0 ),
        .I4(\count2[0]_i_3__1_n_0 ),
        .O(\count3[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \count3[0]_i_3__1 
       (.I0(\count3[0]_i_10__1_n_0 ),
        .I1(sel0__1[31]),
        .I2(sel0__1[30]),
        .I3(sel0__1[28]),
        .I4(sel0__1[29]),
        .I5(\count3[0]_i_11__1_n_0 ),
        .O(\count3[0]_i_3__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \count3[0]_i_4__1 
       (.I0(\count3[0]_i_12__1_n_0 ),
        .I1(sel0__1[14]),
        .I2(sel0__1[15]),
        .I3(sel0__1[12]),
        .I4(sel0__1[13]),
        .I5(\count3[0]_i_13__1_n_0 ),
        .O(\count3[0]_i_4__1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count3[0]_i_5__1 
       (.I0(\count2[0]_i_3__1_n_0 ),
        .I1(sel0__1[0]),
        .O(\count3[0]_i_5__1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count3[0]_i_6__1 
       (.I0(\count2[0]_i_3__1_n_0 ),
        .I1(sel0__1[3]),
        .O(\count3[0]_i_6__1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count3[0]_i_7__1 
       (.I0(\count2[0]_i_3__1_n_0 ),
        .I1(sel0__1[2]),
        .O(\count3[0]_i_7__1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count3[0]_i_8__1 
       (.I0(\count2[0]_i_3__1_n_0 ),
        .I1(sel0__1[1]),
        .O(\count3[0]_i_8__1_n_0 ));
  LUT2 #(
    .INIT(4'h4)) 
    \count3[0]_i_9__1 
       (.I0(sel0__1[0]),
        .I1(\count2[0]_i_3__1_n_0 ),
        .O(\count3[0]_i_9__1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count3[12]_i_2__1 
       (.I0(\count2[0]_i_3__1_n_0 ),
        .I1(sel0__1[15]),
        .O(\count3[12]_i_2__1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count3[12]_i_3__1 
       (.I0(\count2[0]_i_3__1_n_0 ),
        .I1(sel0__1[14]),
        .O(\count3[12]_i_3__1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count3[12]_i_4__1 
       (.I0(\count2[0]_i_3__1_n_0 ),
        .I1(sel0__1[13]),
        .O(\count3[12]_i_4__1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count3[12]_i_5__1 
       (.I0(\count2[0]_i_3__1_n_0 ),
        .I1(sel0__1[12]),
        .O(\count3[12]_i_5__1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count3[16]_i_2__1 
       (.I0(\count2[0]_i_3__1_n_0 ),
        .I1(sel0__1[19]),
        .O(\count3[16]_i_2__1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count3[16]_i_3__1 
       (.I0(\count2[0]_i_3__1_n_0 ),
        .I1(sel0__1[18]),
        .O(\count3[16]_i_3__1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count3[16]_i_4__1 
       (.I0(\count2[0]_i_3__1_n_0 ),
        .I1(sel0__1[17]),
        .O(\count3[16]_i_4__1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count3[16]_i_5__1 
       (.I0(\count2[0]_i_3__1_n_0 ),
        .I1(sel0__1[16]),
        .O(\count3[16]_i_5__1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count3[20]_i_2__1 
       (.I0(\count2[0]_i_3__1_n_0 ),
        .I1(sel0__1[23]),
        .O(\count3[20]_i_2__1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count3[20]_i_3__1 
       (.I0(\count2[0]_i_3__1_n_0 ),
        .I1(sel0__1[22]),
        .O(\count3[20]_i_3__1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count3[20]_i_4__1 
       (.I0(\count2[0]_i_3__1_n_0 ),
        .I1(sel0__1[21]),
        .O(\count3[20]_i_4__1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count3[20]_i_5__1 
       (.I0(\count2[0]_i_3__1_n_0 ),
        .I1(sel0__1[20]),
        .O(\count3[20]_i_5__1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count3[24]_i_2__1 
       (.I0(\count2[0]_i_3__1_n_0 ),
        .I1(sel0__1[27]),
        .O(\count3[24]_i_2__1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count3[24]_i_3__1 
       (.I0(\count2[0]_i_3__1_n_0 ),
        .I1(sel0__1[26]),
        .O(\count3[24]_i_3__1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count3[24]_i_4__1 
       (.I0(\count2[0]_i_3__1_n_0 ),
        .I1(sel0__1[25]),
        .O(\count3[24]_i_4__1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count3[24]_i_5__1 
       (.I0(\count2[0]_i_3__1_n_0 ),
        .I1(sel0__1[24]),
        .O(\count3[24]_i_5__1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count3[28]_i_2__1 
       (.I0(\count2[0]_i_3__1_n_0 ),
        .I1(sel0__1[31]),
        .O(\count3[28]_i_2__1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count3[28]_i_3__1 
       (.I0(\count2[0]_i_3__1_n_0 ),
        .I1(sel0__1[30]),
        .O(\count3[28]_i_3__1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count3[28]_i_4__1 
       (.I0(\count2[0]_i_3__1_n_0 ),
        .I1(sel0__1[29]),
        .O(\count3[28]_i_4__1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count3[28]_i_5__1 
       (.I0(\count2[0]_i_3__1_n_0 ),
        .I1(sel0__1[28]),
        .O(\count3[28]_i_5__1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count3[4]_i_2__1 
       (.I0(\count2[0]_i_3__1_n_0 ),
        .I1(sel0__1[7]),
        .O(\count3[4]_i_2__1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count3[4]_i_3__1 
       (.I0(\count2[0]_i_3__1_n_0 ),
        .I1(sel0__1[6]),
        .O(\count3[4]_i_3__1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count3[4]_i_4__1 
       (.I0(\count2[0]_i_3__1_n_0 ),
        .I1(sel0__1[5]),
        .O(\count3[4]_i_4__1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count3[4]_i_5__1 
       (.I0(\count2[0]_i_3__1_n_0 ),
        .I1(sel0__1[4]),
        .O(\count3[4]_i_5__1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count3[8]_i_2__1 
       (.I0(\count2[0]_i_3__1_n_0 ),
        .I1(sel0__1[11]),
        .O(\count3[8]_i_2__1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count3[8]_i_3__1 
       (.I0(\count2[0]_i_3__1_n_0 ),
        .I1(sel0__1[10]),
        .O(\count3[8]_i_3__1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count3[8]_i_4__1 
       (.I0(\count2[0]_i_3__1_n_0 ),
        .I1(sel0__1[9]),
        .O(\count3[8]_i_4__1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count3[8]_i_5__1 
       (.I0(\count2[0]_i_3__1_n_0 ),
        .I1(sel0__1[8]),
        .O(\count3[8]_i_5__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count3_reg[0] 
       (.C(\count3_reg[0]_0 ),
        .CE(\count3[0]_i_1__0_n_0 ),
        .D(\count3_reg[0]_i_2__1_n_7 ),
        .Q(sel0__1[0]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count3_reg[0]_i_2__1 
       (.CI(1'b0),
        .CO({\count3_reg[0]_i_2__1_n_0 ,\NLW_count3_reg[0]_i_2__1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\count3[0]_i_5__1_n_0 }),
        .O({\count3_reg[0]_i_2__1_n_4 ,\count3_reg[0]_i_2__1_n_5 ,\count3_reg[0]_i_2__1_n_6 ,\count3_reg[0]_i_2__1_n_7 }),
        .S({\count3[0]_i_6__1_n_0 ,\count3[0]_i_7__1_n_0 ,\count3[0]_i_8__1_n_0 ,\count3[0]_i_9__1_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count3_reg[10] 
       (.C(\count3_reg[0]_0 ),
        .CE(\count3[0]_i_1__0_n_0 ),
        .D(\count3_reg[8]_i_1__1_n_5 ),
        .Q(sel0__1[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count3_reg[11] 
       (.C(\count3_reg[0]_0 ),
        .CE(\count3[0]_i_1__0_n_0 ),
        .D(\count3_reg[8]_i_1__1_n_4 ),
        .Q(sel0__1[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count3_reg[12] 
       (.C(\count3_reg[0]_0 ),
        .CE(\count3[0]_i_1__0_n_0 ),
        .D(\count3_reg[12]_i_1__1_n_7 ),
        .Q(sel0__1[12]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count3_reg[12]_i_1__1 
       (.CI(\count3_reg[8]_i_1__1_n_0 ),
        .CO({\count3_reg[12]_i_1__1_n_0 ,\NLW_count3_reg[12]_i_1__1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count3_reg[12]_i_1__1_n_4 ,\count3_reg[12]_i_1__1_n_5 ,\count3_reg[12]_i_1__1_n_6 ,\count3_reg[12]_i_1__1_n_7 }),
        .S({\count3[12]_i_2__1_n_0 ,\count3[12]_i_3__1_n_0 ,\count3[12]_i_4__1_n_0 ,\count3[12]_i_5__1_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count3_reg[13] 
       (.C(\count3_reg[0]_0 ),
        .CE(\count3[0]_i_1__0_n_0 ),
        .D(\count3_reg[12]_i_1__1_n_6 ),
        .Q(sel0__1[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count3_reg[14] 
       (.C(\count3_reg[0]_0 ),
        .CE(\count3[0]_i_1__0_n_0 ),
        .D(\count3_reg[12]_i_1__1_n_5 ),
        .Q(sel0__1[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count3_reg[15] 
       (.C(\count3_reg[0]_0 ),
        .CE(\count3[0]_i_1__0_n_0 ),
        .D(\count3_reg[12]_i_1__1_n_4 ),
        .Q(sel0__1[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count3_reg[16] 
       (.C(\count3_reg[0]_0 ),
        .CE(\count3[0]_i_1__0_n_0 ),
        .D(\count3_reg[16]_i_1__1_n_7 ),
        .Q(sel0__1[16]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count3_reg[16]_i_1__1 
       (.CI(\count3_reg[12]_i_1__1_n_0 ),
        .CO({\count3_reg[16]_i_1__1_n_0 ,\NLW_count3_reg[16]_i_1__1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count3_reg[16]_i_1__1_n_4 ,\count3_reg[16]_i_1__1_n_5 ,\count3_reg[16]_i_1__1_n_6 ,\count3_reg[16]_i_1__1_n_7 }),
        .S({\count3[16]_i_2__1_n_0 ,\count3[16]_i_3__1_n_0 ,\count3[16]_i_4__1_n_0 ,\count3[16]_i_5__1_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count3_reg[17] 
       (.C(\count3_reg[0]_0 ),
        .CE(\count3[0]_i_1__0_n_0 ),
        .D(\count3_reg[16]_i_1__1_n_6 ),
        .Q(sel0__1[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count3_reg[18] 
       (.C(\count3_reg[0]_0 ),
        .CE(\count3[0]_i_1__0_n_0 ),
        .D(\count3_reg[16]_i_1__1_n_5 ),
        .Q(sel0__1[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count3_reg[19] 
       (.C(\count3_reg[0]_0 ),
        .CE(\count3[0]_i_1__0_n_0 ),
        .D(\count3_reg[16]_i_1__1_n_4 ),
        .Q(sel0__1[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count3_reg[1] 
       (.C(\count3_reg[0]_0 ),
        .CE(\count3[0]_i_1__0_n_0 ),
        .D(\count3_reg[0]_i_2__1_n_6 ),
        .Q(sel0__1[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count3_reg[20] 
       (.C(\count3_reg[0]_0 ),
        .CE(\count3[0]_i_1__0_n_0 ),
        .D(\count3_reg[20]_i_1__1_n_7 ),
        .Q(sel0__1[20]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count3_reg[20]_i_1__1 
       (.CI(\count3_reg[16]_i_1__1_n_0 ),
        .CO({\count3_reg[20]_i_1__1_n_0 ,\NLW_count3_reg[20]_i_1__1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count3_reg[20]_i_1__1_n_4 ,\count3_reg[20]_i_1__1_n_5 ,\count3_reg[20]_i_1__1_n_6 ,\count3_reg[20]_i_1__1_n_7 }),
        .S({\count3[20]_i_2__1_n_0 ,\count3[20]_i_3__1_n_0 ,\count3[20]_i_4__1_n_0 ,\count3[20]_i_5__1_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count3_reg[21] 
       (.C(\count3_reg[0]_0 ),
        .CE(\count3[0]_i_1__0_n_0 ),
        .D(\count3_reg[20]_i_1__1_n_6 ),
        .Q(sel0__1[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count3_reg[22] 
       (.C(\count3_reg[0]_0 ),
        .CE(\count3[0]_i_1__0_n_0 ),
        .D(\count3_reg[20]_i_1__1_n_5 ),
        .Q(sel0__1[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count3_reg[23] 
       (.C(\count3_reg[0]_0 ),
        .CE(\count3[0]_i_1__0_n_0 ),
        .D(\count3_reg[20]_i_1__1_n_4 ),
        .Q(sel0__1[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count3_reg[24] 
       (.C(\count3_reg[0]_0 ),
        .CE(\count3[0]_i_1__0_n_0 ),
        .D(\count3_reg[24]_i_1__1_n_7 ),
        .Q(sel0__1[24]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count3_reg[24]_i_1__1 
       (.CI(\count3_reg[20]_i_1__1_n_0 ),
        .CO({\count3_reg[24]_i_1__1_n_0 ,\NLW_count3_reg[24]_i_1__1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count3_reg[24]_i_1__1_n_4 ,\count3_reg[24]_i_1__1_n_5 ,\count3_reg[24]_i_1__1_n_6 ,\count3_reg[24]_i_1__1_n_7 }),
        .S({\count3[24]_i_2__1_n_0 ,\count3[24]_i_3__1_n_0 ,\count3[24]_i_4__1_n_0 ,\count3[24]_i_5__1_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count3_reg[25] 
       (.C(\count3_reg[0]_0 ),
        .CE(\count3[0]_i_1__0_n_0 ),
        .D(\count3_reg[24]_i_1__1_n_6 ),
        .Q(sel0__1[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count3_reg[26] 
       (.C(\count3_reg[0]_0 ),
        .CE(\count3[0]_i_1__0_n_0 ),
        .D(\count3_reg[24]_i_1__1_n_5 ),
        .Q(sel0__1[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count3_reg[27] 
       (.C(\count3_reg[0]_0 ),
        .CE(\count3[0]_i_1__0_n_0 ),
        .D(\count3_reg[24]_i_1__1_n_4 ),
        .Q(sel0__1[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count3_reg[28] 
       (.C(\count3_reg[0]_0 ),
        .CE(\count3[0]_i_1__0_n_0 ),
        .D(\count3_reg[28]_i_1__1_n_7 ),
        .Q(sel0__1[28]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count3_reg[28]_i_1__1 
       (.CI(\count3_reg[24]_i_1__1_n_0 ),
        .CO(\NLW_count3_reg[28]_i_1__1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count3_reg[28]_i_1__1_n_4 ,\count3_reg[28]_i_1__1_n_5 ,\count3_reg[28]_i_1__1_n_6 ,\count3_reg[28]_i_1__1_n_7 }),
        .S({\count3[28]_i_2__1_n_0 ,\count3[28]_i_3__1_n_0 ,\count3[28]_i_4__1_n_0 ,\count3[28]_i_5__1_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count3_reg[29] 
       (.C(\count3_reg[0]_0 ),
        .CE(\count3[0]_i_1__0_n_0 ),
        .D(\count3_reg[28]_i_1__1_n_6 ),
        .Q(sel0__1[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count3_reg[2] 
       (.C(\count3_reg[0]_0 ),
        .CE(\count3[0]_i_1__0_n_0 ),
        .D(\count3_reg[0]_i_2__1_n_5 ),
        .Q(sel0__1[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count3_reg[30] 
       (.C(\count3_reg[0]_0 ),
        .CE(\count3[0]_i_1__0_n_0 ),
        .D(\count3_reg[28]_i_1__1_n_5 ),
        .Q(sel0__1[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count3_reg[31] 
       (.C(\count3_reg[0]_0 ),
        .CE(\count3[0]_i_1__0_n_0 ),
        .D(\count3_reg[28]_i_1__1_n_4 ),
        .Q(sel0__1[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count3_reg[3] 
       (.C(\count3_reg[0]_0 ),
        .CE(\count3[0]_i_1__0_n_0 ),
        .D(\count3_reg[0]_i_2__1_n_4 ),
        .Q(sel0__1[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count3_reg[4] 
       (.C(\count3_reg[0]_0 ),
        .CE(\count3[0]_i_1__0_n_0 ),
        .D(\count3_reg[4]_i_1__1_n_7 ),
        .Q(sel0__1[4]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count3_reg[4]_i_1__1 
       (.CI(\count3_reg[0]_i_2__1_n_0 ),
        .CO({\count3_reg[4]_i_1__1_n_0 ,\NLW_count3_reg[4]_i_1__1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count3_reg[4]_i_1__1_n_4 ,\count3_reg[4]_i_1__1_n_5 ,\count3_reg[4]_i_1__1_n_6 ,\count3_reg[4]_i_1__1_n_7 }),
        .S({\count3[4]_i_2__1_n_0 ,\count3[4]_i_3__1_n_0 ,\count3[4]_i_4__1_n_0 ,\count3[4]_i_5__1_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count3_reg[5] 
       (.C(\count3_reg[0]_0 ),
        .CE(\count3[0]_i_1__0_n_0 ),
        .D(\count3_reg[4]_i_1__1_n_6 ),
        .Q(sel0__1[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count3_reg[6] 
       (.C(\count3_reg[0]_0 ),
        .CE(\count3[0]_i_1__0_n_0 ),
        .D(\count3_reg[4]_i_1__1_n_5 ),
        .Q(sel0__1[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count3_reg[7] 
       (.C(\count3_reg[0]_0 ),
        .CE(\count3[0]_i_1__0_n_0 ),
        .D(\count3_reg[4]_i_1__1_n_4 ),
        .Q(sel0__1[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count3_reg[8] 
       (.C(\count3_reg[0]_0 ),
        .CE(\count3[0]_i_1__0_n_0 ),
        .D(\count3_reg[8]_i_1__1_n_7 ),
        .Q(sel0__1[8]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count3_reg[8]_i_1__1 
       (.CI(\count3_reg[4]_i_1__1_n_0 ),
        .CO({\count3_reg[8]_i_1__1_n_0 ,\NLW_count3_reg[8]_i_1__1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count3_reg[8]_i_1__1_n_4 ,\count3_reg[8]_i_1__1_n_5 ,\count3_reg[8]_i_1__1_n_6 ,\count3_reg[8]_i_1__1_n_7 }),
        .S({\count3[8]_i_2__1_n_0 ,\count3[8]_i_3__1_n_0 ,\count3[8]_i_4__1_n_0 ,\count3[8]_i_5__1_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count3_reg[9] 
       (.C(\count3_reg[0]_0 ),
        .CE(\count3[0]_i_1__0_n_0 ),
        .D(\count3_reg[8]_i_1__1_n_6 ),
        .Q(sel0__1[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    cout_reg
       (.C(\count3_reg[0]_0 ),
        .CE(1'b1),
        .D(d_reg_n_0),
        .Q(CLK),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000010)) 
    d_i_1__0
       (.I0(d_i_2__1_n_0),
        .I1(d_i_3__1_n_0),
        .I2(sel0__1[2]),
        .I3(\count0[31]_i_1__1_n_0 ),
        .I4(\count1[0]_i_3__1_n_0 ),
        .I5(d_reg_n_0),
        .O(d_i_1__0_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    d_i_2__1
       (.I0(d_i_4__1_n_0),
        .I1(sel0__1[31]),
        .I2(\count2[0]_i_3__1_n_0 ),
        .I3(sel0__1[29]),
        .I4(sel0__1[30]),
        .I5(d_i_5__1_n_0),
        .O(d_i_2__1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    d_i_3__1
       (.I0(d_i_6__1_n_0),
        .I1(sel0__1[15]),
        .I2(sel0__1[16]),
        .I3(sel0__1[13]),
        .I4(sel0__1[14]),
        .I5(d_i_7__1_n_0),
        .O(d_i_3__1_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    d_i_4__1
       (.I0(sel0__1[27]),
        .I1(sel0__1[28]),
        .I2(sel0__1[25]),
        .I3(sel0__1[26]),
        .O(d_i_4__1_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    d_i_5__1
       (.I0(sel0__1[22]),
        .I1(sel0__1[21]),
        .I2(sel0__1[24]),
        .I3(sel0__1[23]),
        .I4(d_i_8__1_n_0),
        .O(d_i_5__1_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    d_i_6__1
       (.I0(sel0__1[11]),
        .I1(sel0__1[12]),
        .I2(sel0__1[9]),
        .I3(sel0__1[10]),
        .O(d_i_6__1_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    d_i_7__1
       (.I0(sel0__1[6]),
        .I1(sel0__1[5]),
        .I2(sel0__1[8]),
        .I3(sel0__1[7]),
        .I4(d_i_9__1_n_0),
        .O(d_i_7__1_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    d_i_8__1
       (.I0(sel0__1[19]),
        .I1(sel0__1[20]),
        .I2(sel0__1[17]),
        .I3(sel0__1[18]),
        .O(d_i_8__1_n_0));
  LUT4 #(
    .INIT(16'hFEFF)) 
    d_i_9__1
       (.I0(sel0__1[3]),
        .I1(sel0__1[1]),
        .I2(sel0__1[0]),
        .I3(sel0__1[4]),
        .O(d_i_9__1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    d_reg
       (.C(\count3_reg[0]_0 ),
        .CE(1'b1),
        .D(d_i_1__0_n_0),
        .Q(d_reg_n_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "clock_divider" *) 
module clock_divider__parameterized1
   (cout_reg_0,
    \count2_reg[0]_0 );
  output cout_reg_0;
  input \count2_reg[0]_0 ;

  wire \count0[0]_i_1__1_n_0 ;
  wire \count0[31]_i_1__0_n_0 ;
  wire \count0[31]_i_3__0_n_0 ;
  wire \count0[31]_i_4__0_n_0 ;
  wire \count0[31]_i_5__0_n_0 ;
  wire \count0[31]_i_6__0_n_0 ;
  wire \count0[31]_i_7__0_n_0 ;
  wire \count0[31]_i_8__0_n_0 ;
  wire \count0_reg[12]_i_1__0_n_0 ;
  wire \count0_reg[12]_i_1__0_n_4 ;
  wire \count0_reg[12]_i_1__0_n_5 ;
  wire \count0_reg[12]_i_1__0_n_6 ;
  wire \count0_reg[12]_i_1__0_n_7 ;
  wire \count0_reg[16]_i_1__0_n_0 ;
  wire \count0_reg[16]_i_1__0_n_4 ;
  wire \count0_reg[16]_i_1__0_n_5 ;
  wire \count0_reg[16]_i_1__0_n_6 ;
  wire \count0_reg[16]_i_1__0_n_7 ;
  wire \count0_reg[20]_i_1__0_n_0 ;
  wire \count0_reg[20]_i_1__0_n_4 ;
  wire \count0_reg[20]_i_1__0_n_5 ;
  wire \count0_reg[20]_i_1__0_n_6 ;
  wire \count0_reg[20]_i_1__0_n_7 ;
  wire \count0_reg[24]_i_1__0_n_0 ;
  wire \count0_reg[24]_i_1__0_n_4 ;
  wire \count0_reg[24]_i_1__0_n_5 ;
  wire \count0_reg[24]_i_1__0_n_6 ;
  wire \count0_reg[24]_i_1__0_n_7 ;
  wire \count0_reg[28]_i_1__0_n_0 ;
  wire \count0_reg[28]_i_1__0_n_4 ;
  wire \count0_reg[28]_i_1__0_n_5 ;
  wire \count0_reg[28]_i_1__0_n_6 ;
  wire \count0_reg[28]_i_1__0_n_7 ;
  wire \count0_reg[31]_i_2__0_n_5 ;
  wire \count0_reg[31]_i_2__0_n_6 ;
  wire \count0_reg[31]_i_2__0_n_7 ;
  wire \count0_reg[4]_i_1__0_n_0 ;
  wire \count0_reg[4]_i_1__0_n_4 ;
  wire \count0_reg[4]_i_1__0_n_5 ;
  wire \count0_reg[4]_i_1__0_n_6 ;
  wire \count0_reg[4]_i_1__0_n_7 ;
  wire \count0_reg[8]_i_1__0_n_0 ;
  wire \count0_reg[8]_i_1__0_n_4 ;
  wire \count0_reg[8]_i_1__0_n_5 ;
  wire \count0_reg[8]_i_1__0_n_6 ;
  wire \count0_reg[8]_i_1__0_n_7 ;
  wire \count0_reg_n_0_[0] ;
  wire \count0_reg_n_0_[10] ;
  wire \count0_reg_n_0_[11] ;
  wire \count0_reg_n_0_[12] ;
  wire \count0_reg_n_0_[13] ;
  wire \count0_reg_n_0_[14] ;
  wire \count0_reg_n_0_[15] ;
  wire \count0_reg_n_0_[16] ;
  wire \count0_reg_n_0_[17] ;
  wire \count0_reg_n_0_[18] ;
  wire \count0_reg_n_0_[19] ;
  wire \count0_reg_n_0_[1] ;
  wire \count0_reg_n_0_[20] ;
  wire \count0_reg_n_0_[21] ;
  wire \count0_reg_n_0_[22] ;
  wire \count0_reg_n_0_[23] ;
  wire \count0_reg_n_0_[24] ;
  wire \count0_reg_n_0_[25] ;
  wire \count0_reg_n_0_[26] ;
  wire \count0_reg_n_0_[27] ;
  wire \count0_reg_n_0_[28] ;
  wire \count0_reg_n_0_[29] ;
  wire \count0_reg_n_0_[2] ;
  wire \count0_reg_n_0_[30] ;
  wire \count0_reg_n_0_[31] ;
  wire \count0_reg_n_0_[3] ;
  wire \count0_reg_n_0_[4] ;
  wire \count0_reg_n_0_[5] ;
  wire \count0_reg_n_0_[6] ;
  wire \count0_reg_n_0_[7] ;
  wire \count0_reg_n_0_[8] ;
  wire \count0_reg_n_0_[9] ;
  wire \count1[0]_i_10__0_n_0 ;
  wire \count1[0]_i_11__0_n_0 ;
  wire \count1[0]_i_12__0_n_0 ;
  wire \count1[0]_i_13__0_n_0 ;
  wire \count1[0]_i_14__0_n_0 ;
  wire \count1[0]_i_1__1_n_0 ;
  wire \count1[0]_i_3__0_n_0 ;
  wire \count1[0]_i_4__0_n_0 ;
  wire \count1[0]_i_5__0_n_0 ;
  wire \count1[0]_i_6__0_n_0 ;
  wire \count1[0]_i_7__0_n_0 ;
  wire \count1[0]_i_8__0_n_0 ;
  wire \count1[0]_i_9__0_n_0 ;
  wire \count1[12]_i_2__0_n_0 ;
  wire \count1[12]_i_3__0_n_0 ;
  wire \count1[12]_i_4__0_n_0 ;
  wire \count1[12]_i_5__0_n_0 ;
  wire \count1[16]_i_2__0_n_0 ;
  wire \count1[16]_i_3__0_n_0 ;
  wire \count1[16]_i_4__0_n_0 ;
  wire \count1[16]_i_5__0_n_0 ;
  wire \count1[20]_i_2__0_n_0 ;
  wire \count1[20]_i_3__0_n_0 ;
  wire \count1[20]_i_4__0_n_0 ;
  wire \count1[20]_i_5__0_n_0 ;
  wire \count1[24]_i_2__0_n_0 ;
  wire \count1[24]_i_3__0_n_0 ;
  wire \count1[24]_i_4__0_n_0 ;
  wire \count1[24]_i_5__0_n_0 ;
  wire \count1[28]_i_2__0_n_0 ;
  wire \count1[28]_i_3__0_n_0 ;
  wire \count1[28]_i_4__0_n_0 ;
  wire \count1[28]_i_5__0_n_0 ;
  wire \count1[4]_i_2__0_n_0 ;
  wire \count1[4]_i_3__0_n_0 ;
  wire \count1[4]_i_4__0_n_0 ;
  wire \count1[4]_i_5__0_n_0 ;
  wire \count1[8]_i_2__0_n_0 ;
  wire \count1[8]_i_3__0_n_0 ;
  wire \count1[8]_i_4__0_n_0 ;
  wire \count1[8]_i_5__0_n_0 ;
  wire [31:0]count1_reg;
  wire \count1_reg[0]_i_2__0_n_0 ;
  wire \count1_reg[0]_i_2__0_n_4 ;
  wire \count1_reg[0]_i_2__0_n_5 ;
  wire \count1_reg[0]_i_2__0_n_6 ;
  wire \count1_reg[0]_i_2__0_n_7 ;
  wire \count1_reg[12]_i_1__0_n_0 ;
  wire \count1_reg[12]_i_1__0_n_4 ;
  wire \count1_reg[12]_i_1__0_n_5 ;
  wire \count1_reg[12]_i_1__0_n_6 ;
  wire \count1_reg[12]_i_1__0_n_7 ;
  wire \count1_reg[16]_i_1__0_n_0 ;
  wire \count1_reg[16]_i_1__0_n_4 ;
  wire \count1_reg[16]_i_1__0_n_5 ;
  wire \count1_reg[16]_i_1__0_n_6 ;
  wire \count1_reg[16]_i_1__0_n_7 ;
  wire \count1_reg[20]_i_1__0_n_0 ;
  wire \count1_reg[20]_i_1__0_n_4 ;
  wire \count1_reg[20]_i_1__0_n_5 ;
  wire \count1_reg[20]_i_1__0_n_6 ;
  wire \count1_reg[20]_i_1__0_n_7 ;
  wire \count1_reg[24]_i_1__0_n_0 ;
  wire \count1_reg[24]_i_1__0_n_4 ;
  wire \count1_reg[24]_i_1__0_n_5 ;
  wire \count1_reg[24]_i_1__0_n_6 ;
  wire \count1_reg[24]_i_1__0_n_7 ;
  wire \count1_reg[28]_i_1__0_n_4 ;
  wire \count1_reg[28]_i_1__0_n_5 ;
  wire \count1_reg[28]_i_1__0_n_6 ;
  wire \count1_reg[28]_i_1__0_n_7 ;
  wire \count1_reg[4]_i_1__0_n_0 ;
  wire \count1_reg[4]_i_1__0_n_4 ;
  wire \count1_reg[4]_i_1__0_n_5 ;
  wire \count1_reg[4]_i_1__0_n_6 ;
  wire \count1_reg[4]_i_1__0_n_7 ;
  wire \count1_reg[8]_i_1__0_n_0 ;
  wire \count1_reg[8]_i_1__0_n_4 ;
  wire \count1_reg[8]_i_1__0_n_5 ;
  wire \count1_reg[8]_i_1__0_n_6 ;
  wire \count1_reg[8]_i_1__0_n_7 ;
  wire \count2[0]_i_10__0_n_0 ;
  wire \count2[0]_i_11__0_n_0 ;
  wire \count2[0]_i_12__0_n_0 ;
  wire \count2[0]_i_13__0_n_0 ;
  wire \count2[0]_i_14__0_n_0 ;
  wire \count2[0]_i_1__1_n_0 ;
  wire \count2[0]_i_3__0_n_0 ;
  wire \count2[0]_i_4__0_n_0 ;
  wire \count2[0]_i_5__0_n_0 ;
  wire \count2[0]_i_6__0_n_0 ;
  wire \count2[0]_i_7__0_n_0 ;
  wire \count2[0]_i_8__0_n_0 ;
  wire \count2[0]_i_9__0_n_0 ;
  wire \count2[12]_i_2__0_n_0 ;
  wire \count2[12]_i_3__0_n_0 ;
  wire \count2[12]_i_4__0_n_0 ;
  wire \count2[12]_i_5__0_n_0 ;
  wire \count2[16]_i_2__0_n_0 ;
  wire \count2[16]_i_3__0_n_0 ;
  wire \count2[16]_i_4__0_n_0 ;
  wire \count2[16]_i_5__0_n_0 ;
  wire \count2[20]_i_2__0_n_0 ;
  wire \count2[20]_i_3__0_n_0 ;
  wire \count2[20]_i_4__0_n_0 ;
  wire \count2[20]_i_5__0_n_0 ;
  wire \count2[24]_i_2__0_n_0 ;
  wire \count2[24]_i_3__0_n_0 ;
  wire \count2[24]_i_4__0_n_0 ;
  wire \count2[24]_i_5__0_n_0 ;
  wire \count2[28]_i_2__0_n_0 ;
  wire \count2[28]_i_3__0_n_0 ;
  wire \count2[28]_i_4__0_n_0 ;
  wire \count2[28]_i_5__0_n_0 ;
  wire \count2[4]_i_2__0_n_0 ;
  wire \count2[4]_i_3__0_n_0 ;
  wire \count2[4]_i_4__0_n_0 ;
  wire \count2[4]_i_5__0_n_0 ;
  wire \count2[8]_i_2__0_n_0 ;
  wire \count2[8]_i_3__0_n_0 ;
  wire \count2[8]_i_4__0_n_0 ;
  wire \count2[8]_i_5__0_n_0 ;
  wire [31:0]count2_reg;
  wire \count2_reg[0]_0 ;
  wire \count2_reg[0]_i_2__0_n_0 ;
  wire \count2_reg[0]_i_2__0_n_4 ;
  wire \count2_reg[0]_i_2__0_n_5 ;
  wire \count2_reg[0]_i_2__0_n_6 ;
  wire \count2_reg[0]_i_2__0_n_7 ;
  wire \count2_reg[12]_i_1__0_n_0 ;
  wire \count2_reg[12]_i_1__0_n_4 ;
  wire \count2_reg[12]_i_1__0_n_5 ;
  wire \count2_reg[12]_i_1__0_n_6 ;
  wire \count2_reg[12]_i_1__0_n_7 ;
  wire \count2_reg[16]_i_1__0_n_0 ;
  wire \count2_reg[16]_i_1__0_n_4 ;
  wire \count2_reg[16]_i_1__0_n_5 ;
  wire \count2_reg[16]_i_1__0_n_6 ;
  wire \count2_reg[16]_i_1__0_n_7 ;
  wire \count2_reg[20]_i_1__0_n_0 ;
  wire \count2_reg[20]_i_1__0_n_4 ;
  wire \count2_reg[20]_i_1__0_n_5 ;
  wire \count2_reg[20]_i_1__0_n_6 ;
  wire \count2_reg[20]_i_1__0_n_7 ;
  wire \count2_reg[24]_i_1__0_n_0 ;
  wire \count2_reg[24]_i_1__0_n_4 ;
  wire \count2_reg[24]_i_1__0_n_5 ;
  wire \count2_reg[24]_i_1__0_n_6 ;
  wire \count2_reg[24]_i_1__0_n_7 ;
  wire \count2_reg[28]_i_1__0_n_4 ;
  wire \count2_reg[28]_i_1__0_n_5 ;
  wire \count2_reg[28]_i_1__0_n_6 ;
  wire \count2_reg[28]_i_1__0_n_7 ;
  wire \count2_reg[4]_i_1__0_n_0 ;
  wire \count2_reg[4]_i_1__0_n_4 ;
  wire \count2_reg[4]_i_1__0_n_5 ;
  wire \count2_reg[4]_i_1__0_n_6 ;
  wire \count2_reg[4]_i_1__0_n_7 ;
  wire \count2_reg[8]_i_1__0_n_0 ;
  wire \count2_reg[8]_i_1__0_n_4 ;
  wire \count2_reg[8]_i_1__0_n_5 ;
  wire \count2_reg[8]_i_1__0_n_6 ;
  wire \count2_reg[8]_i_1__0_n_7 ;
  wire \count3[0]_i_10__0_n_0 ;
  wire \count3[0]_i_11__0_n_0 ;
  wire \count3[0]_i_12__0_n_0 ;
  wire \count3[0]_i_13__0_n_0 ;
  wire \count3[0]_i_14__0_n_0 ;
  wire \count3[0]_i_15__0_n_0 ;
  wire \count3[0]_i_1__1_n_0 ;
  wire \count3[0]_i_3__0_n_0 ;
  wire \count3[0]_i_4__0_n_0 ;
  wire \count3[0]_i_5__0_n_0 ;
  wire \count3[0]_i_6__0_n_0 ;
  wire \count3[0]_i_7__0_n_0 ;
  wire \count3[0]_i_8__0_n_0 ;
  wire \count3[0]_i_9__0_n_0 ;
  wire \count3[12]_i_2__0_n_0 ;
  wire \count3[12]_i_3__0_n_0 ;
  wire \count3[12]_i_4__0_n_0 ;
  wire \count3[12]_i_5__0_n_0 ;
  wire \count3[16]_i_2__0_n_0 ;
  wire \count3[16]_i_3__0_n_0 ;
  wire \count3[16]_i_4__0_n_0 ;
  wire \count3[16]_i_5__0_n_0 ;
  wire \count3[20]_i_2__0_n_0 ;
  wire \count3[20]_i_3__0_n_0 ;
  wire \count3[20]_i_4__0_n_0 ;
  wire \count3[20]_i_5__0_n_0 ;
  wire \count3[24]_i_2__0_n_0 ;
  wire \count3[24]_i_3__0_n_0 ;
  wire \count3[24]_i_4__0_n_0 ;
  wire \count3[24]_i_5__0_n_0 ;
  wire \count3[28]_i_2__0_n_0 ;
  wire \count3[28]_i_3__0_n_0 ;
  wire \count3[28]_i_4__0_n_0 ;
  wire \count3[28]_i_5__0_n_0 ;
  wire \count3[4]_i_2__0_n_0 ;
  wire \count3[4]_i_3__0_n_0 ;
  wire \count3[4]_i_4__0_n_0 ;
  wire \count3[4]_i_5__0_n_0 ;
  wire \count3[8]_i_2__0_n_0 ;
  wire \count3[8]_i_3__0_n_0 ;
  wire \count3[8]_i_4__0_n_0 ;
  wire \count3[8]_i_5__0_n_0 ;
  wire \count3_reg[0]_i_2__0_n_0 ;
  wire \count3_reg[0]_i_2__0_n_4 ;
  wire \count3_reg[0]_i_2__0_n_5 ;
  wire \count3_reg[0]_i_2__0_n_6 ;
  wire \count3_reg[0]_i_2__0_n_7 ;
  wire \count3_reg[12]_i_1__0_n_0 ;
  wire \count3_reg[12]_i_1__0_n_4 ;
  wire \count3_reg[12]_i_1__0_n_5 ;
  wire \count3_reg[12]_i_1__0_n_6 ;
  wire \count3_reg[12]_i_1__0_n_7 ;
  wire \count3_reg[16]_i_1__0_n_0 ;
  wire \count3_reg[16]_i_1__0_n_4 ;
  wire \count3_reg[16]_i_1__0_n_5 ;
  wire \count3_reg[16]_i_1__0_n_6 ;
  wire \count3_reg[16]_i_1__0_n_7 ;
  wire \count3_reg[20]_i_1__0_n_0 ;
  wire \count3_reg[20]_i_1__0_n_4 ;
  wire \count3_reg[20]_i_1__0_n_5 ;
  wire \count3_reg[20]_i_1__0_n_6 ;
  wire \count3_reg[20]_i_1__0_n_7 ;
  wire \count3_reg[24]_i_1__0_n_0 ;
  wire \count3_reg[24]_i_1__0_n_4 ;
  wire \count3_reg[24]_i_1__0_n_5 ;
  wire \count3_reg[24]_i_1__0_n_6 ;
  wire \count3_reg[24]_i_1__0_n_7 ;
  wire \count3_reg[28]_i_1__0_n_4 ;
  wire \count3_reg[28]_i_1__0_n_5 ;
  wire \count3_reg[28]_i_1__0_n_6 ;
  wire \count3_reg[28]_i_1__0_n_7 ;
  wire \count3_reg[4]_i_1__0_n_0 ;
  wire \count3_reg[4]_i_1__0_n_4 ;
  wire \count3_reg[4]_i_1__0_n_5 ;
  wire \count3_reg[4]_i_1__0_n_6 ;
  wire \count3_reg[4]_i_1__0_n_7 ;
  wire \count3_reg[8]_i_1__0_n_0 ;
  wire \count3_reg[8]_i_1__0_n_4 ;
  wire \count3_reg[8]_i_1__0_n_5 ;
  wire \count3_reg[8]_i_1__0_n_6 ;
  wire \count3_reg[8]_i_1__0_n_7 ;
  wire cout_reg_0;
  wire d_i_1__1_n_0;
  wire d_i_2__0_n_0;
  wire d_i_3__0_n_0;
  wire d_i_4__0_n_0;
  wire d_i_5__0_n_0;
  wire d_i_6__0_n_0;
  wire d_i_7__0_n_0;
  wire d_i_8__0_n_0;
  wire d_i_9__0_n_0;
  wire d_reg_n_0;
  wire [31:0]sel0__2;
  wire [2:0]\NLW_count0_reg[12]_i_1__0_CO_UNCONNECTED ;
  wire [2:0]\NLW_count0_reg[16]_i_1__0_CO_UNCONNECTED ;
  wire [2:0]\NLW_count0_reg[20]_i_1__0_CO_UNCONNECTED ;
  wire [2:0]\NLW_count0_reg[24]_i_1__0_CO_UNCONNECTED ;
  wire [2:0]\NLW_count0_reg[28]_i_1__0_CO_UNCONNECTED ;
  wire [3:0]\NLW_count0_reg[31]_i_2__0_CO_UNCONNECTED ;
  wire [3:3]\NLW_count0_reg[31]_i_2__0_O_UNCONNECTED ;
  wire [2:0]\NLW_count0_reg[4]_i_1__0_CO_UNCONNECTED ;
  wire [2:0]\NLW_count0_reg[8]_i_1__0_CO_UNCONNECTED ;
  wire [2:0]\NLW_count1_reg[0]_i_2__0_CO_UNCONNECTED ;
  wire [2:0]\NLW_count1_reg[12]_i_1__0_CO_UNCONNECTED ;
  wire [2:0]\NLW_count1_reg[16]_i_1__0_CO_UNCONNECTED ;
  wire [2:0]\NLW_count1_reg[20]_i_1__0_CO_UNCONNECTED ;
  wire [2:0]\NLW_count1_reg[24]_i_1__0_CO_UNCONNECTED ;
  wire [3:0]\NLW_count1_reg[28]_i_1__0_CO_UNCONNECTED ;
  wire [2:0]\NLW_count1_reg[4]_i_1__0_CO_UNCONNECTED ;
  wire [2:0]\NLW_count1_reg[8]_i_1__0_CO_UNCONNECTED ;
  wire [2:0]\NLW_count2_reg[0]_i_2__0_CO_UNCONNECTED ;
  wire [2:0]\NLW_count2_reg[12]_i_1__0_CO_UNCONNECTED ;
  wire [2:0]\NLW_count2_reg[16]_i_1__0_CO_UNCONNECTED ;
  wire [2:0]\NLW_count2_reg[20]_i_1__0_CO_UNCONNECTED ;
  wire [2:0]\NLW_count2_reg[24]_i_1__0_CO_UNCONNECTED ;
  wire [3:0]\NLW_count2_reg[28]_i_1__0_CO_UNCONNECTED ;
  wire [2:0]\NLW_count2_reg[4]_i_1__0_CO_UNCONNECTED ;
  wire [2:0]\NLW_count2_reg[8]_i_1__0_CO_UNCONNECTED ;
  wire [2:0]\NLW_count3_reg[0]_i_2__0_CO_UNCONNECTED ;
  wire [2:0]\NLW_count3_reg[12]_i_1__0_CO_UNCONNECTED ;
  wire [2:0]\NLW_count3_reg[16]_i_1__0_CO_UNCONNECTED ;
  wire [2:0]\NLW_count3_reg[20]_i_1__0_CO_UNCONNECTED ;
  wire [2:0]\NLW_count3_reg[24]_i_1__0_CO_UNCONNECTED ;
  wire [3:0]\NLW_count3_reg[28]_i_1__0_CO_UNCONNECTED ;
  wire [2:0]\NLW_count3_reg[4]_i_1__0_CO_UNCONNECTED ;
  wire [2:0]\NLW_count3_reg[8]_i_1__0_CO_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \count0[0]_i_1__1 
       (.I0(\count0_reg_n_0_[0] ),
        .O(\count0[0]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \count0[31]_i_1__0 
       (.I0(\count0[31]_i_3__0_n_0 ),
        .I1(\count0[31]_i_4__0_n_0 ),
        .I2(\count0[31]_i_5__0_n_0 ),
        .I3(\count0[31]_i_6__0_n_0 ),
        .I4(\count0[31]_i_7__0_n_0 ),
        .I5(\count0[31]_i_8__0_n_0 ),
        .O(\count0[31]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \count0[31]_i_3__0 
       (.I0(\count0_reg_n_0_[24] ),
        .I1(\count0_reg_n_0_[25] ),
        .I2(\count0_reg_n_0_[26] ),
        .I3(\count0_reg_n_0_[27] ),
        .I4(\count0_reg_n_0_[28] ),
        .I5(\count0_reg_n_0_[29] ),
        .O(\count0[31]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \count0[31]_i_4__0 
       (.I0(\count0_reg_n_0_[6] ),
        .I1(\count0_reg_n_0_[7] ),
        .I2(\count0_reg_n_0_[8] ),
        .I3(\count0_reg_n_0_[9] ),
        .I4(\count0_reg_n_0_[10] ),
        .I5(\count0_reg_n_0_[11] ),
        .O(\count0[31]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \count0[31]_i_5__0 
       (.I0(\count0_reg_n_0_[18] ),
        .I1(\count0_reg_n_0_[19] ),
        .I2(\count0_reg_n_0_[20] ),
        .I3(\count0_reg_n_0_[21] ),
        .I4(\count0_reg_n_0_[22] ),
        .I5(\count0_reg_n_0_[23] ),
        .O(\count0[31]_i_5__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \count0[31]_i_6__0 
       (.I0(\count0_reg_n_0_[12] ),
        .I1(\count0_reg_n_0_[13] ),
        .I2(\count0_reg_n_0_[14] ),
        .I3(\count0_reg_n_0_[15] ),
        .I4(\count0_reg_n_0_[16] ),
        .I5(\count0_reg_n_0_[17] ),
        .O(\count0[31]_i_6__0_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \count0[31]_i_7__0 
       (.I0(\count0_reg_n_0_[30] ),
        .I1(\count0_reg_n_0_[31] ),
        .O(\count0[31]_i_7__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFFFFFFFFFF)) 
    \count0[31]_i_8__0 
       (.I0(\count0_reg_n_0_[0] ),
        .I1(\count0_reg_n_0_[1] ),
        .I2(\count0_reg_n_0_[2] ),
        .I3(\count0_reg_n_0_[3] ),
        .I4(\count0_reg_n_0_[4] ),
        .I5(\count0_reg_n_0_[5] ),
        .O(\count0[31]_i_8__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count0_reg[0] 
       (.C(\count2_reg[0]_0 ),
        .CE(1'b1),
        .D(\count0[0]_i_1__1_n_0 ),
        .Q(\count0_reg_n_0_[0] ),
        .R(\count0[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count0_reg[10] 
       (.C(\count2_reg[0]_0 ),
        .CE(1'b1),
        .D(\count0_reg[12]_i_1__0_n_6 ),
        .Q(\count0_reg_n_0_[10] ),
        .R(\count0[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count0_reg[11] 
       (.C(\count2_reg[0]_0 ),
        .CE(1'b1),
        .D(\count0_reg[12]_i_1__0_n_5 ),
        .Q(\count0_reg_n_0_[11] ),
        .R(\count0[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count0_reg[12] 
       (.C(\count2_reg[0]_0 ),
        .CE(1'b1),
        .D(\count0_reg[12]_i_1__0_n_4 ),
        .Q(\count0_reg_n_0_[12] ),
        .R(\count0[31]_i_1__0_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \count0_reg[12]_i_1__0 
       (.CI(\count0_reg[8]_i_1__0_n_0 ),
        .CO({\count0_reg[12]_i_1__0_n_0 ,\NLW_count0_reg[12]_i_1__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count0_reg[12]_i_1__0_n_4 ,\count0_reg[12]_i_1__0_n_5 ,\count0_reg[12]_i_1__0_n_6 ,\count0_reg[12]_i_1__0_n_7 }),
        .S({\count0_reg_n_0_[12] ,\count0_reg_n_0_[11] ,\count0_reg_n_0_[10] ,\count0_reg_n_0_[9] }));
  FDRE #(
    .INIT(1'b0)) 
    \count0_reg[13] 
       (.C(\count2_reg[0]_0 ),
        .CE(1'b1),
        .D(\count0_reg[16]_i_1__0_n_7 ),
        .Q(\count0_reg_n_0_[13] ),
        .R(\count0[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count0_reg[14] 
       (.C(\count2_reg[0]_0 ),
        .CE(1'b1),
        .D(\count0_reg[16]_i_1__0_n_6 ),
        .Q(\count0_reg_n_0_[14] ),
        .R(\count0[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count0_reg[15] 
       (.C(\count2_reg[0]_0 ),
        .CE(1'b1),
        .D(\count0_reg[16]_i_1__0_n_5 ),
        .Q(\count0_reg_n_0_[15] ),
        .R(\count0[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count0_reg[16] 
       (.C(\count2_reg[0]_0 ),
        .CE(1'b1),
        .D(\count0_reg[16]_i_1__0_n_4 ),
        .Q(\count0_reg_n_0_[16] ),
        .R(\count0[31]_i_1__0_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \count0_reg[16]_i_1__0 
       (.CI(\count0_reg[12]_i_1__0_n_0 ),
        .CO({\count0_reg[16]_i_1__0_n_0 ,\NLW_count0_reg[16]_i_1__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count0_reg[16]_i_1__0_n_4 ,\count0_reg[16]_i_1__0_n_5 ,\count0_reg[16]_i_1__0_n_6 ,\count0_reg[16]_i_1__0_n_7 }),
        .S({\count0_reg_n_0_[16] ,\count0_reg_n_0_[15] ,\count0_reg_n_0_[14] ,\count0_reg_n_0_[13] }));
  FDRE #(
    .INIT(1'b0)) 
    \count0_reg[17] 
       (.C(\count2_reg[0]_0 ),
        .CE(1'b1),
        .D(\count0_reg[20]_i_1__0_n_7 ),
        .Q(\count0_reg_n_0_[17] ),
        .R(\count0[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count0_reg[18] 
       (.C(\count2_reg[0]_0 ),
        .CE(1'b1),
        .D(\count0_reg[20]_i_1__0_n_6 ),
        .Q(\count0_reg_n_0_[18] ),
        .R(\count0[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count0_reg[19] 
       (.C(\count2_reg[0]_0 ),
        .CE(1'b1),
        .D(\count0_reg[20]_i_1__0_n_5 ),
        .Q(\count0_reg_n_0_[19] ),
        .R(\count0[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count0_reg[1] 
       (.C(\count2_reg[0]_0 ),
        .CE(1'b1),
        .D(\count0_reg[4]_i_1__0_n_7 ),
        .Q(\count0_reg_n_0_[1] ),
        .R(\count0[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count0_reg[20] 
       (.C(\count2_reg[0]_0 ),
        .CE(1'b1),
        .D(\count0_reg[20]_i_1__0_n_4 ),
        .Q(\count0_reg_n_0_[20] ),
        .R(\count0[31]_i_1__0_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \count0_reg[20]_i_1__0 
       (.CI(\count0_reg[16]_i_1__0_n_0 ),
        .CO({\count0_reg[20]_i_1__0_n_0 ,\NLW_count0_reg[20]_i_1__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count0_reg[20]_i_1__0_n_4 ,\count0_reg[20]_i_1__0_n_5 ,\count0_reg[20]_i_1__0_n_6 ,\count0_reg[20]_i_1__0_n_7 }),
        .S({\count0_reg_n_0_[20] ,\count0_reg_n_0_[19] ,\count0_reg_n_0_[18] ,\count0_reg_n_0_[17] }));
  FDRE #(
    .INIT(1'b0)) 
    \count0_reg[21] 
       (.C(\count2_reg[0]_0 ),
        .CE(1'b1),
        .D(\count0_reg[24]_i_1__0_n_7 ),
        .Q(\count0_reg_n_0_[21] ),
        .R(\count0[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count0_reg[22] 
       (.C(\count2_reg[0]_0 ),
        .CE(1'b1),
        .D(\count0_reg[24]_i_1__0_n_6 ),
        .Q(\count0_reg_n_0_[22] ),
        .R(\count0[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count0_reg[23] 
       (.C(\count2_reg[0]_0 ),
        .CE(1'b1),
        .D(\count0_reg[24]_i_1__0_n_5 ),
        .Q(\count0_reg_n_0_[23] ),
        .R(\count0[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count0_reg[24] 
       (.C(\count2_reg[0]_0 ),
        .CE(1'b1),
        .D(\count0_reg[24]_i_1__0_n_4 ),
        .Q(\count0_reg_n_0_[24] ),
        .R(\count0[31]_i_1__0_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \count0_reg[24]_i_1__0 
       (.CI(\count0_reg[20]_i_1__0_n_0 ),
        .CO({\count0_reg[24]_i_1__0_n_0 ,\NLW_count0_reg[24]_i_1__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count0_reg[24]_i_1__0_n_4 ,\count0_reg[24]_i_1__0_n_5 ,\count0_reg[24]_i_1__0_n_6 ,\count0_reg[24]_i_1__0_n_7 }),
        .S({\count0_reg_n_0_[24] ,\count0_reg_n_0_[23] ,\count0_reg_n_0_[22] ,\count0_reg_n_0_[21] }));
  FDRE #(
    .INIT(1'b0)) 
    \count0_reg[25] 
       (.C(\count2_reg[0]_0 ),
        .CE(1'b1),
        .D(\count0_reg[28]_i_1__0_n_7 ),
        .Q(\count0_reg_n_0_[25] ),
        .R(\count0[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count0_reg[26] 
       (.C(\count2_reg[0]_0 ),
        .CE(1'b1),
        .D(\count0_reg[28]_i_1__0_n_6 ),
        .Q(\count0_reg_n_0_[26] ),
        .R(\count0[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count0_reg[27] 
       (.C(\count2_reg[0]_0 ),
        .CE(1'b1),
        .D(\count0_reg[28]_i_1__0_n_5 ),
        .Q(\count0_reg_n_0_[27] ),
        .R(\count0[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count0_reg[28] 
       (.C(\count2_reg[0]_0 ),
        .CE(1'b1),
        .D(\count0_reg[28]_i_1__0_n_4 ),
        .Q(\count0_reg_n_0_[28] ),
        .R(\count0[31]_i_1__0_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \count0_reg[28]_i_1__0 
       (.CI(\count0_reg[24]_i_1__0_n_0 ),
        .CO({\count0_reg[28]_i_1__0_n_0 ,\NLW_count0_reg[28]_i_1__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count0_reg[28]_i_1__0_n_4 ,\count0_reg[28]_i_1__0_n_5 ,\count0_reg[28]_i_1__0_n_6 ,\count0_reg[28]_i_1__0_n_7 }),
        .S({\count0_reg_n_0_[28] ,\count0_reg_n_0_[27] ,\count0_reg_n_0_[26] ,\count0_reg_n_0_[25] }));
  FDRE #(
    .INIT(1'b0)) 
    \count0_reg[29] 
       (.C(\count2_reg[0]_0 ),
        .CE(1'b1),
        .D(\count0_reg[31]_i_2__0_n_7 ),
        .Q(\count0_reg_n_0_[29] ),
        .R(\count0[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count0_reg[2] 
       (.C(\count2_reg[0]_0 ),
        .CE(1'b1),
        .D(\count0_reg[4]_i_1__0_n_6 ),
        .Q(\count0_reg_n_0_[2] ),
        .R(\count0[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count0_reg[30] 
       (.C(\count2_reg[0]_0 ),
        .CE(1'b1),
        .D(\count0_reg[31]_i_2__0_n_6 ),
        .Q(\count0_reg_n_0_[30] ),
        .R(\count0[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count0_reg[31] 
       (.C(\count2_reg[0]_0 ),
        .CE(1'b1),
        .D(\count0_reg[31]_i_2__0_n_5 ),
        .Q(\count0_reg_n_0_[31] ),
        .R(\count0[31]_i_1__0_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \count0_reg[31]_i_2__0 
       (.CI(\count0_reg[28]_i_1__0_n_0 ),
        .CO(\NLW_count0_reg[31]_i_2__0_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_count0_reg[31]_i_2__0_O_UNCONNECTED [3],\count0_reg[31]_i_2__0_n_5 ,\count0_reg[31]_i_2__0_n_6 ,\count0_reg[31]_i_2__0_n_7 }),
        .S({1'b0,\count0_reg_n_0_[31] ,\count0_reg_n_0_[30] ,\count0_reg_n_0_[29] }));
  FDRE #(
    .INIT(1'b0)) 
    \count0_reg[3] 
       (.C(\count2_reg[0]_0 ),
        .CE(1'b1),
        .D(\count0_reg[4]_i_1__0_n_5 ),
        .Q(\count0_reg_n_0_[3] ),
        .R(\count0[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count0_reg[4] 
       (.C(\count2_reg[0]_0 ),
        .CE(1'b1),
        .D(\count0_reg[4]_i_1__0_n_4 ),
        .Q(\count0_reg_n_0_[4] ),
        .R(\count0[31]_i_1__0_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \count0_reg[4]_i_1__0 
       (.CI(1'b0),
        .CO({\count0_reg[4]_i_1__0_n_0 ,\NLW_count0_reg[4]_i_1__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(\count0_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count0_reg[4]_i_1__0_n_4 ,\count0_reg[4]_i_1__0_n_5 ,\count0_reg[4]_i_1__0_n_6 ,\count0_reg[4]_i_1__0_n_7 }),
        .S({\count0_reg_n_0_[4] ,\count0_reg_n_0_[3] ,\count0_reg_n_0_[2] ,\count0_reg_n_0_[1] }));
  FDRE #(
    .INIT(1'b0)) 
    \count0_reg[5] 
       (.C(\count2_reg[0]_0 ),
        .CE(1'b1),
        .D(\count0_reg[8]_i_1__0_n_7 ),
        .Q(\count0_reg_n_0_[5] ),
        .R(\count0[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count0_reg[6] 
       (.C(\count2_reg[0]_0 ),
        .CE(1'b1),
        .D(\count0_reg[8]_i_1__0_n_6 ),
        .Q(\count0_reg_n_0_[6] ),
        .R(\count0[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count0_reg[7] 
       (.C(\count2_reg[0]_0 ),
        .CE(1'b1),
        .D(\count0_reg[8]_i_1__0_n_5 ),
        .Q(\count0_reg_n_0_[7] ),
        .R(\count0[31]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count0_reg[8] 
       (.C(\count2_reg[0]_0 ),
        .CE(1'b1),
        .D(\count0_reg[8]_i_1__0_n_4 ),
        .Q(\count0_reg_n_0_[8] ),
        .R(\count0[31]_i_1__0_n_0 ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \count0_reg[8]_i_1__0 
       (.CI(\count0_reg[4]_i_1__0_n_0 ),
        .CO({\count0_reg[8]_i_1__0_n_0 ,\NLW_count0_reg[8]_i_1__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count0_reg[8]_i_1__0_n_4 ,\count0_reg[8]_i_1__0_n_5 ,\count0_reg[8]_i_1__0_n_6 ,\count0_reg[8]_i_1__0_n_7 }),
        .S({\count0_reg_n_0_[8] ,\count0_reg_n_0_[7] ,\count0_reg_n_0_[6] ,\count0_reg_n_0_[5] }));
  FDRE #(
    .INIT(1'b0)) 
    \count0_reg[9] 
       (.C(\count2_reg[0]_0 ),
        .CE(1'b1),
        .D(\count0_reg[12]_i_1__0_n_7 ),
        .Q(\count0_reg_n_0_[9] ),
        .R(\count0[31]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \count1[0]_i_10__0 
       (.I0(count1_reg[6]),
        .I1(count1_reg[7]),
        .I2(count1_reg[8]),
        .I3(count1_reg[9]),
        .I4(count1_reg[10]),
        .I5(count1_reg[11]),
        .O(\count1[0]_i_10__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \count1[0]_i_11__0 
       (.I0(count1_reg[18]),
        .I1(count1_reg[19]),
        .I2(count1_reg[20]),
        .I3(count1_reg[21]),
        .I4(count1_reg[22]),
        .I5(count1_reg[23]),
        .O(\count1[0]_i_11__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \count1[0]_i_12__0 
       (.I0(count1_reg[12]),
        .I1(count1_reg[13]),
        .I2(count1_reg[14]),
        .I3(count1_reg[15]),
        .I4(count1_reg[16]),
        .I5(count1_reg[17]),
        .O(\count1[0]_i_12__0_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \count1[0]_i_13__0 
       (.I0(count1_reg[30]),
        .I1(count1_reg[31]),
        .O(\count1[0]_i_13__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFFFFFFFFFF)) 
    \count1[0]_i_14__0 
       (.I0(count1_reg[0]),
        .I1(count1_reg[1]),
        .I2(count1_reg[2]),
        .I3(count1_reg[3]),
        .I4(count1_reg[4]),
        .I5(count1_reg[5]),
        .O(\count1[0]_i_14__0_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \count1[0]_i_1__1 
       (.I0(\count0[31]_i_1__0_n_0 ),
        .I1(\count1[0]_i_3__0_n_0 ),
        .O(\count1[0]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \count1[0]_i_3__0 
       (.I0(\count1[0]_i_9__0_n_0 ),
        .I1(\count1[0]_i_10__0_n_0 ),
        .I2(\count1[0]_i_11__0_n_0 ),
        .I3(\count1[0]_i_12__0_n_0 ),
        .I4(\count1[0]_i_13__0_n_0 ),
        .I5(\count1[0]_i_14__0_n_0 ),
        .O(\count1[0]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count1[0]_i_4__0 
       (.I0(\count0[31]_i_1__0_n_0 ),
        .I1(count1_reg[0]),
        .O(\count1[0]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count1[0]_i_5__0 
       (.I0(\count0[31]_i_1__0_n_0 ),
        .I1(count1_reg[3]),
        .O(\count1[0]_i_5__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count1[0]_i_6__0 
       (.I0(\count0[31]_i_1__0_n_0 ),
        .I1(count1_reg[2]),
        .O(\count1[0]_i_6__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count1[0]_i_7__0 
       (.I0(\count0[31]_i_1__0_n_0 ),
        .I1(count1_reg[1]),
        .O(\count1[0]_i_7__0_n_0 ));
  LUT2 #(
    .INIT(4'h4)) 
    \count1[0]_i_8__0 
       (.I0(count1_reg[0]),
        .I1(\count0[31]_i_1__0_n_0 ),
        .O(\count1[0]_i_8__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \count1[0]_i_9__0 
       (.I0(count1_reg[24]),
        .I1(count1_reg[25]),
        .I2(count1_reg[26]),
        .I3(count1_reg[27]),
        .I4(count1_reg[28]),
        .I5(count1_reg[29]),
        .O(\count1[0]_i_9__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count1[12]_i_2__0 
       (.I0(\count0[31]_i_1__0_n_0 ),
        .I1(count1_reg[15]),
        .O(\count1[12]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count1[12]_i_3__0 
       (.I0(\count0[31]_i_1__0_n_0 ),
        .I1(count1_reg[14]),
        .O(\count1[12]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count1[12]_i_4__0 
       (.I0(\count0[31]_i_1__0_n_0 ),
        .I1(count1_reg[13]),
        .O(\count1[12]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count1[12]_i_5__0 
       (.I0(\count0[31]_i_1__0_n_0 ),
        .I1(count1_reg[12]),
        .O(\count1[12]_i_5__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count1[16]_i_2__0 
       (.I0(\count0[31]_i_1__0_n_0 ),
        .I1(count1_reg[19]),
        .O(\count1[16]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count1[16]_i_3__0 
       (.I0(\count0[31]_i_1__0_n_0 ),
        .I1(count1_reg[18]),
        .O(\count1[16]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count1[16]_i_4__0 
       (.I0(\count0[31]_i_1__0_n_0 ),
        .I1(count1_reg[17]),
        .O(\count1[16]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count1[16]_i_5__0 
       (.I0(\count0[31]_i_1__0_n_0 ),
        .I1(count1_reg[16]),
        .O(\count1[16]_i_5__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count1[20]_i_2__0 
       (.I0(\count0[31]_i_1__0_n_0 ),
        .I1(count1_reg[23]),
        .O(\count1[20]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count1[20]_i_3__0 
       (.I0(\count0[31]_i_1__0_n_0 ),
        .I1(count1_reg[22]),
        .O(\count1[20]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count1[20]_i_4__0 
       (.I0(\count0[31]_i_1__0_n_0 ),
        .I1(count1_reg[21]),
        .O(\count1[20]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count1[20]_i_5__0 
       (.I0(\count0[31]_i_1__0_n_0 ),
        .I1(count1_reg[20]),
        .O(\count1[20]_i_5__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count1[24]_i_2__0 
       (.I0(\count0[31]_i_1__0_n_0 ),
        .I1(count1_reg[27]),
        .O(\count1[24]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count1[24]_i_3__0 
       (.I0(\count0[31]_i_1__0_n_0 ),
        .I1(count1_reg[26]),
        .O(\count1[24]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count1[24]_i_4__0 
       (.I0(\count0[31]_i_1__0_n_0 ),
        .I1(count1_reg[25]),
        .O(\count1[24]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count1[24]_i_5__0 
       (.I0(\count0[31]_i_1__0_n_0 ),
        .I1(count1_reg[24]),
        .O(\count1[24]_i_5__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count1[28]_i_2__0 
       (.I0(\count0[31]_i_1__0_n_0 ),
        .I1(count1_reg[31]),
        .O(\count1[28]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count1[28]_i_3__0 
       (.I0(\count0[31]_i_1__0_n_0 ),
        .I1(count1_reg[30]),
        .O(\count1[28]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count1[28]_i_4__0 
       (.I0(\count0[31]_i_1__0_n_0 ),
        .I1(count1_reg[29]),
        .O(\count1[28]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count1[28]_i_5__0 
       (.I0(\count0[31]_i_1__0_n_0 ),
        .I1(count1_reg[28]),
        .O(\count1[28]_i_5__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count1[4]_i_2__0 
       (.I0(\count0[31]_i_1__0_n_0 ),
        .I1(count1_reg[7]),
        .O(\count1[4]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count1[4]_i_3__0 
       (.I0(\count0[31]_i_1__0_n_0 ),
        .I1(count1_reg[6]),
        .O(\count1[4]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count1[4]_i_4__0 
       (.I0(\count0[31]_i_1__0_n_0 ),
        .I1(count1_reg[5]),
        .O(\count1[4]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count1[4]_i_5__0 
       (.I0(\count0[31]_i_1__0_n_0 ),
        .I1(count1_reg[4]),
        .O(\count1[4]_i_5__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count1[8]_i_2__0 
       (.I0(\count0[31]_i_1__0_n_0 ),
        .I1(count1_reg[11]),
        .O(\count1[8]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count1[8]_i_3__0 
       (.I0(\count0[31]_i_1__0_n_0 ),
        .I1(count1_reg[10]),
        .O(\count1[8]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count1[8]_i_4__0 
       (.I0(\count0[31]_i_1__0_n_0 ),
        .I1(count1_reg[9]),
        .O(\count1[8]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count1[8]_i_5__0 
       (.I0(\count0[31]_i_1__0_n_0 ),
        .I1(count1_reg[8]),
        .O(\count1[8]_i_5__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[0] 
       (.C(\count2_reg[0]_0 ),
        .CE(\count1[0]_i_1__1_n_0 ),
        .D(\count1_reg[0]_i_2__0_n_7 ),
        .Q(count1_reg[0]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count1_reg[0]_i_2__0 
       (.CI(1'b0),
        .CO({\count1_reg[0]_i_2__0_n_0 ,\NLW_count1_reg[0]_i_2__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\count1[0]_i_4__0_n_0 }),
        .O({\count1_reg[0]_i_2__0_n_4 ,\count1_reg[0]_i_2__0_n_5 ,\count1_reg[0]_i_2__0_n_6 ,\count1_reg[0]_i_2__0_n_7 }),
        .S({\count1[0]_i_5__0_n_0 ,\count1[0]_i_6__0_n_0 ,\count1[0]_i_7__0_n_0 ,\count1[0]_i_8__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[10] 
       (.C(\count2_reg[0]_0 ),
        .CE(\count1[0]_i_1__1_n_0 ),
        .D(\count1_reg[8]_i_1__0_n_5 ),
        .Q(count1_reg[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[11] 
       (.C(\count2_reg[0]_0 ),
        .CE(\count1[0]_i_1__1_n_0 ),
        .D(\count1_reg[8]_i_1__0_n_4 ),
        .Q(count1_reg[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[12] 
       (.C(\count2_reg[0]_0 ),
        .CE(\count1[0]_i_1__1_n_0 ),
        .D(\count1_reg[12]_i_1__0_n_7 ),
        .Q(count1_reg[12]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count1_reg[12]_i_1__0 
       (.CI(\count1_reg[8]_i_1__0_n_0 ),
        .CO({\count1_reg[12]_i_1__0_n_0 ,\NLW_count1_reg[12]_i_1__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count1_reg[12]_i_1__0_n_4 ,\count1_reg[12]_i_1__0_n_5 ,\count1_reg[12]_i_1__0_n_6 ,\count1_reg[12]_i_1__0_n_7 }),
        .S({\count1[12]_i_2__0_n_0 ,\count1[12]_i_3__0_n_0 ,\count1[12]_i_4__0_n_0 ,\count1[12]_i_5__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[13] 
       (.C(\count2_reg[0]_0 ),
        .CE(\count1[0]_i_1__1_n_0 ),
        .D(\count1_reg[12]_i_1__0_n_6 ),
        .Q(count1_reg[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[14] 
       (.C(\count2_reg[0]_0 ),
        .CE(\count1[0]_i_1__1_n_0 ),
        .D(\count1_reg[12]_i_1__0_n_5 ),
        .Q(count1_reg[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[15] 
       (.C(\count2_reg[0]_0 ),
        .CE(\count1[0]_i_1__1_n_0 ),
        .D(\count1_reg[12]_i_1__0_n_4 ),
        .Q(count1_reg[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[16] 
       (.C(\count2_reg[0]_0 ),
        .CE(\count1[0]_i_1__1_n_0 ),
        .D(\count1_reg[16]_i_1__0_n_7 ),
        .Q(count1_reg[16]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count1_reg[16]_i_1__0 
       (.CI(\count1_reg[12]_i_1__0_n_0 ),
        .CO({\count1_reg[16]_i_1__0_n_0 ,\NLW_count1_reg[16]_i_1__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count1_reg[16]_i_1__0_n_4 ,\count1_reg[16]_i_1__0_n_5 ,\count1_reg[16]_i_1__0_n_6 ,\count1_reg[16]_i_1__0_n_7 }),
        .S({\count1[16]_i_2__0_n_0 ,\count1[16]_i_3__0_n_0 ,\count1[16]_i_4__0_n_0 ,\count1[16]_i_5__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[17] 
       (.C(\count2_reg[0]_0 ),
        .CE(\count1[0]_i_1__1_n_0 ),
        .D(\count1_reg[16]_i_1__0_n_6 ),
        .Q(count1_reg[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[18] 
       (.C(\count2_reg[0]_0 ),
        .CE(\count1[0]_i_1__1_n_0 ),
        .D(\count1_reg[16]_i_1__0_n_5 ),
        .Q(count1_reg[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[19] 
       (.C(\count2_reg[0]_0 ),
        .CE(\count1[0]_i_1__1_n_0 ),
        .D(\count1_reg[16]_i_1__0_n_4 ),
        .Q(count1_reg[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[1] 
       (.C(\count2_reg[0]_0 ),
        .CE(\count1[0]_i_1__1_n_0 ),
        .D(\count1_reg[0]_i_2__0_n_6 ),
        .Q(count1_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[20] 
       (.C(\count2_reg[0]_0 ),
        .CE(\count1[0]_i_1__1_n_0 ),
        .D(\count1_reg[20]_i_1__0_n_7 ),
        .Q(count1_reg[20]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count1_reg[20]_i_1__0 
       (.CI(\count1_reg[16]_i_1__0_n_0 ),
        .CO({\count1_reg[20]_i_1__0_n_0 ,\NLW_count1_reg[20]_i_1__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count1_reg[20]_i_1__0_n_4 ,\count1_reg[20]_i_1__0_n_5 ,\count1_reg[20]_i_1__0_n_6 ,\count1_reg[20]_i_1__0_n_7 }),
        .S({\count1[20]_i_2__0_n_0 ,\count1[20]_i_3__0_n_0 ,\count1[20]_i_4__0_n_0 ,\count1[20]_i_5__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[21] 
       (.C(\count2_reg[0]_0 ),
        .CE(\count1[0]_i_1__1_n_0 ),
        .D(\count1_reg[20]_i_1__0_n_6 ),
        .Q(count1_reg[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[22] 
       (.C(\count2_reg[0]_0 ),
        .CE(\count1[0]_i_1__1_n_0 ),
        .D(\count1_reg[20]_i_1__0_n_5 ),
        .Q(count1_reg[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[23] 
       (.C(\count2_reg[0]_0 ),
        .CE(\count1[0]_i_1__1_n_0 ),
        .D(\count1_reg[20]_i_1__0_n_4 ),
        .Q(count1_reg[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[24] 
       (.C(\count2_reg[0]_0 ),
        .CE(\count1[0]_i_1__1_n_0 ),
        .D(\count1_reg[24]_i_1__0_n_7 ),
        .Q(count1_reg[24]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count1_reg[24]_i_1__0 
       (.CI(\count1_reg[20]_i_1__0_n_0 ),
        .CO({\count1_reg[24]_i_1__0_n_0 ,\NLW_count1_reg[24]_i_1__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count1_reg[24]_i_1__0_n_4 ,\count1_reg[24]_i_1__0_n_5 ,\count1_reg[24]_i_1__0_n_6 ,\count1_reg[24]_i_1__0_n_7 }),
        .S({\count1[24]_i_2__0_n_0 ,\count1[24]_i_3__0_n_0 ,\count1[24]_i_4__0_n_0 ,\count1[24]_i_5__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[25] 
       (.C(\count2_reg[0]_0 ),
        .CE(\count1[0]_i_1__1_n_0 ),
        .D(\count1_reg[24]_i_1__0_n_6 ),
        .Q(count1_reg[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[26] 
       (.C(\count2_reg[0]_0 ),
        .CE(\count1[0]_i_1__1_n_0 ),
        .D(\count1_reg[24]_i_1__0_n_5 ),
        .Q(count1_reg[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[27] 
       (.C(\count2_reg[0]_0 ),
        .CE(\count1[0]_i_1__1_n_0 ),
        .D(\count1_reg[24]_i_1__0_n_4 ),
        .Q(count1_reg[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[28] 
       (.C(\count2_reg[0]_0 ),
        .CE(\count1[0]_i_1__1_n_0 ),
        .D(\count1_reg[28]_i_1__0_n_7 ),
        .Q(count1_reg[28]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count1_reg[28]_i_1__0 
       (.CI(\count1_reg[24]_i_1__0_n_0 ),
        .CO(\NLW_count1_reg[28]_i_1__0_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count1_reg[28]_i_1__0_n_4 ,\count1_reg[28]_i_1__0_n_5 ,\count1_reg[28]_i_1__0_n_6 ,\count1_reg[28]_i_1__0_n_7 }),
        .S({\count1[28]_i_2__0_n_0 ,\count1[28]_i_3__0_n_0 ,\count1[28]_i_4__0_n_0 ,\count1[28]_i_5__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[29] 
       (.C(\count2_reg[0]_0 ),
        .CE(\count1[0]_i_1__1_n_0 ),
        .D(\count1_reg[28]_i_1__0_n_6 ),
        .Q(count1_reg[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[2] 
       (.C(\count2_reg[0]_0 ),
        .CE(\count1[0]_i_1__1_n_0 ),
        .D(\count1_reg[0]_i_2__0_n_5 ),
        .Q(count1_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[30] 
       (.C(\count2_reg[0]_0 ),
        .CE(\count1[0]_i_1__1_n_0 ),
        .D(\count1_reg[28]_i_1__0_n_5 ),
        .Q(count1_reg[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[31] 
       (.C(\count2_reg[0]_0 ),
        .CE(\count1[0]_i_1__1_n_0 ),
        .D(\count1_reg[28]_i_1__0_n_4 ),
        .Q(count1_reg[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[3] 
       (.C(\count2_reg[0]_0 ),
        .CE(\count1[0]_i_1__1_n_0 ),
        .D(\count1_reg[0]_i_2__0_n_4 ),
        .Q(count1_reg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[4] 
       (.C(\count2_reg[0]_0 ),
        .CE(\count1[0]_i_1__1_n_0 ),
        .D(\count1_reg[4]_i_1__0_n_7 ),
        .Q(count1_reg[4]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count1_reg[4]_i_1__0 
       (.CI(\count1_reg[0]_i_2__0_n_0 ),
        .CO({\count1_reg[4]_i_1__0_n_0 ,\NLW_count1_reg[4]_i_1__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count1_reg[4]_i_1__0_n_4 ,\count1_reg[4]_i_1__0_n_5 ,\count1_reg[4]_i_1__0_n_6 ,\count1_reg[4]_i_1__0_n_7 }),
        .S({\count1[4]_i_2__0_n_0 ,\count1[4]_i_3__0_n_0 ,\count1[4]_i_4__0_n_0 ,\count1[4]_i_5__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[5] 
       (.C(\count2_reg[0]_0 ),
        .CE(\count1[0]_i_1__1_n_0 ),
        .D(\count1_reg[4]_i_1__0_n_6 ),
        .Q(count1_reg[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[6] 
       (.C(\count2_reg[0]_0 ),
        .CE(\count1[0]_i_1__1_n_0 ),
        .D(\count1_reg[4]_i_1__0_n_5 ),
        .Q(count1_reg[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[7] 
       (.C(\count2_reg[0]_0 ),
        .CE(\count1[0]_i_1__1_n_0 ),
        .D(\count1_reg[4]_i_1__0_n_4 ),
        .Q(count1_reg[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[8] 
       (.C(\count2_reg[0]_0 ),
        .CE(\count1[0]_i_1__1_n_0 ),
        .D(\count1_reg[8]_i_1__0_n_7 ),
        .Q(count1_reg[8]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count1_reg[8]_i_1__0 
       (.CI(\count1_reg[4]_i_1__0_n_0 ),
        .CO({\count1_reg[8]_i_1__0_n_0 ,\NLW_count1_reg[8]_i_1__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count1_reg[8]_i_1__0_n_4 ,\count1_reg[8]_i_1__0_n_5 ,\count1_reg[8]_i_1__0_n_6 ,\count1_reg[8]_i_1__0_n_7 }),
        .S({\count1[8]_i_2__0_n_0 ,\count1[8]_i_3__0_n_0 ,\count1[8]_i_4__0_n_0 ,\count1[8]_i_5__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[9] 
       (.C(\count2_reg[0]_0 ),
        .CE(\count1[0]_i_1__1_n_0 ),
        .D(\count1_reg[8]_i_1__0_n_6 ),
        .Q(count1_reg[9]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \count2[0]_i_10__0 
       (.I0(count2_reg[6]),
        .I1(count2_reg[7]),
        .I2(count2_reg[8]),
        .I3(count2_reg[9]),
        .I4(count2_reg[10]),
        .I5(count2_reg[11]),
        .O(\count2[0]_i_10__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \count2[0]_i_11__0 
       (.I0(count2_reg[18]),
        .I1(count2_reg[19]),
        .I2(count2_reg[20]),
        .I3(count2_reg[21]),
        .I4(count2_reg[22]),
        .I5(count2_reg[23]),
        .O(\count2[0]_i_11__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \count2[0]_i_12__0 
       (.I0(count2_reg[12]),
        .I1(count2_reg[13]),
        .I2(count2_reg[14]),
        .I3(count2_reg[15]),
        .I4(count2_reg[16]),
        .I5(count2_reg[17]),
        .O(\count2[0]_i_12__0_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \count2[0]_i_13__0 
       (.I0(count2_reg[30]),
        .I1(count2_reg[31]),
        .O(\count2[0]_i_13__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFFFFFFFFFF)) 
    \count2[0]_i_14__0 
       (.I0(count2_reg[0]),
        .I1(count2_reg[1]),
        .I2(count2_reg[2]),
        .I3(count2_reg[3]),
        .I4(count2_reg[4]),
        .I5(count2_reg[5]),
        .O(\count2[0]_i_14__0_n_0 ));
  LUT3 #(
    .INIT(8'h0E)) 
    \count2[0]_i_1__1 
       (.I0(\count2[0]_i_3__0_n_0 ),
        .I1(\count1[0]_i_3__0_n_0 ),
        .I2(\count0[31]_i_1__0_n_0 ),
        .O(\count2[0]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \count2[0]_i_3__0 
       (.I0(\count2[0]_i_9__0_n_0 ),
        .I1(\count2[0]_i_10__0_n_0 ),
        .I2(\count2[0]_i_11__0_n_0 ),
        .I3(\count2[0]_i_12__0_n_0 ),
        .I4(\count2[0]_i_13__0_n_0 ),
        .I5(\count2[0]_i_14__0_n_0 ),
        .O(\count2[0]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count2[0]_i_4__0 
       (.I0(\count1[0]_i_3__0_n_0 ),
        .I1(count2_reg[0]),
        .O(\count2[0]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count2[0]_i_5__0 
       (.I0(\count1[0]_i_3__0_n_0 ),
        .I1(count2_reg[3]),
        .O(\count2[0]_i_5__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count2[0]_i_6__0 
       (.I0(\count1[0]_i_3__0_n_0 ),
        .I1(count2_reg[2]),
        .O(\count2[0]_i_6__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count2[0]_i_7__0 
       (.I0(\count1[0]_i_3__0_n_0 ),
        .I1(count2_reg[1]),
        .O(\count2[0]_i_7__0_n_0 ));
  LUT2 #(
    .INIT(4'h4)) 
    \count2[0]_i_8__0 
       (.I0(count2_reg[0]),
        .I1(\count1[0]_i_3__0_n_0 ),
        .O(\count2[0]_i_8__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \count2[0]_i_9__0 
       (.I0(count2_reg[24]),
        .I1(count2_reg[25]),
        .I2(count2_reg[26]),
        .I3(count2_reg[27]),
        .I4(count2_reg[28]),
        .I5(count2_reg[29]),
        .O(\count2[0]_i_9__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count2[12]_i_2__0 
       (.I0(\count1[0]_i_3__0_n_0 ),
        .I1(count2_reg[15]),
        .O(\count2[12]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count2[12]_i_3__0 
       (.I0(\count1[0]_i_3__0_n_0 ),
        .I1(count2_reg[14]),
        .O(\count2[12]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count2[12]_i_4__0 
       (.I0(\count1[0]_i_3__0_n_0 ),
        .I1(count2_reg[13]),
        .O(\count2[12]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count2[12]_i_5__0 
       (.I0(\count1[0]_i_3__0_n_0 ),
        .I1(count2_reg[12]),
        .O(\count2[12]_i_5__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count2[16]_i_2__0 
       (.I0(\count1[0]_i_3__0_n_0 ),
        .I1(count2_reg[19]),
        .O(\count2[16]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count2[16]_i_3__0 
       (.I0(\count1[0]_i_3__0_n_0 ),
        .I1(count2_reg[18]),
        .O(\count2[16]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count2[16]_i_4__0 
       (.I0(\count1[0]_i_3__0_n_0 ),
        .I1(count2_reg[17]),
        .O(\count2[16]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count2[16]_i_5__0 
       (.I0(\count1[0]_i_3__0_n_0 ),
        .I1(count2_reg[16]),
        .O(\count2[16]_i_5__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count2[20]_i_2__0 
       (.I0(\count1[0]_i_3__0_n_0 ),
        .I1(count2_reg[23]),
        .O(\count2[20]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count2[20]_i_3__0 
       (.I0(\count1[0]_i_3__0_n_0 ),
        .I1(count2_reg[22]),
        .O(\count2[20]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count2[20]_i_4__0 
       (.I0(\count1[0]_i_3__0_n_0 ),
        .I1(count2_reg[21]),
        .O(\count2[20]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count2[20]_i_5__0 
       (.I0(\count1[0]_i_3__0_n_0 ),
        .I1(count2_reg[20]),
        .O(\count2[20]_i_5__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count2[24]_i_2__0 
       (.I0(\count1[0]_i_3__0_n_0 ),
        .I1(count2_reg[27]),
        .O(\count2[24]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count2[24]_i_3__0 
       (.I0(\count1[0]_i_3__0_n_0 ),
        .I1(count2_reg[26]),
        .O(\count2[24]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count2[24]_i_4__0 
       (.I0(\count1[0]_i_3__0_n_0 ),
        .I1(count2_reg[25]),
        .O(\count2[24]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count2[24]_i_5__0 
       (.I0(\count1[0]_i_3__0_n_0 ),
        .I1(count2_reg[24]),
        .O(\count2[24]_i_5__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count2[28]_i_2__0 
       (.I0(\count1[0]_i_3__0_n_0 ),
        .I1(count2_reg[31]),
        .O(\count2[28]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count2[28]_i_3__0 
       (.I0(\count1[0]_i_3__0_n_0 ),
        .I1(count2_reg[30]),
        .O(\count2[28]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count2[28]_i_4__0 
       (.I0(\count1[0]_i_3__0_n_0 ),
        .I1(count2_reg[29]),
        .O(\count2[28]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count2[28]_i_5__0 
       (.I0(\count1[0]_i_3__0_n_0 ),
        .I1(count2_reg[28]),
        .O(\count2[28]_i_5__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count2[4]_i_2__0 
       (.I0(\count1[0]_i_3__0_n_0 ),
        .I1(count2_reg[7]),
        .O(\count2[4]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count2[4]_i_3__0 
       (.I0(\count1[0]_i_3__0_n_0 ),
        .I1(count2_reg[6]),
        .O(\count2[4]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count2[4]_i_4__0 
       (.I0(\count1[0]_i_3__0_n_0 ),
        .I1(count2_reg[5]),
        .O(\count2[4]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count2[4]_i_5__0 
       (.I0(\count1[0]_i_3__0_n_0 ),
        .I1(count2_reg[4]),
        .O(\count2[4]_i_5__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count2[8]_i_2__0 
       (.I0(\count1[0]_i_3__0_n_0 ),
        .I1(count2_reg[11]),
        .O(\count2[8]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count2[8]_i_3__0 
       (.I0(\count1[0]_i_3__0_n_0 ),
        .I1(count2_reg[10]),
        .O(\count2[8]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count2[8]_i_4__0 
       (.I0(\count1[0]_i_3__0_n_0 ),
        .I1(count2_reg[9]),
        .O(\count2[8]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count2[8]_i_5__0 
       (.I0(\count1[0]_i_3__0_n_0 ),
        .I1(count2_reg[8]),
        .O(\count2[8]_i_5__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count2_reg[0] 
       (.C(\count2_reg[0]_0 ),
        .CE(\count2[0]_i_1__1_n_0 ),
        .D(\count2_reg[0]_i_2__0_n_7 ),
        .Q(count2_reg[0]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count2_reg[0]_i_2__0 
       (.CI(1'b0),
        .CO({\count2_reg[0]_i_2__0_n_0 ,\NLW_count2_reg[0]_i_2__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\count2[0]_i_4__0_n_0 }),
        .O({\count2_reg[0]_i_2__0_n_4 ,\count2_reg[0]_i_2__0_n_5 ,\count2_reg[0]_i_2__0_n_6 ,\count2_reg[0]_i_2__0_n_7 }),
        .S({\count2[0]_i_5__0_n_0 ,\count2[0]_i_6__0_n_0 ,\count2[0]_i_7__0_n_0 ,\count2[0]_i_8__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count2_reg[10] 
       (.C(\count2_reg[0]_0 ),
        .CE(\count2[0]_i_1__1_n_0 ),
        .D(\count2_reg[8]_i_1__0_n_5 ),
        .Q(count2_reg[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count2_reg[11] 
       (.C(\count2_reg[0]_0 ),
        .CE(\count2[0]_i_1__1_n_0 ),
        .D(\count2_reg[8]_i_1__0_n_4 ),
        .Q(count2_reg[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count2_reg[12] 
       (.C(\count2_reg[0]_0 ),
        .CE(\count2[0]_i_1__1_n_0 ),
        .D(\count2_reg[12]_i_1__0_n_7 ),
        .Q(count2_reg[12]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count2_reg[12]_i_1__0 
       (.CI(\count2_reg[8]_i_1__0_n_0 ),
        .CO({\count2_reg[12]_i_1__0_n_0 ,\NLW_count2_reg[12]_i_1__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count2_reg[12]_i_1__0_n_4 ,\count2_reg[12]_i_1__0_n_5 ,\count2_reg[12]_i_1__0_n_6 ,\count2_reg[12]_i_1__0_n_7 }),
        .S({\count2[12]_i_2__0_n_0 ,\count2[12]_i_3__0_n_0 ,\count2[12]_i_4__0_n_0 ,\count2[12]_i_5__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count2_reg[13] 
       (.C(\count2_reg[0]_0 ),
        .CE(\count2[0]_i_1__1_n_0 ),
        .D(\count2_reg[12]_i_1__0_n_6 ),
        .Q(count2_reg[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count2_reg[14] 
       (.C(\count2_reg[0]_0 ),
        .CE(\count2[0]_i_1__1_n_0 ),
        .D(\count2_reg[12]_i_1__0_n_5 ),
        .Q(count2_reg[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count2_reg[15] 
       (.C(\count2_reg[0]_0 ),
        .CE(\count2[0]_i_1__1_n_0 ),
        .D(\count2_reg[12]_i_1__0_n_4 ),
        .Q(count2_reg[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count2_reg[16] 
       (.C(\count2_reg[0]_0 ),
        .CE(\count2[0]_i_1__1_n_0 ),
        .D(\count2_reg[16]_i_1__0_n_7 ),
        .Q(count2_reg[16]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count2_reg[16]_i_1__0 
       (.CI(\count2_reg[12]_i_1__0_n_0 ),
        .CO({\count2_reg[16]_i_1__0_n_0 ,\NLW_count2_reg[16]_i_1__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count2_reg[16]_i_1__0_n_4 ,\count2_reg[16]_i_1__0_n_5 ,\count2_reg[16]_i_1__0_n_6 ,\count2_reg[16]_i_1__0_n_7 }),
        .S({\count2[16]_i_2__0_n_0 ,\count2[16]_i_3__0_n_0 ,\count2[16]_i_4__0_n_0 ,\count2[16]_i_5__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count2_reg[17] 
       (.C(\count2_reg[0]_0 ),
        .CE(\count2[0]_i_1__1_n_0 ),
        .D(\count2_reg[16]_i_1__0_n_6 ),
        .Q(count2_reg[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count2_reg[18] 
       (.C(\count2_reg[0]_0 ),
        .CE(\count2[0]_i_1__1_n_0 ),
        .D(\count2_reg[16]_i_1__0_n_5 ),
        .Q(count2_reg[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count2_reg[19] 
       (.C(\count2_reg[0]_0 ),
        .CE(\count2[0]_i_1__1_n_0 ),
        .D(\count2_reg[16]_i_1__0_n_4 ),
        .Q(count2_reg[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count2_reg[1] 
       (.C(\count2_reg[0]_0 ),
        .CE(\count2[0]_i_1__1_n_0 ),
        .D(\count2_reg[0]_i_2__0_n_6 ),
        .Q(count2_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count2_reg[20] 
       (.C(\count2_reg[0]_0 ),
        .CE(\count2[0]_i_1__1_n_0 ),
        .D(\count2_reg[20]_i_1__0_n_7 ),
        .Q(count2_reg[20]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count2_reg[20]_i_1__0 
       (.CI(\count2_reg[16]_i_1__0_n_0 ),
        .CO({\count2_reg[20]_i_1__0_n_0 ,\NLW_count2_reg[20]_i_1__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count2_reg[20]_i_1__0_n_4 ,\count2_reg[20]_i_1__0_n_5 ,\count2_reg[20]_i_1__0_n_6 ,\count2_reg[20]_i_1__0_n_7 }),
        .S({\count2[20]_i_2__0_n_0 ,\count2[20]_i_3__0_n_0 ,\count2[20]_i_4__0_n_0 ,\count2[20]_i_5__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count2_reg[21] 
       (.C(\count2_reg[0]_0 ),
        .CE(\count2[0]_i_1__1_n_0 ),
        .D(\count2_reg[20]_i_1__0_n_6 ),
        .Q(count2_reg[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count2_reg[22] 
       (.C(\count2_reg[0]_0 ),
        .CE(\count2[0]_i_1__1_n_0 ),
        .D(\count2_reg[20]_i_1__0_n_5 ),
        .Q(count2_reg[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count2_reg[23] 
       (.C(\count2_reg[0]_0 ),
        .CE(\count2[0]_i_1__1_n_0 ),
        .D(\count2_reg[20]_i_1__0_n_4 ),
        .Q(count2_reg[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count2_reg[24] 
       (.C(\count2_reg[0]_0 ),
        .CE(\count2[0]_i_1__1_n_0 ),
        .D(\count2_reg[24]_i_1__0_n_7 ),
        .Q(count2_reg[24]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count2_reg[24]_i_1__0 
       (.CI(\count2_reg[20]_i_1__0_n_0 ),
        .CO({\count2_reg[24]_i_1__0_n_0 ,\NLW_count2_reg[24]_i_1__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count2_reg[24]_i_1__0_n_4 ,\count2_reg[24]_i_1__0_n_5 ,\count2_reg[24]_i_1__0_n_6 ,\count2_reg[24]_i_1__0_n_7 }),
        .S({\count2[24]_i_2__0_n_0 ,\count2[24]_i_3__0_n_0 ,\count2[24]_i_4__0_n_0 ,\count2[24]_i_5__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count2_reg[25] 
       (.C(\count2_reg[0]_0 ),
        .CE(\count2[0]_i_1__1_n_0 ),
        .D(\count2_reg[24]_i_1__0_n_6 ),
        .Q(count2_reg[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count2_reg[26] 
       (.C(\count2_reg[0]_0 ),
        .CE(\count2[0]_i_1__1_n_0 ),
        .D(\count2_reg[24]_i_1__0_n_5 ),
        .Q(count2_reg[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count2_reg[27] 
       (.C(\count2_reg[0]_0 ),
        .CE(\count2[0]_i_1__1_n_0 ),
        .D(\count2_reg[24]_i_1__0_n_4 ),
        .Q(count2_reg[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count2_reg[28] 
       (.C(\count2_reg[0]_0 ),
        .CE(\count2[0]_i_1__1_n_0 ),
        .D(\count2_reg[28]_i_1__0_n_7 ),
        .Q(count2_reg[28]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count2_reg[28]_i_1__0 
       (.CI(\count2_reg[24]_i_1__0_n_0 ),
        .CO(\NLW_count2_reg[28]_i_1__0_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count2_reg[28]_i_1__0_n_4 ,\count2_reg[28]_i_1__0_n_5 ,\count2_reg[28]_i_1__0_n_6 ,\count2_reg[28]_i_1__0_n_7 }),
        .S({\count2[28]_i_2__0_n_0 ,\count2[28]_i_3__0_n_0 ,\count2[28]_i_4__0_n_0 ,\count2[28]_i_5__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count2_reg[29] 
       (.C(\count2_reg[0]_0 ),
        .CE(\count2[0]_i_1__1_n_0 ),
        .D(\count2_reg[28]_i_1__0_n_6 ),
        .Q(count2_reg[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count2_reg[2] 
       (.C(\count2_reg[0]_0 ),
        .CE(\count2[0]_i_1__1_n_0 ),
        .D(\count2_reg[0]_i_2__0_n_5 ),
        .Q(count2_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count2_reg[30] 
       (.C(\count2_reg[0]_0 ),
        .CE(\count2[0]_i_1__1_n_0 ),
        .D(\count2_reg[28]_i_1__0_n_5 ),
        .Q(count2_reg[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count2_reg[31] 
       (.C(\count2_reg[0]_0 ),
        .CE(\count2[0]_i_1__1_n_0 ),
        .D(\count2_reg[28]_i_1__0_n_4 ),
        .Q(count2_reg[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count2_reg[3] 
       (.C(\count2_reg[0]_0 ),
        .CE(\count2[0]_i_1__1_n_0 ),
        .D(\count2_reg[0]_i_2__0_n_4 ),
        .Q(count2_reg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count2_reg[4] 
       (.C(\count2_reg[0]_0 ),
        .CE(\count2[0]_i_1__1_n_0 ),
        .D(\count2_reg[4]_i_1__0_n_7 ),
        .Q(count2_reg[4]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count2_reg[4]_i_1__0 
       (.CI(\count2_reg[0]_i_2__0_n_0 ),
        .CO({\count2_reg[4]_i_1__0_n_0 ,\NLW_count2_reg[4]_i_1__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count2_reg[4]_i_1__0_n_4 ,\count2_reg[4]_i_1__0_n_5 ,\count2_reg[4]_i_1__0_n_6 ,\count2_reg[4]_i_1__0_n_7 }),
        .S({\count2[4]_i_2__0_n_0 ,\count2[4]_i_3__0_n_0 ,\count2[4]_i_4__0_n_0 ,\count2[4]_i_5__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count2_reg[5] 
       (.C(\count2_reg[0]_0 ),
        .CE(\count2[0]_i_1__1_n_0 ),
        .D(\count2_reg[4]_i_1__0_n_6 ),
        .Q(count2_reg[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count2_reg[6] 
       (.C(\count2_reg[0]_0 ),
        .CE(\count2[0]_i_1__1_n_0 ),
        .D(\count2_reg[4]_i_1__0_n_5 ),
        .Q(count2_reg[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count2_reg[7] 
       (.C(\count2_reg[0]_0 ),
        .CE(\count2[0]_i_1__1_n_0 ),
        .D(\count2_reg[4]_i_1__0_n_4 ),
        .Q(count2_reg[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count2_reg[8] 
       (.C(\count2_reg[0]_0 ),
        .CE(\count2[0]_i_1__1_n_0 ),
        .D(\count2_reg[8]_i_1__0_n_7 ),
        .Q(count2_reg[8]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count2_reg[8]_i_1__0 
       (.CI(\count2_reg[4]_i_1__0_n_0 ),
        .CO({\count2_reg[8]_i_1__0_n_0 ,\NLW_count2_reg[8]_i_1__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count2_reg[8]_i_1__0_n_4 ,\count2_reg[8]_i_1__0_n_5 ,\count2_reg[8]_i_1__0_n_6 ,\count2_reg[8]_i_1__0_n_7 }),
        .S({\count2[8]_i_2__0_n_0 ,\count2[8]_i_3__0_n_0 ,\count2[8]_i_4__0_n_0 ,\count2[8]_i_5__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count2_reg[9] 
       (.C(\count2_reg[0]_0 ),
        .CE(\count2[0]_i_1__1_n_0 ),
        .D(\count2_reg[8]_i_1__0_n_6 ),
        .Q(count2_reg[9]),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \count3[0]_i_10__0 
       (.I0(sel0__2[26]),
        .I1(sel0__2[27]),
        .I2(sel0__2[24]),
        .I3(sel0__2[25]),
        .O(\count3[0]_i_10__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \count3[0]_i_11__0 
       (.I0(sel0__2[21]),
        .I1(sel0__2[20]),
        .I2(sel0__2[23]),
        .I3(sel0__2[22]),
        .I4(\count3[0]_i_14__0_n_0 ),
        .O(\count3[0]_i_11__0_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \count3[0]_i_12__0 
       (.I0(sel0__2[10]),
        .I1(sel0__2[11]),
        .I2(sel0__2[8]),
        .I3(sel0__2[9]),
        .O(\count3[0]_i_12__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \count3[0]_i_13__0 
       (.I0(sel0__2[2]),
        .I1(sel0__2[0]),
        .I2(sel0__2[7]),
        .I3(sel0__2[6]),
        .I4(\count3[0]_i_15__0_n_0 ),
        .O(\count3[0]_i_13__0_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \count3[0]_i_14__0 
       (.I0(sel0__2[18]),
        .I1(sel0__2[19]),
        .I2(sel0__2[16]),
        .I3(sel0__2[17]),
        .O(\count3[0]_i_14__0_n_0 ));
  LUT4 #(
    .INIT(16'hDFFF)) 
    \count3[0]_i_15__0 
       (.I0(sel0__2[5]),
        .I1(sel0__2[3]),
        .I2(sel0__2[4]),
        .I3(sel0__2[1]),
        .O(\count3[0]_i_15__0_n_0 ));
  LUT5 #(
    .INIT(32'h11110001)) 
    \count3[0]_i_1__1 
       (.I0(\count0[31]_i_1__0_n_0 ),
        .I1(\count1[0]_i_3__0_n_0 ),
        .I2(\count3[0]_i_3__0_n_0 ),
        .I3(\count3[0]_i_4__0_n_0 ),
        .I4(\count2[0]_i_3__0_n_0 ),
        .O(\count3[0]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \count3[0]_i_3__0 
       (.I0(\count3[0]_i_10__0_n_0 ),
        .I1(sel0__2[31]),
        .I2(sel0__2[30]),
        .I3(sel0__2[28]),
        .I4(sel0__2[29]),
        .I5(\count3[0]_i_11__0_n_0 ),
        .O(\count3[0]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \count3[0]_i_4__0 
       (.I0(\count3[0]_i_12__0_n_0 ),
        .I1(sel0__2[14]),
        .I2(sel0__2[15]),
        .I3(sel0__2[12]),
        .I4(sel0__2[13]),
        .I5(\count3[0]_i_13__0_n_0 ),
        .O(\count3[0]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count3[0]_i_5__0 
       (.I0(\count2[0]_i_3__0_n_0 ),
        .I1(sel0__2[0]),
        .O(\count3[0]_i_5__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count3[0]_i_6__0 
       (.I0(\count2[0]_i_3__0_n_0 ),
        .I1(sel0__2[3]),
        .O(\count3[0]_i_6__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count3[0]_i_7__0 
       (.I0(\count2[0]_i_3__0_n_0 ),
        .I1(sel0__2[2]),
        .O(\count3[0]_i_7__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count3[0]_i_8__0 
       (.I0(\count2[0]_i_3__0_n_0 ),
        .I1(sel0__2[1]),
        .O(\count3[0]_i_8__0_n_0 ));
  LUT2 #(
    .INIT(4'h4)) 
    \count3[0]_i_9__0 
       (.I0(sel0__2[0]),
        .I1(\count2[0]_i_3__0_n_0 ),
        .O(\count3[0]_i_9__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count3[12]_i_2__0 
       (.I0(\count2[0]_i_3__0_n_0 ),
        .I1(sel0__2[15]),
        .O(\count3[12]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count3[12]_i_3__0 
       (.I0(\count2[0]_i_3__0_n_0 ),
        .I1(sel0__2[14]),
        .O(\count3[12]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count3[12]_i_4__0 
       (.I0(\count2[0]_i_3__0_n_0 ),
        .I1(sel0__2[13]),
        .O(\count3[12]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count3[12]_i_5__0 
       (.I0(\count2[0]_i_3__0_n_0 ),
        .I1(sel0__2[12]),
        .O(\count3[12]_i_5__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count3[16]_i_2__0 
       (.I0(\count2[0]_i_3__0_n_0 ),
        .I1(sel0__2[19]),
        .O(\count3[16]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count3[16]_i_3__0 
       (.I0(\count2[0]_i_3__0_n_0 ),
        .I1(sel0__2[18]),
        .O(\count3[16]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count3[16]_i_4__0 
       (.I0(\count2[0]_i_3__0_n_0 ),
        .I1(sel0__2[17]),
        .O(\count3[16]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count3[16]_i_5__0 
       (.I0(\count2[0]_i_3__0_n_0 ),
        .I1(sel0__2[16]),
        .O(\count3[16]_i_5__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count3[20]_i_2__0 
       (.I0(\count2[0]_i_3__0_n_0 ),
        .I1(sel0__2[23]),
        .O(\count3[20]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count3[20]_i_3__0 
       (.I0(\count2[0]_i_3__0_n_0 ),
        .I1(sel0__2[22]),
        .O(\count3[20]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count3[20]_i_4__0 
       (.I0(\count2[0]_i_3__0_n_0 ),
        .I1(sel0__2[21]),
        .O(\count3[20]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count3[20]_i_5__0 
       (.I0(\count2[0]_i_3__0_n_0 ),
        .I1(sel0__2[20]),
        .O(\count3[20]_i_5__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count3[24]_i_2__0 
       (.I0(\count2[0]_i_3__0_n_0 ),
        .I1(sel0__2[27]),
        .O(\count3[24]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count3[24]_i_3__0 
       (.I0(\count2[0]_i_3__0_n_0 ),
        .I1(sel0__2[26]),
        .O(\count3[24]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count3[24]_i_4__0 
       (.I0(\count2[0]_i_3__0_n_0 ),
        .I1(sel0__2[25]),
        .O(\count3[24]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count3[24]_i_5__0 
       (.I0(\count2[0]_i_3__0_n_0 ),
        .I1(sel0__2[24]),
        .O(\count3[24]_i_5__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count3[28]_i_2__0 
       (.I0(\count2[0]_i_3__0_n_0 ),
        .I1(sel0__2[31]),
        .O(\count3[28]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count3[28]_i_3__0 
       (.I0(\count2[0]_i_3__0_n_0 ),
        .I1(sel0__2[30]),
        .O(\count3[28]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count3[28]_i_4__0 
       (.I0(\count2[0]_i_3__0_n_0 ),
        .I1(sel0__2[29]),
        .O(\count3[28]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count3[28]_i_5__0 
       (.I0(\count2[0]_i_3__0_n_0 ),
        .I1(sel0__2[28]),
        .O(\count3[28]_i_5__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count3[4]_i_2__0 
       (.I0(\count2[0]_i_3__0_n_0 ),
        .I1(sel0__2[7]),
        .O(\count3[4]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count3[4]_i_3__0 
       (.I0(\count2[0]_i_3__0_n_0 ),
        .I1(sel0__2[6]),
        .O(\count3[4]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count3[4]_i_4__0 
       (.I0(\count2[0]_i_3__0_n_0 ),
        .I1(sel0__2[5]),
        .O(\count3[4]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count3[4]_i_5__0 
       (.I0(\count2[0]_i_3__0_n_0 ),
        .I1(sel0__2[4]),
        .O(\count3[4]_i_5__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count3[8]_i_2__0 
       (.I0(\count2[0]_i_3__0_n_0 ),
        .I1(sel0__2[11]),
        .O(\count3[8]_i_2__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count3[8]_i_3__0 
       (.I0(\count2[0]_i_3__0_n_0 ),
        .I1(sel0__2[10]),
        .O(\count3[8]_i_3__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count3[8]_i_4__0 
       (.I0(\count2[0]_i_3__0_n_0 ),
        .I1(sel0__2[9]),
        .O(\count3[8]_i_4__0_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \count3[8]_i_5__0 
       (.I0(\count2[0]_i_3__0_n_0 ),
        .I1(sel0__2[8]),
        .O(\count3[8]_i_5__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count3_reg[0] 
       (.C(\count2_reg[0]_0 ),
        .CE(\count3[0]_i_1__1_n_0 ),
        .D(\count3_reg[0]_i_2__0_n_7 ),
        .Q(sel0__2[0]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count3_reg[0]_i_2__0 
       (.CI(1'b0),
        .CO({\count3_reg[0]_i_2__0_n_0 ,\NLW_count3_reg[0]_i_2__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\count3[0]_i_5__0_n_0 }),
        .O({\count3_reg[0]_i_2__0_n_4 ,\count3_reg[0]_i_2__0_n_5 ,\count3_reg[0]_i_2__0_n_6 ,\count3_reg[0]_i_2__0_n_7 }),
        .S({\count3[0]_i_6__0_n_0 ,\count3[0]_i_7__0_n_0 ,\count3[0]_i_8__0_n_0 ,\count3[0]_i_9__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count3_reg[10] 
       (.C(\count2_reg[0]_0 ),
        .CE(\count3[0]_i_1__1_n_0 ),
        .D(\count3_reg[8]_i_1__0_n_5 ),
        .Q(sel0__2[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count3_reg[11] 
       (.C(\count2_reg[0]_0 ),
        .CE(\count3[0]_i_1__1_n_0 ),
        .D(\count3_reg[8]_i_1__0_n_4 ),
        .Q(sel0__2[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count3_reg[12] 
       (.C(\count2_reg[0]_0 ),
        .CE(\count3[0]_i_1__1_n_0 ),
        .D(\count3_reg[12]_i_1__0_n_7 ),
        .Q(sel0__2[12]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count3_reg[12]_i_1__0 
       (.CI(\count3_reg[8]_i_1__0_n_0 ),
        .CO({\count3_reg[12]_i_1__0_n_0 ,\NLW_count3_reg[12]_i_1__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count3_reg[12]_i_1__0_n_4 ,\count3_reg[12]_i_1__0_n_5 ,\count3_reg[12]_i_1__0_n_6 ,\count3_reg[12]_i_1__0_n_7 }),
        .S({\count3[12]_i_2__0_n_0 ,\count3[12]_i_3__0_n_0 ,\count3[12]_i_4__0_n_0 ,\count3[12]_i_5__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count3_reg[13] 
       (.C(\count2_reg[0]_0 ),
        .CE(\count3[0]_i_1__1_n_0 ),
        .D(\count3_reg[12]_i_1__0_n_6 ),
        .Q(sel0__2[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count3_reg[14] 
       (.C(\count2_reg[0]_0 ),
        .CE(\count3[0]_i_1__1_n_0 ),
        .D(\count3_reg[12]_i_1__0_n_5 ),
        .Q(sel0__2[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count3_reg[15] 
       (.C(\count2_reg[0]_0 ),
        .CE(\count3[0]_i_1__1_n_0 ),
        .D(\count3_reg[12]_i_1__0_n_4 ),
        .Q(sel0__2[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count3_reg[16] 
       (.C(\count2_reg[0]_0 ),
        .CE(\count3[0]_i_1__1_n_0 ),
        .D(\count3_reg[16]_i_1__0_n_7 ),
        .Q(sel0__2[16]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count3_reg[16]_i_1__0 
       (.CI(\count3_reg[12]_i_1__0_n_0 ),
        .CO({\count3_reg[16]_i_1__0_n_0 ,\NLW_count3_reg[16]_i_1__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count3_reg[16]_i_1__0_n_4 ,\count3_reg[16]_i_1__0_n_5 ,\count3_reg[16]_i_1__0_n_6 ,\count3_reg[16]_i_1__0_n_7 }),
        .S({\count3[16]_i_2__0_n_0 ,\count3[16]_i_3__0_n_0 ,\count3[16]_i_4__0_n_0 ,\count3[16]_i_5__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count3_reg[17] 
       (.C(\count2_reg[0]_0 ),
        .CE(\count3[0]_i_1__1_n_0 ),
        .D(\count3_reg[16]_i_1__0_n_6 ),
        .Q(sel0__2[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count3_reg[18] 
       (.C(\count2_reg[0]_0 ),
        .CE(\count3[0]_i_1__1_n_0 ),
        .D(\count3_reg[16]_i_1__0_n_5 ),
        .Q(sel0__2[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count3_reg[19] 
       (.C(\count2_reg[0]_0 ),
        .CE(\count3[0]_i_1__1_n_0 ),
        .D(\count3_reg[16]_i_1__0_n_4 ),
        .Q(sel0__2[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count3_reg[1] 
       (.C(\count2_reg[0]_0 ),
        .CE(\count3[0]_i_1__1_n_0 ),
        .D(\count3_reg[0]_i_2__0_n_6 ),
        .Q(sel0__2[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count3_reg[20] 
       (.C(\count2_reg[0]_0 ),
        .CE(\count3[0]_i_1__1_n_0 ),
        .D(\count3_reg[20]_i_1__0_n_7 ),
        .Q(sel0__2[20]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count3_reg[20]_i_1__0 
       (.CI(\count3_reg[16]_i_1__0_n_0 ),
        .CO({\count3_reg[20]_i_1__0_n_0 ,\NLW_count3_reg[20]_i_1__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count3_reg[20]_i_1__0_n_4 ,\count3_reg[20]_i_1__0_n_5 ,\count3_reg[20]_i_1__0_n_6 ,\count3_reg[20]_i_1__0_n_7 }),
        .S({\count3[20]_i_2__0_n_0 ,\count3[20]_i_3__0_n_0 ,\count3[20]_i_4__0_n_0 ,\count3[20]_i_5__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count3_reg[21] 
       (.C(\count2_reg[0]_0 ),
        .CE(\count3[0]_i_1__1_n_0 ),
        .D(\count3_reg[20]_i_1__0_n_6 ),
        .Q(sel0__2[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count3_reg[22] 
       (.C(\count2_reg[0]_0 ),
        .CE(\count3[0]_i_1__1_n_0 ),
        .D(\count3_reg[20]_i_1__0_n_5 ),
        .Q(sel0__2[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count3_reg[23] 
       (.C(\count2_reg[0]_0 ),
        .CE(\count3[0]_i_1__1_n_0 ),
        .D(\count3_reg[20]_i_1__0_n_4 ),
        .Q(sel0__2[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count3_reg[24] 
       (.C(\count2_reg[0]_0 ),
        .CE(\count3[0]_i_1__1_n_0 ),
        .D(\count3_reg[24]_i_1__0_n_7 ),
        .Q(sel0__2[24]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count3_reg[24]_i_1__0 
       (.CI(\count3_reg[20]_i_1__0_n_0 ),
        .CO({\count3_reg[24]_i_1__0_n_0 ,\NLW_count3_reg[24]_i_1__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count3_reg[24]_i_1__0_n_4 ,\count3_reg[24]_i_1__0_n_5 ,\count3_reg[24]_i_1__0_n_6 ,\count3_reg[24]_i_1__0_n_7 }),
        .S({\count3[24]_i_2__0_n_0 ,\count3[24]_i_3__0_n_0 ,\count3[24]_i_4__0_n_0 ,\count3[24]_i_5__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count3_reg[25] 
       (.C(\count2_reg[0]_0 ),
        .CE(\count3[0]_i_1__1_n_0 ),
        .D(\count3_reg[24]_i_1__0_n_6 ),
        .Q(sel0__2[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count3_reg[26] 
       (.C(\count2_reg[0]_0 ),
        .CE(\count3[0]_i_1__1_n_0 ),
        .D(\count3_reg[24]_i_1__0_n_5 ),
        .Q(sel0__2[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count3_reg[27] 
       (.C(\count2_reg[0]_0 ),
        .CE(\count3[0]_i_1__1_n_0 ),
        .D(\count3_reg[24]_i_1__0_n_4 ),
        .Q(sel0__2[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count3_reg[28] 
       (.C(\count2_reg[0]_0 ),
        .CE(\count3[0]_i_1__1_n_0 ),
        .D(\count3_reg[28]_i_1__0_n_7 ),
        .Q(sel0__2[28]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count3_reg[28]_i_1__0 
       (.CI(\count3_reg[24]_i_1__0_n_0 ),
        .CO(\NLW_count3_reg[28]_i_1__0_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count3_reg[28]_i_1__0_n_4 ,\count3_reg[28]_i_1__0_n_5 ,\count3_reg[28]_i_1__0_n_6 ,\count3_reg[28]_i_1__0_n_7 }),
        .S({\count3[28]_i_2__0_n_0 ,\count3[28]_i_3__0_n_0 ,\count3[28]_i_4__0_n_0 ,\count3[28]_i_5__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count3_reg[29] 
       (.C(\count2_reg[0]_0 ),
        .CE(\count3[0]_i_1__1_n_0 ),
        .D(\count3_reg[28]_i_1__0_n_6 ),
        .Q(sel0__2[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count3_reg[2] 
       (.C(\count2_reg[0]_0 ),
        .CE(\count3[0]_i_1__1_n_0 ),
        .D(\count3_reg[0]_i_2__0_n_5 ),
        .Q(sel0__2[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count3_reg[30] 
       (.C(\count2_reg[0]_0 ),
        .CE(\count3[0]_i_1__1_n_0 ),
        .D(\count3_reg[28]_i_1__0_n_5 ),
        .Q(sel0__2[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count3_reg[31] 
       (.C(\count2_reg[0]_0 ),
        .CE(\count3[0]_i_1__1_n_0 ),
        .D(\count3_reg[28]_i_1__0_n_4 ),
        .Q(sel0__2[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count3_reg[3] 
       (.C(\count2_reg[0]_0 ),
        .CE(\count3[0]_i_1__1_n_0 ),
        .D(\count3_reg[0]_i_2__0_n_4 ),
        .Q(sel0__2[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count3_reg[4] 
       (.C(\count2_reg[0]_0 ),
        .CE(\count3[0]_i_1__1_n_0 ),
        .D(\count3_reg[4]_i_1__0_n_7 ),
        .Q(sel0__2[4]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count3_reg[4]_i_1__0 
       (.CI(\count3_reg[0]_i_2__0_n_0 ),
        .CO({\count3_reg[4]_i_1__0_n_0 ,\NLW_count3_reg[4]_i_1__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count3_reg[4]_i_1__0_n_4 ,\count3_reg[4]_i_1__0_n_5 ,\count3_reg[4]_i_1__0_n_6 ,\count3_reg[4]_i_1__0_n_7 }),
        .S({\count3[4]_i_2__0_n_0 ,\count3[4]_i_3__0_n_0 ,\count3[4]_i_4__0_n_0 ,\count3[4]_i_5__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count3_reg[5] 
       (.C(\count2_reg[0]_0 ),
        .CE(\count3[0]_i_1__1_n_0 ),
        .D(\count3_reg[4]_i_1__0_n_6 ),
        .Q(sel0__2[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count3_reg[6] 
       (.C(\count2_reg[0]_0 ),
        .CE(\count3[0]_i_1__1_n_0 ),
        .D(\count3_reg[4]_i_1__0_n_5 ),
        .Q(sel0__2[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count3_reg[7] 
       (.C(\count2_reg[0]_0 ),
        .CE(\count3[0]_i_1__1_n_0 ),
        .D(\count3_reg[4]_i_1__0_n_4 ),
        .Q(sel0__2[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count3_reg[8] 
       (.C(\count2_reg[0]_0 ),
        .CE(\count3[0]_i_1__1_n_0 ),
        .D(\count3_reg[8]_i_1__0_n_7 ),
        .Q(sel0__2[8]),
        .R(1'b0));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count3_reg[8]_i_1__0 
       (.CI(\count3_reg[4]_i_1__0_n_0 ),
        .CO({\count3_reg[8]_i_1__0_n_0 ,\NLW_count3_reg[8]_i_1__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count3_reg[8]_i_1__0_n_4 ,\count3_reg[8]_i_1__0_n_5 ,\count3_reg[8]_i_1__0_n_6 ,\count3_reg[8]_i_1__0_n_7 }),
        .S({\count3[8]_i_2__0_n_0 ,\count3[8]_i_3__0_n_0 ,\count3[8]_i_4__0_n_0 ,\count3[8]_i_5__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count3_reg[9] 
       (.C(\count2_reg[0]_0 ),
        .CE(\count3[0]_i_1__1_n_0 ),
        .D(\count3_reg[8]_i_1__0_n_6 ),
        .Q(sel0__2[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    cout_reg
       (.C(\count2_reg[0]_0 ),
        .CE(1'b1),
        .D(d_reg_n_0),
        .Q(cout_reg_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFEF00000010)) 
    d_i_1__1
       (.I0(d_i_2__0_n_0),
        .I1(d_i_3__0_n_0),
        .I2(sel0__2[4]),
        .I3(\count0[31]_i_1__0_n_0 ),
        .I4(\count1[0]_i_3__0_n_0 ),
        .I5(d_reg_n_0),
        .O(d_i_1__1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    d_i_2__0
       (.I0(d_i_4__0_n_0),
        .I1(sel0__2[31]),
        .I2(\count2[0]_i_3__0_n_0 ),
        .I3(sel0__2[29]),
        .I4(sel0__2[30]),
        .I5(d_i_5__0_n_0),
        .O(d_i_2__0_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    d_i_3__0
       (.I0(d_i_6__0_n_0),
        .I1(sel0__2[15]),
        .I2(sel0__2[16]),
        .I3(sel0__2[13]),
        .I4(sel0__2[14]),
        .I5(d_i_7__0_n_0),
        .O(d_i_3__0_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    d_i_4__0
       (.I0(sel0__2[27]),
        .I1(sel0__2[28]),
        .I2(sel0__2[25]),
        .I3(sel0__2[26]),
        .O(d_i_4__0_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    d_i_5__0
       (.I0(sel0__2[22]),
        .I1(sel0__2[21]),
        .I2(sel0__2[24]),
        .I3(sel0__2[23]),
        .I4(d_i_8__0_n_0),
        .O(d_i_5__0_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    d_i_6__0
       (.I0(sel0__2[11]),
        .I1(sel0__2[12]),
        .I2(sel0__2[9]),
        .I3(sel0__2[10]),
        .O(d_i_6__0_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    d_i_7__0
       (.I0(sel0__2[6]),
        .I1(sel0__2[2]),
        .I2(sel0__2[8]),
        .I3(sel0__2[7]),
        .I4(d_i_9__0_n_0),
        .O(d_i_7__0_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    d_i_8__0
       (.I0(sel0__2[19]),
        .I1(sel0__2[20]),
        .I2(sel0__2[17]),
        .I3(sel0__2[18]),
        .O(d_i_8__0_n_0));
  LUT4 #(
    .INIT(16'hEFFF)) 
    d_i_9__0
       (.I0(sel0__2[3]),
        .I1(sel0__2[0]),
        .I2(sel0__2[1]),
        .I3(sel0__2[5]),
        .O(d_i_9__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    d_reg
       (.C(\count2_reg[0]_0 ),
        .CE(1'b1),
        .D(d_i_1__1_n_0),
        .Q(d_reg_n_0),
        .R(1'b0));
endmodule

(* ECO_CHECKSUM = "c6d4c79b" *) 
(* NotValidForBitStream *)
(* \DesignAttr:ENABLE_NOC_NETLIST_VIEW  *) 
(* \DesignAttr:ENABLE_AIE_NETLIST_VIEW  *) 
module lab2_top
   (q,
    clk,
    rst,
    roll,
    leftanode,
    rightanode,
    leftcathode,
    rightcathode);
  output [7:0]q;
  input clk;
  input rst;
  input roll;
  output [3:0]leftanode;
  output [3:0]rightanode;
  output [6:0]leftcathode;
  output [6:0]rightcathode;

  wire CDIV2_n_0;
  wire CDIV3_n_0;
  wire LFSR_n_0;
  wire LFSR_n_1;
  wire LFSR_n_16;
  wire LFSR_n_17;
  wire LFSR_n_18;
  wire LFSR_n_19;
  wire LFSR_n_2;
  wire LFSR_n_20;
  wire LFSR_n_21;
  wire LFSR_n_22;
  wire LFSR_n_23;
  wire LFSR_n_24;
  wire LFSR_n_25;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire cout;
  wire game_n_1;
  wire game_n_10;
  wire game_n_3;
  wire game_n_9;
  wire [3:0]leftanode;
  wire [6:0]leftcathode;
  wire [6:0]leftcathode_OBUF;
  wire lopt;
  wire lopt_11;
  wire lopt_12;
  wire lopt_2;
  wire lopt_4;
  wire lopt_5;
  wire lopt_6;
  wire lopt_7;
  wire lopt_8;
  wire lopt_9;
  wire [7:0]q;
  wire [7:0]q_OBUF;
  wire [3:0]rightanode;
  wire [1:0]rightanode_OBUF;
  wire [6:0]rightcathode;
  wire [3:1]rightcathode_OBUF;
  wire roll;
  wire roll_IBUF;
  wire rst;
  wire rst_IBUF;
  wire start;
  wire status;
  wire [4:0]sum;
  wire [4:0]target;
  wire [3:3]NLW_LFSR_q_OBUF_UNCONNECTED;
  wire NLW_display_lopt_1_UNCONNECTED;
  wire NLW_display_lopt_3_UNCONNECTED;
  wire NLW_display_lopt_5_UNCONNECTED;
  wire NLW_display_lopt_8_UNCONNECTED;

initial begin
 $sdf_annotate("sevenseg_tb_time_impl.sdf",,,,"tool_control");
end
  clock_divider CDIV
       (.CLK(clk_IBUF_BUFG),
        .cout(cout));
  clock_divider__parameterized0 CDIV2
       (.CLK(CDIV2_n_0),
        .\count3_reg[0]_0 (clk_IBUF_BUFG));
  clock_divider__parameterized1 CDIV3
       (.\count2_reg[0]_0 (clk_IBUF_BUFG),
        .cout_reg_0(CDIV3_n_0));
  lfsr LFSR
       (.D(sum),
        .Q(target),
        .between_reg(game_n_9),
        .between_reg_0(game_n_3),
        .between_reg_1(game_n_1),
        .cout(cout),
        .lopt(lopt_4),
        .lopt_1(lopt_5),
        .lopt_2(lopt_6),
        .lopt_3(lopt_7),
        .lopt_4(lopt_8),
        .q_OBUF({q_OBUF[7:4],NLW_LFSR_q_OBUF_UNCONNECTED[3],q_OBUF[2:0]}),
        .\q_reg[1]_0 (LFSR_n_0),
        .\q_reg[3]_0 (LFSR_n_2),
        .\q_reg[3]_1 (LFSR_n_19),
        .\q_reg[3]_2 (LFSR_n_20),
        .\q_reg[3]_3 (LFSR_n_21),
        .\q_reg[3]_4 (LFSR_n_22),
        .\q_reg[3]_5 (LFSR_n_23),
        .\q_reg[3]_6 (LFSR_n_24),
        .\q_reg[3]_7 (LFSR_n_25),
        .\q_reg[4]_0 (LFSR_n_16),
        .roll_IBUF(roll_IBUF),
        .rst_IBUF(rst_IBUF),
        .start(start),
        .start_reg(LFSR_n_1),
        .start_reg_0(LFSR_n_18),
        .\target_reg[0] (LFSR_n_17));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  sevenseg display
       (.CLK(CDIV2_n_0),
        .D(game_n_10),
        .Q(leftcathode_OBUF),
        .\leftcathode_reg[0]_0 (LFSR_n_19),
        .\leftcathode_reg[1]_0 (LFSR_n_20),
        .\leftcathode_reg[2]_0 (LFSR_n_21),
        .\leftcathode_reg[3]_0 (LFSR_n_22),
        .\leftcathode_reg[4]_0 (LFSR_n_23),
        .\leftcathode_reg[5]_0 (LFSR_n_24),
        .\leftcathode_reg[6]_0 (LFSR_n_25),
        .lopt(lopt),
        .lopt_1(NLW_display_lopt_1_UNCONNECTED),
        .lopt_2(lopt_2),
        .lopt_3(NLW_display_lopt_3_UNCONNECTED),
        .lopt_4(lopt_9),
        .lopt_5(NLW_display_lopt_5_UNCONNECTED),
        .lopt_6(lopt_11),
        .lopt_7(lopt_12),
        .lopt_8(NLW_display_lopt_8_UNCONNECTED),
        .q_OBUF(q_OBUF[7:4]),
        .rightanode_OBUF(rightanode_OBUF),
        .\rightcathode_reg[5]_0 ({rightcathode_OBUF[3],rightcathode_OBUF[1]}),
        .status(status));
  Casino game
       (.D(sum),
        .Q(target),
        .between_reg_0(game_n_1),
        .between_reg_1(game_n_9),
        .between_reg_2(LFSR_n_18),
        .roll_IBUF(roll_IBUF),
        .rst_IBUF(rst_IBUF),
        .start(start),
        .start_reg_0(game_n_3),
        .status(status),
        .\status_reg[0]_0 (game_n_10),
        .\status_reg[0]_1 (CDIV3_n_0),
        .\status_reg[0]_2 (LFSR_n_1),
        .\status_reg[0]_3 (LFSR_n_16),
        .\status_reg[0]_4 (LFSR_n_0),
        .\status_reg[0]_5 (LFSR_n_17),
        .\target_reg[4]_0 (LFSR_n_2));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF \leftanode_OBUF[0]_inst 
       (.I(lopt),
        .O(leftanode[0]));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF \leftanode_OBUF[1]_inst 
       (.I(lopt_2),
        .O(leftanode[1]));
  OBUF \leftanode_OBUF[2]_inst 
       (.I(1'b1),
        .O(leftanode[2]));
  OBUF \leftanode_OBUF[3]_inst 
       (.I(1'b1),
        .O(leftanode[3]));
  OBUF \leftcathode_OBUF[0]_inst 
       (.I(leftcathode_OBUF[0]),
        .O(leftcathode[0]));
  OBUF \leftcathode_OBUF[1]_inst 
       (.I(leftcathode_OBUF[1]),
        .O(leftcathode[1]));
  OBUF \leftcathode_OBUF[2]_inst 
       (.I(leftcathode_OBUF[2]),
        .O(leftcathode[2]));
  OBUF \leftcathode_OBUF[3]_inst 
       (.I(leftcathode_OBUF[3]),
        .O(leftcathode[3]));
  OBUF \leftcathode_OBUF[4]_inst 
       (.I(leftcathode_OBUF[4]),
        .O(leftcathode[4]));
  OBUF \leftcathode_OBUF[5]_inst 
       (.I(leftcathode_OBUF[5]),
        .O(leftcathode[5]));
  OBUF \leftcathode_OBUF[6]_inst 
       (.I(leftcathode_OBUF[6]),
        .O(leftcathode[6]));
  OBUF \q_OBUF[0]_inst 
       (.I(q_OBUF[0]),
        .O(q[0]));
  OBUF \q_OBUF[1]_inst 
       (.I(q_OBUF[1]),
        .O(q[1]));
  OBUF \q_OBUF[2]_inst 
       (.I(q_OBUF[2]),
        .O(q[2]));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF \q_OBUF[3]_inst 
       (.I(lopt_4),
        .O(q[3]));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF \q_OBUF[4]_inst 
       (.I(lopt_5),
        .O(q[4]));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF \q_OBUF[5]_inst 
       (.I(lopt_6),
        .O(q[5]));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF \q_OBUF[6]_inst 
       (.I(lopt_7),
        .O(q[6]));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF \q_OBUF[7]_inst 
       (.I(lopt_8),
        .O(q[7]));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF \rightanode_OBUF[0]_inst 
       (.I(rightanode_OBUF[0]),
        .O(rightanode[0]));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF \rightanode_OBUF[1]_inst 
       (.I(rightanode_OBUF[1]),
        .O(rightanode[1]));
  OBUF \rightanode_OBUF[2]_inst 
       (.I(1'b1),
        .O(rightanode[2]));
  OBUF \rightanode_OBUF[3]_inst 
       (.I(1'b1),
        .O(rightanode[3]));
  OBUF \rightcathode_OBUF[0]_inst 
       (.I(1'b1),
        .O(rightcathode[0]));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF \rightcathode_OBUF[1]_inst 
       (.I(lopt_9),
        .O(rightcathode[1]));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF \rightcathode_OBUF[2]_inst 
       (.I(rightcathode_OBUF[1]),
        .O(rightcathode[2]));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF \rightcathode_OBUF[3]_inst 
       (.I(lopt_11),
        .O(rightcathode[3]));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF \rightcathode_OBUF[4]_inst 
       (.I(lopt_12),
        .O(rightcathode[4]));
  (* OPT_MODIFIED = "SWEEP" *) 
  OBUF \rightcathode_OBUF[5]_inst 
       (.I(rightcathode_OBUF[3]),
        .O(rightcathode[5]));
  OBUF \rightcathode_OBUF[6]_inst 
       (.I(1'b1),
        .O(rightcathode[6]));
  IBUF roll_IBUF_inst
       (.I(roll),
        .O(roll_IBUF));
  IBUF rst_IBUF_inst
       (.I(rst),
        .O(rst_IBUF));
endmodule

module lfsr
   (\q_reg[1]_0 ,
    start_reg,
    \q_reg[3]_0 ,
    q_OBUF,
    D,
    \q_reg[4]_0 ,
    \target_reg[0] ,
    start_reg_0,
    \q_reg[3]_1 ,
    \q_reg[3]_2 ,
    \q_reg[3]_3 ,
    \q_reg[3]_4 ,
    \q_reg[3]_5 ,
    \q_reg[3]_6 ,
    \q_reg[3]_7 ,
    between_reg,
    between_reg_0,
    roll_IBUF,
    start,
    Q,
    between_reg_1,
    rst_IBUF,
    cout,
    lopt,
    lopt_1,
    lopt_2,
    lopt_3,
    lopt_4);
  output \q_reg[1]_0 ;
  output start_reg;
  output \q_reg[3]_0 ;
  output [7:0]q_OBUF;
  output [4:0]D;
  output \q_reg[4]_0 ;
  output \target_reg[0] ;
  output start_reg_0;
  output \q_reg[3]_1 ;
  output \q_reg[3]_2 ;
  output \q_reg[3]_3 ;
  output \q_reg[3]_4 ;
  output \q_reg[3]_5 ;
  output \q_reg[3]_6 ;
  output \q_reg[3]_7 ;
  input between_reg;
  input between_reg_0;
  input roll_IBUF;
  input start;
  input [4:0]Q;
  input between_reg_1;
  input rst_IBUF;
  input cout;
  output lopt;
  output lopt_1;
  output lopt_2;
  output lopt_3;
  output lopt_4;

  wire [4:0]D;
  wire [4:0]Q;
  wire between_i_10_n_0;
  wire between_i_11_n_0;
  wire between_i_12_n_0;
  wire between_i_2_n_0;
  wire between_i_3_n_0;
  wire between_i_4_n_0;
  wire between_i_5_n_0;
  wire between_i_9_n_0;
  wire between_reg;
  wire between_reg_0;
  wire between_reg_1;
  wire cout;
  wire \q[0]_i_1_n_0 ;
  wire [7:0]q_OBUF;
  wire \q_reg[1]_0 ;
  wire \q_reg[3]_0 ;
  wire \q_reg[3]_1 ;
  wire \q_reg[3]_2 ;
  wire \q_reg[3]_3 ;
  wire \q_reg[3]_4 ;
  wire \q_reg[3]_5 ;
  wire \q_reg[3]_6 ;
  wire \q_reg[3]_7 ;
  wire \q_reg[3]_lopt_replica_1 ;
  wire \q_reg[4]_0 ;
  wire \q_reg[4]_lopt_replica_1 ;
  wire \q_reg[5]_lopt_replica_1 ;
  wire \q_reg[6]_lopt_replica_1 ;
  wire \q_reg[7]_lopt_replica_1 ;
  wire roll_IBUF;
  wire rst_IBUF;
  wire start;
  wire start_reg;
  wire start_reg_0;
  wire \status[0]_i_9_n_0 ;
  wire \target[4]_i_4_n_0 ;
  wire \target[4]_i_5_n_0 ;
  wire \target[4]_i_6_n_0 ;
  wire \target_reg[0] ;

  assign lopt = \q_reg[3]_lopt_replica_1 ;
  assign lopt_1 = \q_reg[4]_lopt_replica_1 ;
  assign lopt_2 = \q_reg[5]_lopt_replica_1 ;
  assign lopt_3 = \q_reg[6]_lopt_replica_1 ;
  assign lopt_4 = \q_reg[7]_lopt_replica_1 ;
  LUT6 #(
    .INIT(64'h3F33BB3300008800)) 
    between_i_1
       (.I0(roll_IBUF),
        .I1(between_i_2_n_0),
        .I2(rst_IBUF),
        .I3(start),
        .I4(\q_reg[3]_0 ),
        .I5(between_reg_1),
        .O(start_reg_0));
  LUT2 #(
    .INIT(4'h9)) 
    between_i_10
       (.I0(q_OBUF[3]),
        .I1(q_OBUF[7]),
        .O(between_i_10_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    between_i_11
       (.I0(q_OBUF[0]),
        .I1(q_OBUF[4]),
        .O(between_i_11_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    between_i_12
       (.I0(q_OBUF[7]),
        .I1(q_OBUF[3]),
        .O(between_i_12_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFF5454FF54)) 
    between_i_2
       (.I0(between_i_3_n_0),
        .I1(between_i_4_n_0),
        .I2(between_i_5_n_0),
        .I3(\q_reg[1]_0 ),
        .I4(between_reg),
        .I5(between_reg_0),
        .O(between_i_2_n_0));
  LUT6 #(
    .INIT(64'h2B00FFFFFFFFFFFF)) 
    between_i_3
       (.I0(\target[4]_i_4_n_0 ),
        .I1(q_OBUF[7]),
        .I2(q_OBUF[3]),
        .I3(Q[4]),
        .I4(roll_IBUF),
        .I5(between_reg_1),
        .O(between_i_3_n_0));
  LUT6 #(
    .INIT(64'h0071710071717171)) 
    between_i_4
       (.I0(\target[4]_i_5_n_0 ),
        .I1(Q[2]),
        .I2(between_i_9_n_0),
        .I3(\target[4]_i_4_n_0 ),
        .I4(between_i_10_n_0),
        .I5(Q[3]),
        .O(between_i_4_n_0));
  LUT5 #(
    .INIT(32'h57353503)) 
    between_i_5
       (.I0(Q[4]),
        .I1(Q[3]),
        .I2(\target[4]_i_4_n_0 ),
        .I3(q_OBUF[7]),
        .I4(q_OBUF[3]),
        .O(between_i_5_n_0));
  LUT6 #(
    .INIT(64'h00000000FB202000)) 
    between_i_6
       (.I0(q_OBUF[1]),
        .I1(between_i_11_n_0),
        .I2(q_OBUF[5]),
        .I3(q_OBUF[6]),
        .I4(q_OBUF[2]),
        .I5(between_i_12_n_0),
        .O(\q_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h066096669FF6FFFF)) 
    between_i_9
       (.I0(q_OBUF[5]),
        .I1(q_OBUF[1]),
        .I2(q_OBUF[4]),
        .I3(q_OBUF[0]),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(between_i_9_n_0));
  LUT4 #(
    .INIT(16'hBFDA)) 
    \leftcathode[0]_i_2 
       (.I0(q_OBUF[3]),
        .I1(q_OBUF[0]),
        .I2(q_OBUF[2]),
        .I3(q_OBUF[1]),
        .O(\q_reg[3]_1 ));
  LUT4 #(
    .INIT(16'hAE6F)) 
    \leftcathode[1]_i_2 
       (.I0(q_OBUF[3]),
        .I1(q_OBUF[2]),
        .I2(q_OBUF[0]),
        .I3(q_OBUF[1]),
        .O(\q_reg[3]_2 ));
  LUT4 #(
    .INIT(16'hA8EF)) 
    \leftcathode[2]_i_2 
       (.I0(q_OBUF[3]),
        .I1(q_OBUF[1]),
        .I2(q_OBUF[2]),
        .I3(q_OBUF[0]),
        .O(\q_reg[3]_3 ));
  LUT4 #(
    .INIT(16'h3CDB)) 
    \leftcathode[3]_i_2 
       (.I0(q_OBUF[3]),
        .I1(q_OBUF[2]),
        .I2(q_OBUF[1]),
        .I3(q_OBUF[0]),
        .O(\q_reg[3]_4 ));
  LUT4 #(
    .INIT(16'h7F67)) 
    \leftcathode[4]_i_2 
       (.I0(q_OBUF[3]),
        .I1(q_OBUF[2]),
        .I2(q_OBUF[1]),
        .I3(q_OBUF[0]),
        .O(\q_reg[3]_5 ));
  LUT4 #(
    .INIT(16'h497F)) 
    \leftcathode[5]_i_2 
       (.I0(q_OBUF[3]),
        .I1(q_OBUF[0]),
        .I2(q_OBUF[1]),
        .I3(q_OBUF[2]),
        .O(\q_reg[3]_6 ));
  LUT4 #(
    .INIT(16'hD6FB)) 
    \leftcathode[6]_i_2 
       (.I0(q_OBUF[3]),
        .I1(q_OBUF[2]),
        .I2(q_OBUF[1]),
        .I3(q_OBUF[0]),
        .O(\q_reg[3]_7 ));
  LUT5 #(
    .INIT(32'hBEEBEBBE)) 
    \q[0]_i_1 
       (.I0(rst_IBUF),
        .I1(q_OBUF[3]),
        .I2(q_OBUF[2]),
        .I3(q_OBUF[1]),
        .I4(q_OBUF[7]),
        .O(\q[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[0] 
       (.C(cout),
        .CE(1'b1),
        .D(\q[0]_i_1_n_0 ),
        .Q(q_OBUF[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[1] 
       (.C(cout),
        .CE(1'b1),
        .D(q_OBUF[0]),
        .Q(q_OBUF[1]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[2] 
       (.C(cout),
        .CE(1'b1),
        .D(q_OBUF[1]),
        .Q(q_OBUF[2]),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[3] 
       (.C(cout),
        .CE(1'b1),
        .D(q_OBUF[2]),
        .Q(q_OBUF[3]),
        .R(rst_IBUF));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[3]_lopt_replica 
       (.C(cout),
        .CE(1'b1),
        .D(q_OBUF[2]),
        .Q(\q_reg[3]_lopt_replica_1 ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[4] 
       (.C(cout),
        .CE(1'b1),
        .D(q_OBUF[3]),
        .Q(q_OBUF[4]),
        .R(rst_IBUF));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[4]_lopt_replica 
       (.C(cout),
        .CE(1'b1),
        .D(q_OBUF[3]),
        .Q(\q_reg[4]_lopt_replica_1 ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[5] 
       (.C(cout),
        .CE(1'b1),
        .D(q_OBUF[4]),
        .Q(q_OBUF[5]),
        .R(rst_IBUF));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[5]_lopt_replica 
       (.C(cout),
        .CE(1'b1),
        .D(q_OBUF[4]),
        .Q(\q_reg[5]_lopt_replica_1 ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[6] 
       (.C(cout),
        .CE(1'b1),
        .D(q_OBUF[5]),
        .Q(q_OBUF[6]),
        .R(rst_IBUF));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[6]_lopt_replica 
       (.C(cout),
        .CE(1'b1),
        .D(q_OBUF[5]),
        .Q(\q_reg[6]_lopt_replica_1 ),
        .R(rst_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[7] 
       (.C(cout),
        .CE(1'b1),
        .D(q_OBUF[6]),
        .Q(q_OBUF[7]),
        .R(rst_IBUF));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDRE #(
    .INIT(1'b0)) 
    \q_reg[7]_lopt_replica 
       (.C(cout),
        .CE(1'b1),
        .D(q_OBUF[6]),
        .Q(\q_reg[7]_lopt_replica_1 ),
        .R(rst_IBUF));
  LUT3 #(
    .INIT(8'h80)) 
    \status[0]_i_6 
       (.I0(\q_reg[1]_0 ),
        .I1(roll_IBUF),
        .I2(start),
        .O(start_reg));
  LUT6 #(
    .INIT(64'h000045DF45DFFFFF)) 
    \status[0]_i_7 
       (.I0(\target[4]_i_6_n_0 ),
        .I1(D[0]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(\target[4]_i_5_n_0 ),
        .O(\target_reg[0] ));
  LUT6 #(
    .INIT(64'h00000000FF820000)) 
    \status[0]_i_8 
       (.I0(\target[4]_i_6_n_0 ),
        .I1(q_OBUF[4]),
        .I2(q_OBUF[0]),
        .I3(\target[4]_i_5_n_0 ),
        .I4(\target[4]_i_4_n_0 ),
        .I5(\status[0]_i_9_n_0 ),
        .O(\q_reg[4]_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \status[0]_i_9 
       (.I0(q_OBUF[7]),
        .I1(q_OBUF[3]),
        .O(\status[0]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \target[0]_i_1 
       (.I0(q_OBUF[0]),
        .I1(q_OBUF[4]),
        .O(D[0]));
  LUT4 #(
    .INIT(16'h9666)) 
    \target[1]_i_1 
       (.I0(q_OBUF[1]),
        .I1(q_OBUF[5]),
        .I2(q_OBUF[0]),
        .I3(q_OBUF[4]),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hEA80157F157FEA80)) 
    \target[2]_i_1 
       (.I0(q_OBUF[1]),
        .I1(q_OBUF[4]),
        .I2(q_OBUF[0]),
        .I3(q_OBUF[5]),
        .I4(q_OBUF[2]),
        .I5(q_OBUF[6]),
        .O(D[2]));
  LUT3 #(
    .INIT(8'h69)) 
    \target[3]_i_1 
       (.I0(\target[4]_i_4_n_0 ),
        .I1(q_OBUF[7]),
        .I2(q_OBUF[3]),
        .O(D[3]));
  LUT3 #(
    .INIT(8'hD4)) 
    \target[4]_i_2 
       (.I0(\target[4]_i_4_n_0 ),
        .I1(q_OBUF[7]),
        .I2(q_OBUF[3]),
        .O(D[4]));
  LUT6 #(
    .INIT(64'h1008101818081808)) 
    \target[4]_i_3 
       (.I0(q_OBUF[3]),
        .I1(q_OBUF[7]),
        .I2(\target[4]_i_4_n_0 ),
        .I3(\target[4]_i_5_n_0 ),
        .I4(D[0]),
        .I5(\target[4]_i_6_n_0 ),
        .O(\q_reg[3]_0 ));
  LUT6 #(
    .INIT(64'h0000157F157FFFFF)) 
    \target[4]_i_4 
       (.I0(q_OBUF[1]),
        .I1(q_OBUF[4]),
        .I2(q_OBUF[0]),
        .I3(q_OBUF[5]),
        .I4(q_OBUF[6]),
        .I5(q_OBUF[2]),
        .O(\target[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h6669696969999999)) 
    \target[4]_i_5 
       (.I0(q_OBUF[6]),
        .I1(q_OBUF[2]),
        .I2(q_OBUF[5]),
        .I3(q_OBUF[0]),
        .I4(q_OBUF[4]),
        .I5(q_OBUF[1]),
        .O(\target[4]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h7887)) 
    \target[4]_i_6 
       (.I0(q_OBUF[4]),
        .I1(q_OBUF[0]),
        .I2(q_OBUF[5]),
        .I3(q_OBUF[1]),
        .O(\target[4]_i_6_n_0 ));
endmodule

module sevenseg
   (rightanode_OBUF,
    Q,
    \rightcathode_reg[5]_0 ,
    CLK,
    status,
    D,
    q_OBUF,
    \leftcathode_reg[0]_0 ,
    \leftcathode_reg[1]_0 ,
    \leftcathode_reg[2]_0 ,
    \leftcathode_reg[3]_0 ,
    \leftcathode_reg[4]_0 ,
    \leftcathode_reg[5]_0 ,
    \leftcathode_reg[6]_0 ,
    lopt,
    lopt_1,
    lopt_2,
    lopt_3,
    lopt_4,
    lopt_5,
    lopt_6,
    lopt_7,
    lopt_8);
  output [1:0]rightanode_OBUF;
  output [6:0]Q;
  output [1:0]\rightcathode_reg[5]_0 ;
  input CLK;
  input status;
  input [0:0]D;
  input [3:0]q_OBUF;
  input \leftcathode_reg[0]_0 ;
  input \leftcathode_reg[1]_0 ;
  input \leftcathode_reg[2]_0 ;
  input \leftcathode_reg[3]_0 ;
  input \leftcathode_reg[4]_0 ;
  input \leftcathode_reg[5]_0 ;
  input \leftcathode_reg[6]_0 ;
  output lopt;
  output lopt_1;
  output lopt_2;
  output lopt_3;
  output lopt_4;
  output lopt_5;
  output lopt_6;
  output lopt_7;
  output lopt_8;

  wire CLK;
  wire [0:0]D;
  wire [6:0]Q;
  wire digit;
  wire \leftanode_reg[0]_lopt_replica_1 ;
  wire \leftanode_reg[1]_lopt_replica_1 ;
  wire \leftcathode[0]_i_1_n_0 ;
  wire \leftcathode[1]_i_1_n_0 ;
  wire \leftcathode[2]_i_1_n_0 ;
  wire \leftcathode[3]_i_1_n_0 ;
  wire \leftcathode[4]_i_1_n_0 ;
  wire \leftcathode[5]_i_1_n_0 ;
  wire \leftcathode[6]_i_1_n_0 ;
  wire \leftcathode_reg[0]_0 ;
  wire \leftcathode_reg[1]_0 ;
  wire \leftcathode_reg[2]_0 ;
  wire \leftcathode_reg[3]_0 ;
  wire \leftcathode_reg[4]_0 ;
  wire \leftcathode_reg[5]_0 ;
  wire \leftcathode_reg[6]_0 ;
  wire p_0_in;
  wire [3:0]q_OBUF;
  wire [1:0]rightanode_OBUF;
  wire \rightcathode[5]_i_1_n_0 ;
  wire \rightcathode_reg[2]_lopt_replica_1 ;
  wire [1:0]\rightcathode_reg[5]_0 ;
  wire \rightcathode_reg[5]_lopt_replica_1 ;
  wire \rightcathode_reg[5]_lopt_replica_2_1 ;
  wire status;

  assign lopt = \leftanode_reg[0]_lopt_replica_1 ;
  assign lopt_2 = \leftanode_reg[1]_lopt_replica_1 ;
  assign lopt_4 = \rightcathode_reg[2]_lopt_replica_1 ;
  assign lopt_6 = \rightcathode_reg[5]_lopt_replica_1 ;
  assign lopt_7 = \rightcathode_reg[5]_lopt_replica_2_1 ;
  LUT1 #(
    .INIT(2'h1)) 
    digit_i_1
       (.I0(digit),
        .O(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    digit_reg
       (.C(CLK),
        .CE(1'b1),
        .D(p_0_in),
        .Q(digit),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \leftanode_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(digit),
        .Q(rightanode_OBUF[0]),
        .R(1'b0));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDRE #(
    .INIT(1'b0)) 
    \leftanode_reg[0]_lopt_replica 
       (.C(CLK),
        .CE(1'b1),
        .D(digit),
        .Q(\leftanode_reg[0]_lopt_replica_1 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \leftanode_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(1'b1),
        .Q(rightanode_OBUF[1]),
        .R(digit));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDRE #(
    .INIT(1'b0)) 
    \leftanode_reg[1]_lopt_replica 
       (.C(CLK),
        .CE(1'b1),
        .D(1'b1),
        .Q(\leftanode_reg[1]_lopt_replica_1 ),
        .R(digit));
  LUT6 #(
    .INIT(64'h049100000491FFFF)) 
    \leftcathode[0]_i_1 
       (.I0(q_OBUF[1]),
        .I1(q_OBUF[2]),
        .I2(q_OBUF[0]),
        .I3(q_OBUF[3]),
        .I4(digit),
        .I5(\leftcathode_reg[0]_0 ),
        .O(\leftcathode[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h408E0000408EFFFF)) 
    \leftcathode[1]_i_1 
       (.I0(q_OBUF[1]),
        .I1(q_OBUF[0]),
        .I2(q_OBUF[2]),
        .I3(q_OBUF[3]),
        .I4(digit),
        .I5(\leftcathode_reg[1]_0 ),
        .O(\leftcathode[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h02AE000002AEFFFF)) 
    \leftcathode[2]_i_1 
       (.I0(q_OBUF[0]),
        .I1(q_OBUF[2]),
        .I2(q_OBUF[1]),
        .I3(q_OBUF[3]),
        .I4(digit),
        .I5(\leftcathode_reg[2]_0 ),
        .O(\leftcathode[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h869200008692FFFF)) 
    \leftcathode[3]_i_1 
       (.I0(q_OBUF[0]),
        .I1(q_OBUF[1]),
        .I2(q_OBUF[2]),
        .I3(q_OBUF[3]),
        .I4(digit),
        .I5(\leftcathode_reg[3]_0 ),
        .O(\leftcathode[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hD0040000D004FFFF)) 
    \leftcathode[4]_i_1 
       (.I0(q_OBUF[0]),
        .I1(q_OBUF[1]),
        .I2(q_OBUF[2]),
        .I3(q_OBUF[3]),
        .I4(digit),
        .I5(\leftcathode_reg[4]_0 ),
        .O(\leftcathode[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hCA280000CA28FFFF)) 
    \leftcathode[5]_i_1 
       (.I0(q_OBUF[2]),
        .I1(q_OBUF[1]),
        .I2(q_OBUF[0]),
        .I3(q_OBUF[3]),
        .I4(digit),
        .I5(\leftcathode_reg[5]_0 ),
        .O(\leftcathode[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h281200002812FFFF)) 
    \leftcathode[6]_i_1 
       (.I0(q_OBUF[0]),
        .I1(q_OBUF[1]),
        .I2(q_OBUF[2]),
        .I3(q_OBUF[3]),
        .I4(digit),
        .I5(\leftcathode_reg[6]_0 ),
        .O(\leftcathode[6]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \leftcathode_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\leftcathode[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \leftcathode_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\leftcathode[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \leftcathode_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\leftcathode[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \leftcathode_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\leftcathode[3]_i_1_n_0 ),
        .Q(Q[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \leftcathode_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(\leftcathode[4]_i_1_n_0 ),
        .Q(Q[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \leftcathode_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(\leftcathode[5]_i_1_n_0 ),
        .Q(Q[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \leftcathode_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(\leftcathode[6]_i_1_n_0 ),
        .Q(Q[6]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h7)) 
    \rightcathode[5]_i_1 
       (.I0(digit),
        .I1(status),
        .O(\rightcathode[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \rightcathode_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(D),
        .Q(\rightcathode_reg[5]_0 [0]),
        .R(1'b0));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDRE #(
    .INIT(1'b0)) 
    \rightcathode_reg[2]_lopt_replica 
       (.C(CLK),
        .CE(1'b1),
        .D(D),
        .Q(\rightcathode_reg[2]_lopt_replica_1 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \rightcathode_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(\rightcathode[5]_i_1_n_0 ),
        .Q(\rightcathode_reg[5]_0 [1]),
        .R(1'b0));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDRE #(
    .INIT(1'b0)) 
    \rightcathode_reg[5]_lopt_replica 
       (.C(CLK),
        .CE(1'b1),
        .D(\rightcathode[5]_i_1_n_0 ),
        .Q(\rightcathode_reg[5]_lopt_replica_1 ),
        .R(1'b0));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  FDRE #(
    .INIT(1'b0)) 
    \rightcathode_reg[5]_lopt_replica_2 
       (.C(CLK),
        .CE(1'b1),
        .D(\rightcathode[5]_i_1_n_0 ),
        .Q(\rightcathode_reg[5]_lopt_replica_2_1 ),
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
