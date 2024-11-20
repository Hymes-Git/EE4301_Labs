// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Fri Sep 13 10:26:13 2024
// Host        : DESKTOP-P2P8PNM running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/gahym/EE4301_Labs/lab01/lab01.sim/sim_1/impl/timing/xsim/RISCVALU_tb_time_impl.v
// Design      : RISCVALU
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7s50csga324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* ECO_CHECKSUM = "96964fa9" *) 
(* NotValidForBitStream *)
module RISCVALU
   (ALUctl,
    A,
    B,
    ALUout);
  input [3:0]ALUctl;
  input [7:0]A;
  input [7:0]B;
  output [15:0]ALUout;

  wire [7:0]A;
  wire [3:0]ALUctl;
  wire [3:0]ALUctl_IBUF;
  wire [2:0]ALUop;
  wire \ALUop_reg[0]_i_1_n_0 ;
  wire \ALUop_reg[1]_i_1_n_0 ;
  wire \ALUop_reg[2]_i_1_n_0 ;
  wire \ALUop_reg[2]_i_2_n_0 ;
  wire [15:0]ALUout;
  wire [10:0]ALUout_OBUF;
  wire \ALUout_OBUF[0]_inst_i_10_n_0 ;
  wire \ALUout_OBUF[0]_inst_i_11_n_0 ;
  wire \ALUout_OBUF[0]_inst_i_12_n_0 ;
  wire \ALUout_OBUF[0]_inst_i_2_n_0 ;
  wire \ALUout_OBUF[0]_inst_i_3_n_0 ;
  wire \ALUout_OBUF[0]_inst_i_5_n_0 ;
  wire \ALUout_OBUF[0]_inst_i_6_n_0 ;
  wire \ALUout_OBUF[0]_inst_i_7_n_0 ;
  wire \ALUout_OBUF[0]_inst_i_8_n_0 ;
  wire \ALUout_OBUF[0]_inst_i_9_n_0 ;
  wire \ALUout_OBUF[15]_inst_i_3_n_0 ;
  wire \ALUout_OBUF[15]_inst_i_4_n_0 ;
  wire \ALUout_OBUF[15]_inst_i_5_n_0 ;
  wire \ALUout_OBUF[15]_inst_i_6_n_0 ;
  wire \ALUout_OBUF[15]_inst_i_7_n_0 ;
  wire \ALUout_OBUF[1]_inst_i_2_n_0 ;
  wire \ALUout_OBUF[1]_inst_i_3_n_0 ;
  wire \ALUout_OBUF[2]_inst_i_2_n_0 ;
  wire \ALUout_OBUF[2]_inst_i_3_n_0 ;
  wire \ALUout_OBUF[3]_inst_i_10_n_0 ;
  wire \ALUout_OBUF[3]_inst_i_11_n_0 ;
  wire \ALUout_OBUF[3]_inst_i_12_n_0 ;
  wire \ALUout_OBUF[3]_inst_i_13_n_0 ;
  wire \ALUout_OBUF[3]_inst_i_2_n_0 ;
  wire \ALUout_OBUF[3]_inst_i_3_n_0 ;
  wire \ALUout_OBUF[3]_inst_i_4_n_0 ;
  wire \ALUout_OBUF[3]_inst_i_5_n_0 ;
  wire \ALUout_OBUF[3]_inst_i_6_n_0 ;
  wire \ALUout_OBUF[3]_inst_i_7_n_0 ;
  wire \ALUout_OBUF[3]_inst_i_8_n_0 ;
  wire \ALUout_OBUF[3]_inst_i_9_n_0 ;
  wire \ALUout_OBUF[4]_inst_i_2_n_0 ;
  wire \ALUout_OBUF[4]_inst_i_3_n_0 ;
  wire \ALUout_OBUF[5]_inst_i_2_n_0 ;
  wire \ALUout_OBUF[5]_inst_i_3_n_0 ;
  wire \ALUout_OBUF[6]_inst_i_2_n_0 ;
  wire \ALUout_OBUF[6]_inst_i_3_n_0 ;
  wire \ALUout_OBUF[7]_inst_i_2_n_0 ;
  wire \ALUout_OBUF[7]_inst_i_3_n_0 ;
  wire \ALUout_OBUF[8]_inst_i_3_n_0 ;
  wire \ALUout_OBUF[8]_inst_i_4_n_0 ;
  wire \ALUout_OBUF[8]_inst_i_5_n_0 ;
  wire \ALUout_OBUF[8]_inst_i_6_n_0 ;
  wire \ALUout_OBUF[8]_inst_i_7_n_0 ;
  wire [7:0]A_IBUF;
  wire [7:0]B;
  wire [7:0]B_IBUF;
  wire [8:0]data0;
  wire [7:0]data1;
  wire [15:15]data1__0;
  wire data4;
  wire [2:0]\NLW_ALUout_OBUF[0]_inst_i_4_CO_UNCONNECTED ;
  wire [3:0]\NLW_ALUout_OBUF[0]_inst_i_4_O_UNCONNECTED ;
  wire [3:0]\NLW_ALUout_OBUF[15]_inst_i_2_CO_UNCONNECTED ;
  wire [3:1]\NLW_ALUout_OBUF[15]_inst_i_2_O_UNCONNECTED ;
  wire [2:0]\NLW_ALUout_OBUF[15]_inst_i_3_CO_UNCONNECTED ;
  wire [2:0]\NLW_ALUout_OBUF[3]_inst_i_4_CO_UNCONNECTED ;
  wire [2:0]\NLW_ALUout_OBUF[3]_inst_i_5_CO_UNCONNECTED ;
  wire [3:1]\NLW_ALUout_OBUF[8]_inst_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_ALUout_OBUF[8]_inst_i_2_O_UNCONNECTED ;
  wire [2:0]\NLW_ALUout_OBUF[8]_inst_i_3_CO_UNCONNECTED ;

initial begin
 $sdf_annotate("RISCVALU_tb_time_impl.sdf",,,,"tool_control");
end
  IBUF \ALUctl_IBUF[0]_inst 
       (.I(ALUctl[0]),
        .O(ALUctl_IBUF[0]));
  IBUF \ALUctl_IBUF[1]_inst 
       (.I(ALUctl[1]),
        .O(ALUctl_IBUF[1]));
  IBUF \ALUctl_IBUF[2]_inst 
       (.I(ALUctl[2]),
        .O(ALUctl_IBUF[2]));
  IBUF \ALUctl_IBUF[3]_inst 
       (.I(ALUctl[3]),
        .O(ALUctl_IBUF[3]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ALUop_reg[0] 
       (.CLR(1'b0),
        .D(\ALUop_reg[0]_i_1_n_0 ),
        .G(\ALUop_reg[2]_i_2_n_0 ),
        .GE(1'b1),
        .Q(ALUop[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \ALUop_reg[0]_i_1 
       (.I0(ALUctl_IBUF[0]),
        .I1(ALUctl_IBUF[2]),
        .O(\ALUop_reg[0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ALUop_reg[1] 
       (.CLR(1'b0),
        .D(\ALUop_reg[1]_i_1_n_0 ),
        .G(\ALUop_reg[2]_i_2_n_0 ),
        .GE(1'b1),
        .Q(ALUop[1]));
  LUT4 #(
    .INIT(16'hFEAE)) 
    \ALUop_reg[1]_i_1 
       (.I0(ALUctl_IBUF[2]),
        .I1(ALUctl_IBUF[1]),
        .I2(ALUctl_IBUF[0]),
        .I3(ALUctl_IBUF[3]),
        .O(\ALUop_reg[1]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:GE GND:CLR" *) 
  LDCE #(
    .INIT(1'b0)) 
    \ALUop_reg[2] 
       (.CLR(1'b0),
        .D(\ALUop_reg[2]_i_1_n_0 ),
        .G(\ALUop_reg[2]_i_2_n_0 ),
        .GE(1'b1),
        .Q(ALUop[2]));
  LUT4 #(
    .INIT(16'hABA8)) 
    \ALUop_reg[2]_i_1 
       (.I0(ALUctl_IBUF[0]),
        .I1(ALUctl_IBUF[2]),
        .I2(ALUctl_IBUF[1]),
        .I3(ALUctl_IBUF[3]),
        .O(\ALUop_reg[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h17)) 
    \ALUop_reg[2]_i_2 
       (.I0(ALUctl_IBUF[3]),
        .I1(ALUctl_IBUF[2]),
        .I2(ALUctl_IBUF[1]),
        .O(\ALUop_reg[2]_i_2_n_0 ));
  OBUF \ALUout_OBUF[0]_inst 
       (.I(ALUout_OBUF[0]),
        .O(ALUout[0]));
  MUXF7 \ALUout_OBUF[0]_inst_i_1 
       (.I0(\ALUout_OBUF[0]_inst_i_2_n_0 ),
        .I1(\ALUout_OBUF[0]_inst_i_3_n_0 ),
        .O(ALUout_OBUF[0]),
        .S(ALUop[2]));
  LUT4 #(
    .INIT(16'h9009)) 
    \ALUout_OBUF[0]_inst_i_10 
       (.I0(B_IBUF[4]),
        .I1(A_IBUF[4]),
        .I2(B_IBUF[5]),
        .I3(A_IBUF[5]),
        .O(\ALUout_OBUF[0]_inst_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \ALUout_OBUF[0]_inst_i_11 
       (.I0(B_IBUF[2]),
        .I1(A_IBUF[2]),
        .I2(B_IBUF[3]),
        .I3(A_IBUF[3]),
        .O(\ALUout_OBUF[0]_inst_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \ALUout_OBUF[0]_inst_i_12 
       (.I0(B_IBUF[0]),
        .I1(A_IBUF[0]),
        .I2(B_IBUF[1]),
        .I3(A_IBUF[1]),
        .O(\ALUout_OBUF[0]_inst_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hEFE08F8FEFE08080)) 
    \ALUout_OBUF[0]_inst_i_2 
       (.I0(A_IBUF[0]),
        .I1(B_IBUF[0]),
        .I2(ALUop[1]),
        .I3(data1[0]),
        .I4(ALUop[0]),
        .I5(data0[0]),
        .O(\ALUout_OBUF[0]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0003BBBB00038888)) 
    \ALUout_OBUF[0]_inst_i_3 
       (.I0(A_IBUF[2]),
        .I1(ALUop[1]),
        .I2(B_IBUF[0]),
        .I3(A_IBUF[0]),
        .I4(ALUop[0]),
        .I5(data4),
        .O(\ALUout_OBUF[0]_inst_i_3_n_0 ));
  (* COMPARATOR_THRESHOLD = "11" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \ALUout_OBUF[0]_inst_i_4 
       (.CI(1'b0),
        .CO({data4,\NLW_ALUout_OBUF[0]_inst_i_4_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\ALUout_OBUF[0]_inst_i_5_n_0 ,\ALUout_OBUF[0]_inst_i_6_n_0 ,\ALUout_OBUF[0]_inst_i_7_n_0 ,\ALUout_OBUF[0]_inst_i_8_n_0 }),
        .O(\NLW_ALUout_OBUF[0]_inst_i_4_O_UNCONNECTED [3:0]),
        .S({\ALUout_OBUF[0]_inst_i_9_n_0 ,\ALUout_OBUF[0]_inst_i_10_n_0 ,\ALUout_OBUF[0]_inst_i_11_n_0 ,\ALUout_OBUF[0]_inst_i_12_n_0 }));
  LUT4 #(
    .INIT(16'h2F02)) 
    \ALUout_OBUF[0]_inst_i_5 
       (.I0(B_IBUF[6]),
        .I1(A_IBUF[6]),
        .I2(A_IBUF[7]),
        .I3(B_IBUF[7]),
        .O(\ALUout_OBUF[0]_inst_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \ALUout_OBUF[0]_inst_i_6 
       (.I0(B_IBUF[4]),
        .I1(A_IBUF[4]),
        .I2(A_IBUF[5]),
        .I3(B_IBUF[5]),
        .O(\ALUout_OBUF[0]_inst_i_6_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \ALUout_OBUF[0]_inst_i_7 
       (.I0(B_IBUF[2]),
        .I1(A_IBUF[2]),
        .I2(A_IBUF[3]),
        .I3(B_IBUF[3]),
        .O(\ALUout_OBUF[0]_inst_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h2F02)) 
    \ALUout_OBUF[0]_inst_i_8 
       (.I0(B_IBUF[0]),
        .I1(A_IBUF[0]),
        .I2(A_IBUF[1]),
        .I3(B_IBUF[1]),
        .O(\ALUout_OBUF[0]_inst_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h9009)) 
    \ALUout_OBUF[0]_inst_i_9 
       (.I0(B_IBUF[6]),
        .I1(A_IBUF[6]),
        .I2(B_IBUF[7]),
        .I3(A_IBUF[7]),
        .O(\ALUout_OBUF[0]_inst_i_9_n_0 ));
  OBUF \ALUout_OBUF[10]_inst 
       (.I(ALUout_OBUF[10]),
        .O(ALUout[10]));
  OBUF \ALUout_OBUF[11]_inst 
       (.I(ALUout_OBUF[10]),
        .O(ALUout[11]));
  OBUF \ALUout_OBUF[12]_inst 
       (.I(ALUout_OBUF[10]),
        .O(ALUout[12]));
  OBUF \ALUout_OBUF[13]_inst 
       (.I(ALUout_OBUF[10]),
        .O(ALUout[13]));
  OBUF \ALUout_OBUF[14]_inst 
       (.I(ALUout_OBUF[10]),
        .O(ALUout[14]));
  OBUF \ALUout_OBUF[15]_inst 
       (.I(ALUout_OBUF[10]),
        .O(ALUout[15]));
  LUT4 #(
    .INIT(16'h00E0)) 
    \ALUout_OBUF[15]_inst_i_1 
       (.I0(ALUop[2]),
        .I1(data1__0),
        .I2(ALUop[0]),
        .I3(ALUop[1]),
        .O(ALUout_OBUF[10]));
  CARRY4 \ALUout_OBUF[15]_inst_i_2 
       (.CI(\ALUout_OBUF[15]_inst_i_3_n_0 ),
        .CO(\NLW_ALUout_OBUF[15]_inst_i_2_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_ALUout_OBUF[15]_inst_i_2_O_UNCONNECTED [3:1],data1__0}),
        .S({1'b0,1'b0,1'b0,1'b1}));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \ALUout_OBUF[15]_inst_i_3 
       (.CI(\ALUout_OBUF[3]_inst_i_4_n_0 ),
        .CO({\ALUout_OBUF[15]_inst_i_3_n_0 ,\NLW_ALUout_OBUF[15]_inst_i_3_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(A_IBUF[7:4]),
        .O(data1[7:4]),
        .S({\ALUout_OBUF[15]_inst_i_4_n_0 ,\ALUout_OBUF[15]_inst_i_5_n_0 ,\ALUout_OBUF[15]_inst_i_6_n_0 ,\ALUout_OBUF[15]_inst_i_7_n_0 }));
  LUT2 #(
    .INIT(4'h9)) 
    \ALUout_OBUF[15]_inst_i_4 
       (.I0(B_IBUF[7]),
        .I1(A_IBUF[7]),
        .O(\ALUout_OBUF[15]_inst_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \ALUout_OBUF[15]_inst_i_5 
       (.I0(B_IBUF[6]),
        .I1(A_IBUF[6]),
        .O(\ALUout_OBUF[15]_inst_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \ALUout_OBUF[15]_inst_i_6 
       (.I0(B_IBUF[5]),
        .I1(A_IBUF[5]),
        .O(\ALUout_OBUF[15]_inst_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \ALUout_OBUF[15]_inst_i_7 
       (.I0(B_IBUF[4]),
        .I1(A_IBUF[4]),
        .O(\ALUout_OBUF[15]_inst_i_7_n_0 ));
  OBUF \ALUout_OBUF[1]_inst 
       (.I(ALUout_OBUF[1]),
        .O(ALUout[1]));
  MUXF7 \ALUout_OBUF[1]_inst_i_1 
       (.I0(\ALUout_OBUF[1]_inst_i_2_n_0 ),
        .I1(\ALUout_OBUF[1]_inst_i_3_n_0 ),
        .O(ALUout_OBUF[1]),
        .S(ALUop[2]));
  LUT6 #(
    .INIT(64'hEFE08F8FEFE08080)) 
    \ALUout_OBUF[1]_inst_i_2 
       (.I0(A_IBUF[1]),
        .I1(B_IBUF[1]),
        .I2(ALUop[1]),
        .I3(data1[1]),
        .I4(ALUop[0]),
        .I5(data0[1]),
        .O(\ALUout_OBUF[1]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h08080838)) 
    \ALUout_OBUF[1]_inst_i_3 
       (.I0(A_IBUF[3]),
        .I1(ALUop[1]),
        .I2(ALUop[0]),
        .I3(B_IBUF[1]),
        .I4(A_IBUF[1]),
        .O(\ALUout_OBUF[1]_inst_i_3_n_0 ));
  OBUF \ALUout_OBUF[2]_inst 
       (.I(ALUout_OBUF[2]),
        .O(ALUout[2]));
  MUXF7 \ALUout_OBUF[2]_inst_i_1 
       (.I0(\ALUout_OBUF[2]_inst_i_2_n_0 ),
        .I1(\ALUout_OBUF[2]_inst_i_3_n_0 ),
        .O(ALUout_OBUF[2]),
        .S(ALUop[2]));
  LUT6 #(
    .INIT(64'hEFE08F8FEFE08080)) 
    \ALUout_OBUF[2]_inst_i_2 
       (.I0(A_IBUF[2]),
        .I1(B_IBUF[2]),
        .I2(ALUop[1]),
        .I3(data1[2]),
        .I4(ALUop[0]),
        .I5(data0[2]),
        .O(\ALUout_OBUF[2]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hA0C0A0C0A0C0AFC0)) 
    \ALUout_OBUF[2]_inst_i_3 
       (.I0(A_IBUF[0]),
        .I1(A_IBUF[4]),
        .I2(ALUop[1]),
        .I3(ALUop[0]),
        .I4(B_IBUF[2]),
        .I5(A_IBUF[2]),
        .O(\ALUout_OBUF[2]_inst_i_3_n_0 ));
  OBUF \ALUout_OBUF[3]_inst 
       (.I(ALUout_OBUF[3]),
        .O(ALUout[3]));
  MUXF7 \ALUout_OBUF[3]_inst_i_1 
       (.I0(\ALUout_OBUF[3]_inst_i_2_n_0 ),
        .I1(\ALUout_OBUF[3]_inst_i_3_n_0 ),
        .O(ALUout_OBUF[3]),
        .S(ALUop[2]));
  LUT2 #(
    .INIT(4'h6)) 
    \ALUout_OBUF[3]_inst_i_10 
       (.I0(A_IBUF[3]),
        .I1(B_IBUF[3]),
        .O(\ALUout_OBUF[3]_inst_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ALUout_OBUF[3]_inst_i_11 
       (.I0(A_IBUF[2]),
        .I1(B_IBUF[2]),
        .O(\ALUout_OBUF[3]_inst_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ALUout_OBUF[3]_inst_i_12 
       (.I0(A_IBUF[1]),
        .I1(B_IBUF[1]),
        .O(\ALUout_OBUF[3]_inst_i_12_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ALUout_OBUF[3]_inst_i_13 
       (.I0(A_IBUF[0]),
        .I1(B_IBUF[0]),
        .O(\ALUout_OBUF[3]_inst_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hEFE08F8FEFE08080)) 
    \ALUout_OBUF[3]_inst_i_2 
       (.I0(A_IBUF[3]),
        .I1(B_IBUF[3]),
        .I2(ALUop[1]),
        .I3(data1[3]),
        .I4(ALUop[0]),
        .I5(data0[3]),
        .O(\ALUout_OBUF[3]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hA0C0A0C0A0C0AFC0)) 
    \ALUout_OBUF[3]_inst_i_3 
       (.I0(A_IBUF[1]),
        .I1(A_IBUF[5]),
        .I2(ALUop[1]),
        .I3(ALUop[0]),
        .I4(B_IBUF[3]),
        .I5(A_IBUF[3]),
        .O(\ALUout_OBUF[3]_inst_i_3_n_0 ));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \ALUout_OBUF[3]_inst_i_4 
       (.CI(1'b0),
        .CO({\ALUout_OBUF[3]_inst_i_4_n_0 ,\NLW_ALUout_OBUF[3]_inst_i_4_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b1),
        .DI(A_IBUF[3:0]),
        .O(data1[3:0]),
        .S({\ALUout_OBUF[3]_inst_i_6_n_0 ,\ALUout_OBUF[3]_inst_i_7_n_0 ,\ALUout_OBUF[3]_inst_i_8_n_0 ,\ALUout_OBUF[3]_inst_i_9_n_0 }));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \ALUout_OBUF[3]_inst_i_5 
       (.CI(1'b0),
        .CO({\ALUout_OBUF[3]_inst_i_5_n_0 ,\NLW_ALUout_OBUF[3]_inst_i_5_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(A_IBUF[3:0]),
        .O(data0[3:0]),
        .S({\ALUout_OBUF[3]_inst_i_10_n_0 ,\ALUout_OBUF[3]_inst_i_11_n_0 ,\ALUout_OBUF[3]_inst_i_12_n_0 ,\ALUout_OBUF[3]_inst_i_13_n_0 }));
  LUT2 #(
    .INIT(4'h9)) 
    \ALUout_OBUF[3]_inst_i_6 
       (.I0(B_IBUF[3]),
        .I1(A_IBUF[3]),
        .O(\ALUout_OBUF[3]_inst_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \ALUout_OBUF[3]_inst_i_7 
       (.I0(B_IBUF[2]),
        .I1(A_IBUF[2]),
        .O(\ALUout_OBUF[3]_inst_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \ALUout_OBUF[3]_inst_i_8 
       (.I0(B_IBUF[1]),
        .I1(A_IBUF[1]),
        .O(\ALUout_OBUF[3]_inst_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \ALUout_OBUF[3]_inst_i_9 
       (.I0(B_IBUF[0]),
        .I1(A_IBUF[0]),
        .O(\ALUout_OBUF[3]_inst_i_9_n_0 ));
  OBUF \ALUout_OBUF[4]_inst 
       (.I(ALUout_OBUF[4]),
        .O(ALUout[4]));
  MUXF7 \ALUout_OBUF[4]_inst_i_1 
       (.I0(\ALUout_OBUF[4]_inst_i_2_n_0 ),
        .I1(\ALUout_OBUF[4]_inst_i_3_n_0 ),
        .O(ALUout_OBUF[4]),
        .S(ALUop[2]));
  LUT6 #(
    .INIT(64'hEFE08F8FEFE08080)) 
    \ALUout_OBUF[4]_inst_i_2 
       (.I0(A_IBUF[4]),
        .I1(B_IBUF[4]),
        .I2(ALUop[1]),
        .I3(data1[4]),
        .I4(ALUop[0]),
        .I5(data0[4]),
        .O(\ALUout_OBUF[4]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hA0C0A0C0A0C0AFC0)) 
    \ALUout_OBUF[4]_inst_i_3 
       (.I0(A_IBUF[2]),
        .I1(A_IBUF[6]),
        .I2(ALUop[1]),
        .I3(ALUop[0]),
        .I4(B_IBUF[4]),
        .I5(A_IBUF[4]),
        .O(\ALUout_OBUF[4]_inst_i_3_n_0 ));
  OBUF \ALUout_OBUF[5]_inst 
       (.I(ALUout_OBUF[5]),
        .O(ALUout[5]));
  MUXF7 \ALUout_OBUF[5]_inst_i_1 
       (.I0(\ALUout_OBUF[5]_inst_i_2_n_0 ),
        .I1(\ALUout_OBUF[5]_inst_i_3_n_0 ),
        .O(ALUout_OBUF[5]),
        .S(ALUop[2]));
  LUT6 #(
    .INIT(64'hEFE08F8FEFE08080)) 
    \ALUout_OBUF[5]_inst_i_2 
       (.I0(A_IBUF[5]),
        .I1(B_IBUF[5]),
        .I2(ALUop[1]),
        .I3(data1[5]),
        .I4(ALUop[0]),
        .I5(data0[5]),
        .O(\ALUout_OBUF[5]_inst_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hA0C0A0C0A0C0AFC0)) 
    \ALUout_OBUF[5]_inst_i_3 
       (.I0(A_IBUF[3]),
        .I1(A_IBUF[7]),
        .I2(ALUop[1]),
        .I3(ALUop[0]),
        .I4(B_IBUF[5]),
        .I5(A_IBUF[5]),
        .O(\ALUout_OBUF[5]_inst_i_3_n_0 ));
  OBUF \ALUout_OBUF[6]_inst 
       (.I(ALUout_OBUF[6]),
        .O(ALUout[6]));
  MUXF7 \ALUout_OBUF[6]_inst_i_1 
       (.I0(\ALUout_OBUF[6]_inst_i_2_n_0 ),
        .I1(\ALUout_OBUF[6]_inst_i_3_n_0 ),
        .O(ALUout_OBUF[6]),
        .S(ALUop[2]));
  LUT6 #(
    .INIT(64'hEFE08F8FEFE08080)) 
    \ALUout_OBUF[6]_inst_i_2 
       (.I0(A_IBUF[6]),
        .I1(B_IBUF[6]),
        .I2(ALUop[1]),
        .I3(data1[6]),
        .I4(ALUop[0]),
        .I5(data0[6]),
        .O(\ALUout_OBUF[6]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h808080B0)) 
    \ALUout_OBUF[6]_inst_i_3 
       (.I0(A_IBUF[4]),
        .I1(ALUop[1]),
        .I2(ALUop[0]),
        .I3(B_IBUF[6]),
        .I4(A_IBUF[6]),
        .O(\ALUout_OBUF[6]_inst_i_3_n_0 ));
  OBUF \ALUout_OBUF[7]_inst 
       (.I(ALUout_OBUF[7]),
        .O(ALUout[7]));
  MUXF7 \ALUout_OBUF[7]_inst_i_1 
       (.I0(\ALUout_OBUF[7]_inst_i_2_n_0 ),
        .I1(\ALUout_OBUF[7]_inst_i_3_n_0 ),
        .O(ALUout_OBUF[7]),
        .S(ALUop[2]));
  LUT6 #(
    .INIT(64'hEFE08F8FEFE08080)) 
    \ALUout_OBUF[7]_inst_i_2 
       (.I0(A_IBUF[7]),
        .I1(B_IBUF[7]),
        .I2(ALUop[1]),
        .I3(data1[7]),
        .I4(ALUop[0]),
        .I5(data0[7]),
        .O(\ALUout_OBUF[7]_inst_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h808080B0)) 
    \ALUout_OBUF[7]_inst_i_3 
       (.I0(A_IBUF[5]),
        .I1(ALUop[1]),
        .I2(ALUop[0]),
        .I3(B_IBUF[7]),
        .I4(A_IBUF[7]),
        .O(\ALUout_OBUF[7]_inst_i_3_n_0 ));
  OBUF \ALUout_OBUF[8]_inst 
       (.I(ALUout_OBUF[8]),
        .O(ALUout[8]));
  LUT6 #(
    .INIT(64'h88008800FF30CC30)) 
    \ALUout_OBUF[8]_inst_i_1 
       (.I0(A_IBUF[6]),
        .I1(ALUop[2]),
        .I2(data0[8]),
        .I3(ALUop[0]),
        .I4(data1__0),
        .I5(ALUop[1]),
        .O(ALUout_OBUF[8]));
  CARRY4 \ALUout_OBUF[8]_inst_i_2 
       (.CI(\ALUout_OBUF[8]_inst_i_3_n_0 ),
        .CO({\NLW_ALUout_OBUF[8]_inst_i_2_CO_UNCONNECTED [3:1],data0[8]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_ALUout_OBUF[8]_inst_i_2_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \ALUout_OBUF[8]_inst_i_3 
       (.CI(\ALUout_OBUF[3]_inst_i_5_n_0 ),
        .CO({\ALUout_OBUF[8]_inst_i_3_n_0 ,\NLW_ALUout_OBUF[8]_inst_i_3_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(A_IBUF[7:4]),
        .O(data0[7:4]),
        .S({\ALUout_OBUF[8]_inst_i_4_n_0 ,\ALUout_OBUF[8]_inst_i_5_n_0 ,\ALUout_OBUF[8]_inst_i_6_n_0 ,\ALUout_OBUF[8]_inst_i_7_n_0 }));
  LUT2 #(
    .INIT(4'h6)) 
    \ALUout_OBUF[8]_inst_i_4 
       (.I0(A_IBUF[7]),
        .I1(B_IBUF[7]),
        .O(\ALUout_OBUF[8]_inst_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ALUout_OBUF[8]_inst_i_5 
       (.I0(A_IBUF[6]),
        .I1(B_IBUF[6]),
        .O(\ALUout_OBUF[8]_inst_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ALUout_OBUF[8]_inst_i_6 
       (.I0(A_IBUF[5]),
        .I1(B_IBUF[5]),
        .O(\ALUout_OBUF[8]_inst_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \ALUout_OBUF[8]_inst_i_7 
       (.I0(A_IBUF[4]),
        .I1(B_IBUF[4]),
        .O(\ALUout_OBUF[8]_inst_i_7_n_0 ));
  OBUF \ALUout_OBUF[9]_inst 
       (.I(ALUout_OBUF[9]),
        .O(ALUout[9]));
  LUT5 #(
    .INIT(32'h8800FC00)) 
    \ALUout_OBUF[9]_inst_i_1 
       (.I0(A_IBUF[7]),
        .I1(ALUop[2]),
        .I2(data1__0),
        .I3(ALUop[0]),
        .I4(ALUop[1]),
        .O(ALUout_OBUF[9]));
  IBUF \A_IBUF[0]_inst 
       (.I(A[0]),
        .O(A_IBUF[0]));
  IBUF \A_IBUF[1]_inst 
       (.I(A[1]),
        .O(A_IBUF[1]));
  IBUF \A_IBUF[2]_inst 
       (.I(A[2]),
        .O(A_IBUF[2]));
  IBUF \A_IBUF[3]_inst 
       (.I(A[3]),
        .O(A_IBUF[3]));
  IBUF \A_IBUF[4]_inst 
       (.I(A[4]),
        .O(A_IBUF[4]));
  IBUF \A_IBUF[5]_inst 
       (.I(A[5]),
        .O(A_IBUF[5]));
  IBUF \A_IBUF[6]_inst 
       (.I(A[6]),
        .O(A_IBUF[6]));
  IBUF \A_IBUF[7]_inst 
       (.I(A[7]),
        .O(A_IBUF[7]));
  IBUF \B_IBUF[0]_inst 
       (.I(B[0]),
        .O(B_IBUF[0]));
  IBUF \B_IBUF[1]_inst 
       (.I(B[1]),
        .O(B_IBUF[1]));
  IBUF \B_IBUF[2]_inst 
       (.I(B[2]),
        .O(B_IBUF[2]));
  IBUF \B_IBUF[3]_inst 
       (.I(B[3]),
        .O(B_IBUF[3]));
  IBUF \B_IBUF[4]_inst 
       (.I(B[4]),
        .O(B_IBUF[4]));
  IBUF \B_IBUF[5]_inst 
       (.I(B[5]),
        .O(B_IBUF[5]));
  IBUF \B_IBUF[6]_inst 
       (.I(B[6]),
        .O(B_IBUF[6]));
  IBUF \B_IBUF[7]_inst 
       (.I(B[7]),
        .O(B_IBUF[7]));
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
