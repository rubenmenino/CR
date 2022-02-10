// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Wed Apr  7 22:30:08 2021
// Host        : DESKTOP-AV7OBB1 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/Menino/Desktop/MEU/4ano/2semestre/CR/Aula3/test/test.sim/sim_1/synth/timing/xsim/wrapper_time_synth.v
// Design      : wrapper
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module Nexys4DispDriver
   (seg_OBUF,
    CLK,
    Q);
  output [6:0]seg_OBUF;
  input CLK;
  input [3:0]Q;

  wire CLK;
  wire [3:0]Q;
  wire [3:0]hexSeg;
  wire [1:0]plusOp;
  wire [2:0]s_idx;
  wire \s_idx[2]_i_1_n_0 ;
  wire \s_value[0]_i_1_n_0 ;
  wire \s_value[1]_i_1_n_0 ;
  wire \s_value[2]_i_1_n_0 ;
  wire \s_value[3]_i_1_n_0 ;
  wire \s_value_reg_n_0_[0] ;
  wire \s_value_reg_n_0_[1] ;
  wire \s_value_reg_n_0_[2] ;
  wire \s_value_reg_n_0_[3] ;
  wire [6:0]seg_OBUF;

  FDRE #(
    .INIT(1'b0)) 
    \hexSeg_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\s_value_reg_n_0_[0] ),
        .Q(hexSeg[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hexSeg_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\s_value_reg_n_0_[1] ),
        .Q(hexSeg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hexSeg_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\s_value_reg_n_0_[2] ),
        .Q(hexSeg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \hexSeg_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\s_value_reg_n_0_[3] ),
        .Q(hexSeg[3]),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \s_idx[0]_i_1 
       (.I0(s_idx[0]),
        .O(plusOp[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \s_idx[1]_i_1 
       (.I0(s_idx[0]),
        .I1(s_idx[1]),
        .O(plusOp[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \s_idx[2]_i_1 
       (.I0(s_idx[0]),
        .I1(s_idx[1]),
        .I2(s_idx[2]),
        .O(\s_idx[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_idx_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(plusOp[0]),
        .Q(s_idx[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_idx_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(plusOp[1]),
        .Q(s_idx[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_idx_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\s_idx[2]_i_1_n_0 ),
        .Q(s_idx[2]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hF3F2)) 
    \s_value[0]_i_1 
       (.I0(s_idx[2]),
        .I1(s_idx[1]),
        .I2(s_idx[0]),
        .I3(Q[0]),
        .O(\s_value[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h2276)) 
    \s_value[1]_i_1 
       (.I0(s_idx[2]),
        .I1(s_idx[1]),
        .I2(Q[1]),
        .I3(s_idx[0]),
        .O(\s_value[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hEE32)) 
    \s_value[2]_i_1 
       (.I0(s_idx[2]),
        .I1(s_idx[1]),
        .I2(Q[2]),
        .I3(s_idx[0]),
        .O(\s_value[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h8898)) 
    \s_value[3]_i_1 
       (.I0(s_idx[2]),
        .I1(s_idx[0]),
        .I2(Q[3]),
        .I3(s_idx[1]),
        .O(\s_value[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_value_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\s_value[0]_i_1_n_0 ),
        .Q(\s_value_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_value_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(\s_value[1]_i_1_n_0 ),
        .Q(\s_value_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_value_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(\s_value[2]_i_1_n_0 ),
        .Q(\s_value_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_value_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(\s_value[3]_i_1_n_0 ),
        .Q(\s_value_reg_n_0_[3] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h2094)) 
    \seg_OBUF[0]_inst_i_1 
       (.I0(hexSeg[3]),
        .I1(hexSeg[2]),
        .I2(hexSeg[0]),
        .I3(hexSeg[1]),
        .O(seg_OBUF[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hA4C8)) 
    \seg_OBUF[1]_inst_i_1 
       (.I0(hexSeg[3]),
        .I1(hexSeg[2]),
        .I2(hexSeg[1]),
        .I3(hexSeg[0]),
        .O(seg_OBUF[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hA210)) 
    \seg_OBUF[2]_inst_i_1 
       (.I0(hexSeg[3]),
        .I1(hexSeg[0]),
        .I2(hexSeg[1]),
        .I3(hexSeg[2]),
        .O(seg_OBUF[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hC214)) 
    \seg_OBUF[3]_inst_i_1 
       (.I0(hexSeg[3]),
        .I1(hexSeg[2]),
        .I2(hexSeg[0]),
        .I3(hexSeg[1]),
        .O(seg_OBUF[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h5710)) 
    \seg_OBUF[4]_inst_i_1 
       (.I0(hexSeg[3]),
        .I1(hexSeg[1]),
        .I2(hexSeg[2]),
        .I3(hexSeg[0]),
        .O(seg_OBUF[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h5190)) 
    \seg_OBUF[5]_inst_i_1 
       (.I0(hexSeg[3]),
        .I1(hexSeg[2]),
        .I2(hexSeg[0]),
        .I3(hexSeg[1]),
        .O(seg_OBUF[5]));
  LUT4 #(
    .INIT(16'h4025)) 
    \seg_OBUF[6]_inst_i_1 
       (.I0(hexSeg[3]),
        .I1(hexSeg[0]),
        .I2(hexSeg[2]),
        .I3(hexSeg[1]),
        .O(seg_OBUF[6]));
endmodule

module freq_divider
   (CLK,
    \s_counter_reg[0]_0 ,
    s_reset);
  output CLK;
  input \s_counter_reg[0]_0 ;
  input s_reset;

  wire CLK;
  wire clkOut_i_1_n_0;
  wire clkOut_i_2_n_0;
  wire clkOut_i_3_n_0;
  wire clkOut_i_4_n_0;
  wire \s_counter[0]_i_1_n_0 ;
  wire \s_counter[0]_i_3_n_0 ;
  wire \s_counter[0]_i_4_n_0 ;
  wire \s_counter[0]_i_5_n_0 ;
  wire \s_counter[0]_i_6_n_0 ;
  wire \s_counter[0]_i_7_n_0 ;
  wire \s_counter[0]_i_8_n_0 ;
  wire \s_counter[0]_i_9_n_0 ;
  wire [30:0]s_counter_reg;
  wire \s_counter_reg[0]_0 ;
  wire \s_counter_reg[0]_i_2_n_0 ;
  wire \s_counter_reg[0]_i_2_n_1 ;
  wire \s_counter_reg[0]_i_2_n_2 ;
  wire \s_counter_reg[0]_i_2_n_3 ;
  wire \s_counter_reg[0]_i_2_n_4 ;
  wire \s_counter_reg[0]_i_2_n_5 ;
  wire \s_counter_reg[0]_i_2_n_6 ;
  wire \s_counter_reg[0]_i_2_n_7 ;
  wire \s_counter_reg[12]_i_1_n_0 ;
  wire \s_counter_reg[12]_i_1_n_1 ;
  wire \s_counter_reg[12]_i_1_n_2 ;
  wire \s_counter_reg[12]_i_1_n_3 ;
  wire \s_counter_reg[12]_i_1_n_4 ;
  wire \s_counter_reg[12]_i_1_n_5 ;
  wire \s_counter_reg[12]_i_1_n_6 ;
  wire \s_counter_reg[12]_i_1_n_7 ;
  wire \s_counter_reg[16]_i_1_n_0 ;
  wire \s_counter_reg[16]_i_1_n_1 ;
  wire \s_counter_reg[16]_i_1_n_2 ;
  wire \s_counter_reg[16]_i_1_n_3 ;
  wire \s_counter_reg[16]_i_1_n_4 ;
  wire \s_counter_reg[16]_i_1_n_5 ;
  wire \s_counter_reg[16]_i_1_n_6 ;
  wire \s_counter_reg[16]_i_1_n_7 ;
  wire \s_counter_reg[20]_i_1_n_0 ;
  wire \s_counter_reg[20]_i_1_n_1 ;
  wire \s_counter_reg[20]_i_1_n_2 ;
  wire \s_counter_reg[20]_i_1_n_3 ;
  wire \s_counter_reg[20]_i_1_n_4 ;
  wire \s_counter_reg[20]_i_1_n_5 ;
  wire \s_counter_reg[20]_i_1_n_6 ;
  wire \s_counter_reg[20]_i_1_n_7 ;
  wire \s_counter_reg[24]_i_1_n_0 ;
  wire \s_counter_reg[24]_i_1_n_1 ;
  wire \s_counter_reg[24]_i_1_n_2 ;
  wire \s_counter_reg[24]_i_1_n_3 ;
  wire \s_counter_reg[24]_i_1_n_4 ;
  wire \s_counter_reg[24]_i_1_n_5 ;
  wire \s_counter_reg[24]_i_1_n_6 ;
  wire \s_counter_reg[24]_i_1_n_7 ;
  wire \s_counter_reg[28]_i_1_n_2 ;
  wire \s_counter_reg[28]_i_1_n_3 ;
  wire \s_counter_reg[28]_i_1_n_5 ;
  wire \s_counter_reg[28]_i_1_n_6 ;
  wire \s_counter_reg[28]_i_1_n_7 ;
  wire \s_counter_reg[4]_i_1_n_0 ;
  wire \s_counter_reg[4]_i_1_n_1 ;
  wire \s_counter_reg[4]_i_1_n_2 ;
  wire \s_counter_reg[4]_i_1_n_3 ;
  wire \s_counter_reg[4]_i_1_n_4 ;
  wire \s_counter_reg[4]_i_1_n_5 ;
  wire \s_counter_reg[4]_i_1_n_6 ;
  wire \s_counter_reg[4]_i_1_n_7 ;
  wire \s_counter_reg[8]_i_1_n_0 ;
  wire \s_counter_reg[8]_i_1_n_1 ;
  wire \s_counter_reg[8]_i_1_n_2 ;
  wire \s_counter_reg[8]_i_1_n_3 ;
  wire \s_counter_reg[8]_i_1_n_4 ;
  wire \s_counter_reg[8]_i_1_n_5 ;
  wire \s_counter_reg[8]_i_1_n_6 ;
  wire \s_counter_reg[8]_i_1_n_7 ;
  wire s_reset;
  wire [3:2]\NLW_s_counter_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_s_counter_reg[28]_i_1_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hFFFFFFFF80000000)) 
    clkOut_i_1
       (.I0(clkOut_i_2_n_0),
        .I1(\s_counter[0]_i_4_n_0 ),
        .I2(clkOut_i_3_n_0),
        .I3(clkOut_i_4_n_0),
        .I4(\s_counter[0]_i_7_n_0 ),
        .I5(CLK),
        .O(clkOut_i_1_n_0));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    clkOut_i_2
       (.I0(\s_counter[0]_i_9_n_0 ),
        .I1(s_counter_reg[14]),
        .I2(s_counter_reg[13]),
        .I3(s_counter_reg[16]),
        .I4(s_counter_reg[15]),
        .I5(s_counter_reg[0]),
        .O(clkOut_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000001000000000)) 
    clkOut_i_3
       (.I0(s_counter_reg[3]),
        .I1(s_counter_reg[4]),
        .I2(s_counter_reg[1]),
        .I3(s_counter_reg[2]),
        .I4(s_counter_reg[6]),
        .I5(s_counter_reg[5]),
        .O(clkOut_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    clkOut_i_4
       (.I0(s_counter_reg[10]),
        .I1(s_counter_reg[9]),
        .I2(s_counter_reg[7]),
        .I3(s_counter_reg[8]),
        .I4(s_counter_reg[11]),
        .I5(s_counter_reg[12]),
        .O(clkOut_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    clkOut_reg
       (.C(\s_counter_reg[0]_0 ),
        .CE(1'b1),
        .D(clkOut_i_1_n_0),
        .Q(CLK),
        .R(\s_counter[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF80000000)) 
    \s_counter[0]_i_1 
       (.I0(\s_counter[0]_i_3_n_0 ),
        .I1(\s_counter[0]_i_4_n_0 ),
        .I2(\s_counter[0]_i_5_n_0 ),
        .I3(\s_counter[0]_i_6_n_0 ),
        .I4(\s_counter[0]_i_7_n_0 ),
        .I5(s_reset),
        .O(\s_counter[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \s_counter[0]_i_3 
       (.I0(\s_counter[0]_i_9_n_0 ),
        .I1(s_counter_reg[14]),
        .I2(s_counter_reg[13]),
        .I3(s_counter_reg[16]),
        .I4(s_counter_reg[15]),
        .I5(s_counter_reg[0]),
        .O(\s_counter[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \s_counter[0]_i_4 
       (.I0(s_counter_reg[21]),
        .I1(s_counter_reg[22]),
        .I2(s_counter_reg[19]),
        .I3(s_counter_reg[20]),
        .I4(s_counter_reg[24]),
        .I5(s_counter_reg[23]),
        .O(\s_counter[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000100000000000)) 
    \s_counter[0]_i_5 
       (.I0(s_counter_reg[3]),
        .I1(s_counter_reg[4]),
        .I2(s_counter_reg[1]),
        .I3(s_counter_reg[2]),
        .I4(s_counter_reg[5]),
        .I5(s_counter_reg[6]),
        .O(\s_counter[0]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    \s_counter[0]_i_6 
       (.I0(s_counter_reg[9]),
        .I1(s_counter_reg[10]),
        .I2(s_counter_reg[7]),
        .I3(s_counter_reg[8]),
        .I4(s_counter_reg[12]),
        .I5(s_counter_reg[11]),
        .O(\s_counter[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \s_counter[0]_i_7 
       (.I0(s_counter_reg[27]),
        .I1(s_counter_reg[28]),
        .I2(s_counter_reg[25]),
        .I3(s_counter_reg[26]),
        .I4(s_counter_reg[30]),
        .I5(s_counter_reg[29]),
        .O(\s_counter[0]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \s_counter[0]_i_8 
       (.I0(s_counter_reg[0]),
        .O(\s_counter[0]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \s_counter[0]_i_9 
       (.I0(s_counter_reg[17]),
        .I1(s_counter_reg[18]),
        .O(\s_counter[0]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_counter_reg[0] 
       (.C(\s_counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\s_counter_reg[0]_i_2_n_7 ),
        .Q(s_counter_reg[0]),
        .R(\s_counter[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \s_counter_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\s_counter_reg[0]_i_2_n_0 ,\s_counter_reg[0]_i_2_n_1 ,\s_counter_reg[0]_i_2_n_2 ,\s_counter_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\s_counter_reg[0]_i_2_n_4 ,\s_counter_reg[0]_i_2_n_5 ,\s_counter_reg[0]_i_2_n_6 ,\s_counter_reg[0]_i_2_n_7 }),
        .S({s_counter_reg[3:1],\s_counter[0]_i_8_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \s_counter_reg[10] 
       (.C(\s_counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\s_counter_reg[8]_i_1_n_5 ),
        .Q(s_counter_reg[10]),
        .R(\s_counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_counter_reg[11] 
       (.C(\s_counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\s_counter_reg[8]_i_1_n_4 ),
        .Q(s_counter_reg[11]),
        .R(\s_counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_counter_reg[12] 
       (.C(\s_counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\s_counter_reg[12]_i_1_n_7 ),
        .Q(s_counter_reg[12]),
        .R(\s_counter[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \s_counter_reg[12]_i_1 
       (.CI(\s_counter_reg[8]_i_1_n_0 ),
        .CO({\s_counter_reg[12]_i_1_n_0 ,\s_counter_reg[12]_i_1_n_1 ,\s_counter_reg[12]_i_1_n_2 ,\s_counter_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\s_counter_reg[12]_i_1_n_4 ,\s_counter_reg[12]_i_1_n_5 ,\s_counter_reg[12]_i_1_n_6 ,\s_counter_reg[12]_i_1_n_7 }),
        .S(s_counter_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \s_counter_reg[13] 
       (.C(\s_counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\s_counter_reg[12]_i_1_n_6 ),
        .Q(s_counter_reg[13]),
        .R(\s_counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_counter_reg[14] 
       (.C(\s_counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\s_counter_reg[12]_i_1_n_5 ),
        .Q(s_counter_reg[14]),
        .R(\s_counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_counter_reg[15] 
       (.C(\s_counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\s_counter_reg[12]_i_1_n_4 ),
        .Q(s_counter_reg[15]),
        .R(\s_counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_counter_reg[16] 
       (.C(\s_counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\s_counter_reg[16]_i_1_n_7 ),
        .Q(s_counter_reg[16]),
        .R(\s_counter[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \s_counter_reg[16]_i_1 
       (.CI(\s_counter_reg[12]_i_1_n_0 ),
        .CO({\s_counter_reg[16]_i_1_n_0 ,\s_counter_reg[16]_i_1_n_1 ,\s_counter_reg[16]_i_1_n_2 ,\s_counter_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\s_counter_reg[16]_i_1_n_4 ,\s_counter_reg[16]_i_1_n_5 ,\s_counter_reg[16]_i_1_n_6 ,\s_counter_reg[16]_i_1_n_7 }),
        .S(s_counter_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \s_counter_reg[17] 
       (.C(\s_counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\s_counter_reg[16]_i_1_n_6 ),
        .Q(s_counter_reg[17]),
        .R(\s_counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_counter_reg[18] 
       (.C(\s_counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\s_counter_reg[16]_i_1_n_5 ),
        .Q(s_counter_reg[18]),
        .R(\s_counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_counter_reg[19] 
       (.C(\s_counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\s_counter_reg[16]_i_1_n_4 ),
        .Q(s_counter_reg[19]),
        .R(\s_counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_counter_reg[1] 
       (.C(\s_counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\s_counter_reg[0]_i_2_n_6 ),
        .Q(s_counter_reg[1]),
        .R(\s_counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_counter_reg[20] 
       (.C(\s_counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\s_counter_reg[20]_i_1_n_7 ),
        .Q(s_counter_reg[20]),
        .R(\s_counter[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \s_counter_reg[20]_i_1 
       (.CI(\s_counter_reg[16]_i_1_n_0 ),
        .CO({\s_counter_reg[20]_i_1_n_0 ,\s_counter_reg[20]_i_1_n_1 ,\s_counter_reg[20]_i_1_n_2 ,\s_counter_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\s_counter_reg[20]_i_1_n_4 ,\s_counter_reg[20]_i_1_n_5 ,\s_counter_reg[20]_i_1_n_6 ,\s_counter_reg[20]_i_1_n_7 }),
        .S(s_counter_reg[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \s_counter_reg[21] 
       (.C(\s_counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\s_counter_reg[20]_i_1_n_6 ),
        .Q(s_counter_reg[21]),
        .R(\s_counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_counter_reg[22] 
       (.C(\s_counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\s_counter_reg[20]_i_1_n_5 ),
        .Q(s_counter_reg[22]),
        .R(\s_counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_counter_reg[23] 
       (.C(\s_counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\s_counter_reg[20]_i_1_n_4 ),
        .Q(s_counter_reg[23]),
        .R(\s_counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_counter_reg[24] 
       (.C(\s_counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\s_counter_reg[24]_i_1_n_7 ),
        .Q(s_counter_reg[24]),
        .R(\s_counter[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \s_counter_reg[24]_i_1 
       (.CI(\s_counter_reg[20]_i_1_n_0 ),
        .CO({\s_counter_reg[24]_i_1_n_0 ,\s_counter_reg[24]_i_1_n_1 ,\s_counter_reg[24]_i_1_n_2 ,\s_counter_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\s_counter_reg[24]_i_1_n_4 ,\s_counter_reg[24]_i_1_n_5 ,\s_counter_reg[24]_i_1_n_6 ,\s_counter_reg[24]_i_1_n_7 }),
        .S(s_counter_reg[27:24]));
  FDRE #(
    .INIT(1'b0)) 
    \s_counter_reg[25] 
       (.C(\s_counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\s_counter_reg[24]_i_1_n_6 ),
        .Q(s_counter_reg[25]),
        .R(\s_counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_counter_reg[26] 
       (.C(\s_counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\s_counter_reg[24]_i_1_n_5 ),
        .Q(s_counter_reg[26]),
        .R(\s_counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_counter_reg[27] 
       (.C(\s_counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\s_counter_reg[24]_i_1_n_4 ),
        .Q(s_counter_reg[27]),
        .R(\s_counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_counter_reg[28] 
       (.C(\s_counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\s_counter_reg[28]_i_1_n_7 ),
        .Q(s_counter_reg[28]),
        .R(\s_counter[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \s_counter_reg[28]_i_1 
       (.CI(\s_counter_reg[24]_i_1_n_0 ),
        .CO({\NLW_s_counter_reg[28]_i_1_CO_UNCONNECTED [3:2],\s_counter_reg[28]_i_1_n_2 ,\s_counter_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_s_counter_reg[28]_i_1_O_UNCONNECTED [3],\s_counter_reg[28]_i_1_n_5 ,\s_counter_reg[28]_i_1_n_6 ,\s_counter_reg[28]_i_1_n_7 }),
        .S({1'b0,s_counter_reg[30:28]}));
  FDRE #(
    .INIT(1'b0)) 
    \s_counter_reg[29] 
       (.C(\s_counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\s_counter_reg[28]_i_1_n_6 ),
        .Q(s_counter_reg[29]),
        .R(\s_counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_counter_reg[2] 
       (.C(\s_counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\s_counter_reg[0]_i_2_n_5 ),
        .Q(s_counter_reg[2]),
        .R(\s_counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_counter_reg[30] 
       (.C(\s_counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\s_counter_reg[28]_i_1_n_5 ),
        .Q(s_counter_reg[30]),
        .R(\s_counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_counter_reg[3] 
       (.C(\s_counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\s_counter_reg[0]_i_2_n_4 ),
        .Q(s_counter_reg[3]),
        .R(\s_counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_counter_reg[4] 
       (.C(\s_counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\s_counter_reg[4]_i_1_n_7 ),
        .Q(s_counter_reg[4]),
        .R(\s_counter[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \s_counter_reg[4]_i_1 
       (.CI(\s_counter_reg[0]_i_2_n_0 ),
        .CO({\s_counter_reg[4]_i_1_n_0 ,\s_counter_reg[4]_i_1_n_1 ,\s_counter_reg[4]_i_1_n_2 ,\s_counter_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\s_counter_reg[4]_i_1_n_4 ,\s_counter_reg[4]_i_1_n_5 ,\s_counter_reg[4]_i_1_n_6 ,\s_counter_reg[4]_i_1_n_7 }),
        .S(s_counter_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \s_counter_reg[5] 
       (.C(\s_counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\s_counter_reg[4]_i_1_n_6 ),
        .Q(s_counter_reg[5]),
        .R(\s_counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_counter_reg[6] 
       (.C(\s_counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\s_counter_reg[4]_i_1_n_5 ),
        .Q(s_counter_reg[6]),
        .R(\s_counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_counter_reg[7] 
       (.C(\s_counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\s_counter_reg[4]_i_1_n_4 ),
        .Q(s_counter_reg[7]),
        .R(\s_counter[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \s_counter_reg[8] 
       (.C(\s_counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\s_counter_reg[8]_i_1_n_7 ),
        .Q(s_counter_reg[8]),
        .R(\s_counter[0]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \s_counter_reg[8]_i_1 
       (.CI(\s_counter_reg[4]_i_1_n_0 ),
        .CO({\s_counter_reg[8]_i_1_n_0 ,\s_counter_reg[8]_i_1_n_1 ,\s_counter_reg[8]_i_1_n_2 ,\s_counter_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\s_counter_reg[8]_i_1_n_4 ,\s_counter_reg[8]_i_1_n_5 ,\s_counter_reg[8]_i_1_n_6 ,\s_counter_reg[8]_i_1_n_7 }),
        .S(s_counter_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \s_counter_reg[9] 
       (.C(\s_counter_reg[0]_0 ),
        .CE(1'b1),
        .D(\s_counter_reg[8]_i_1_n_6 ),
        .Q(s_counter_reg[9]),
        .R(\s_counter[0]_i_1_n_0 ));
endmodule

(* NotValidForBitStream *)
module wrapper
   (clk,
    sw,
    btnC,
    an,
    seg,
    dp);
  input clk;
  input [15:0]sw;
  input btnC;
  output [7:0]an;
  output [6:0]seg;
  output dp;

  wire [7:0]an;
  wire btnC;
  wire btnC_IBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire dp;
  wire freq800HZ_n_0;
  wire s_reset;
  wire [3:0]s_value0;
  wire [6:0]seg;
  wire [6:0]seg_OBUF;
  wire [15:0]sw;
  wire [3:0]sw_IBUF;

initial begin
 $sdf_annotate("wrapper_time_synth.sdf",,,,"tool_control");
end
  OBUFT \an_OBUF[0]_inst 
       (.I(1'b0),
        .O(an[0]),
        .T(1'b1));
  OBUFT \an_OBUF[1]_inst 
       (.I(1'b0),
        .O(an[1]),
        .T(1'b1));
  OBUFT \an_OBUF[2]_inst 
       (.I(1'b0),
        .O(an[2]),
        .T(1'b1));
  OBUFT \an_OBUF[3]_inst 
       (.I(1'b0),
        .O(an[3]),
        .T(1'b1));
  OBUFT \an_OBUF[4]_inst 
       (.I(1'b0),
        .O(an[4]),
        .T(1'b1));
  OBUFT \an_OBUF[5]_inst 
       (.I(1'b0),
        .O(an[5]),
        .T(1'b1));
  OBUFT \an_OBUF[6]_inst 
       (.I(1'b0),
        .O(an[6]),
        .T(1'b1));
  OBUFT \an_OBUF[7]_inst 
       (.I(1'b0),
        .O(an[7]),
        .T(1'b1));
  IBUF btnC_IBUF_inst
       (.I(btnC),
        .O(btnC_IBUF));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  OBUF dp_OBUF_inst
       (.I(1'b0),
        .O(dp));
  Nexys4DispDriver driver
       (.CLK(freq800HZ_n_0),
        .Q(s_value0),
        .seg_OBUF(seg_OBUF));
  freq_divider freq800HZ
       (.CLK(freq800HZ_n_0),
        .\s_counter_reg[0]_0 (clk_IBUF_BUFG),
        .s_reset(s_reset));
  FDRE #(
    .INIT(1'b0)) 
    s_reset_reg
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(btnC_IBUF),
        .Q(s_reset),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_value0_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(sw_IBUF[0]),
        .Q(s_value0[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_value0_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(sw_IBUF[1]),
        .Q(s_value0[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_value0_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(sw_IBUF[2]),
        .Q(s_value0[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \s_value0_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(sw_IBUF[3]),
        .Q(s_value0[3]),
        .R(1'b0));
  OBUF \seg_OBUF[0]_inst 
       (.I(seg_OBUF[0]),
        .O(seg[0]));
  OBUF \seg_OBUF[1]_inst 
       (.I(seg_OBUF[1]),
        .O(seg[1]));
  OBUF \seg_OBUF[2]_inst 
       (.I(seg_OBUF[2]),
        .O(seg[2]));
  OBUF \seg_OBUF[3]_inst 
       (.I(seg_OBUF[3]),
        .O(seg[3]));
  OBUF \seg_OBUF[4]_inst 
       (.I(seg_OBUF[4]),
        .O(seg[4]));
  OBUF \seg_OBUF[5]_inst 
       (.I(seg_OBUF[5]),
        .O(seg[5]));
  OBUF \seg_OBUF[6]_inst 
       (.I(seg_OBUF[6]),
        .O(seg[6]));
  IBUF \sw_IBUF[0]_inst 
       (.I(sw[0]),
        .O(sw_IBUF[0]));
  IBUF \sw_IBUF[1]_inst 
       (.I(sw[1]),
        .O(sw_IBUF[1]));
  IBUF \sw_IBUF[2]_inst 
       (.I(sw[2]),
        .O(sw_IBUF[2]));
  IBUF \sw_IBUF[3]_inst 
       (.I(sw[3]),
        .O(sw_IBUF[3]));
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
