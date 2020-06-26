// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Fri Jun 26 16:43:33 2020
// Host        : Prometheus running 64-bit Ubuntu 20.04 LTS
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               /home/ngonidzashe/Documents/XADC/Nexys-A7-100T-XADC-2018.2-1/vivado_proj/Nexys-A7-100T-XADC.sim/sim_1/impl/timing/xsim/XADCdemo_time_impl.v
// Design      : XADCdemo
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module DigitToSeg
   (in1,
    in2,
    in3,
    in4,
    in5,
    in6,
    in7,
    in8,
    mclk,
    an,
    dp,
    seg);
  input [3:0]in1;
  input [3:0]in2;
  input [3:0]in3;
  input [3:0]in4;
  input [3:0]in5;
  input [3:0]in6;
  input [3:0]in7;
  input [3:0]in8;
  input mclk;
  output [7:0]an;
  output dp;
  output [6:0]seg;

  wire [3:0]XLXN_102;
  wire [2:0]XLXN_109_0;
  wire XLXN_94;
  wire [7:0]an;
  wire [3:0]in1;
  wire [3:0]in2;
  wire [3:0]in3;
  wire [3:0]in4;
  wire [3:0]in5;
  wire [3:0]in6;
  wire [3:0]in7;
  wire mclk;
  wire [6:0]seg;
  wire [3:0]NLW_XLXI_45_I7_UNCONNECTED;
  wire NLW_XLXI_47_rst_UNCONNECTED;
  wire NLW_XLXI_49_rst_UNCONNECTED;
  wire NLW_XLXI_50_dp_UNCONNECTED;

  mux4_4bus XLXI_45
       (.I0(in1),
        .I1(in2),
        .I2(in3),
        .I3(in4),
        .I4(in5),
        .I5(in6),
        .I6(in7),
        .I7(NLW_XLXI_45_I7_UNCONNECTED[3:0]),
        .Sel(XLXN_109_0),
        .Y(XLXN_102));
  (* constantNumber = "10000" *) 
  segClkDevider XLXI_47
       (.clk(mclk),
        .clk_div(XLXN_94),
        .rst(NLW_XLXI_47_rst_UNCONNECTED));
  counter3bit XLXI_49
       (.Q(XLXN_109_0),
        .clk(XLXN_94),
        .rst(NLW_XLXI_49_rst_UNCONNECTED));
  decoder_3_8 XLXI_50
       (.I(XLXN_109_0),
        .an(an),
        .dp(NLW_XLXI_50_dp_UNCONNECTED));
  sevensegdecoder XLXI_6
       (.nIn(XLXN_102),
        .ssOut(seg));
endmodule

(* BEGIN = "4'b0011" *) (* CHORUS = "4'b0100" *) (* CHORUS_SW = "3" *) 
(* DISTORTION = "4'b0101" *) (* DISTORTION_SW = "2" *) (* ECHO = "4'b0110" *) 
(* ECHO_SW = "4" *) (* ECO_CHECKSUM = "eabc41a8" *) (* OUTPUT = "4'b1000" *) 
(* REVERB = "4'b0111" *) (* REVERB_SW = "5" *) 
(* NotValidForBitStream *)
module XADCdemo
   (CLK100MHZ,
    vauxp2,
    vauxn2,
    vauxp3,
    vauxn3,
    vauxp10,
    vauxn10,
    vauxp11,
    vauxn11,
    vp_in,
    vn_in,
    sw,
    LED,
    an,
    dp,
    seg,
    AUD_PWM,
    AUD_SD);
  input CLK100MHZ;
  input vauxp2;
  input vauxn2;
  input vauxp3;
  input vauxn3;
  input vauxp10;
  input vauxn10;
  input vauxp11;
  input vauxn11;
  input vp_in;
  input vn_in;
  input [5:0]sw;
  output [15:0]LED;
  output [7:0]an;
  output dp;
  output [6:0]seg;
  output AUD_PWM;
  output AUD_SD;

  wire AUD_PWM;
  wire AUD_PWM_OBUF;
  wire AUD_SD;
  wire [3:0]Address_in;
  wire \Address_in[3]_i_1_n_0 ;
  wire CLK100MHZ;
  wire CLK100MHZ_IBUF;
  wire CLK100MHZ_IBUF_BUFG;
  wire [15:0]LED;
  wire \LED[10]_i_1_n_0 ;
  wire \LED[11]_i_1_n_0 ;
  wire \LED[12]_i_1_n_0 ;
  wire \LED[13]_i_1_n_0 ;
  wire \LED[13]_i_2_n_0 ;
  wire \LED[14]_i_1_n_0 ;
  wire \LED[15]_i_1_n_0 ;
  wire \LED[1]_i_1_n_0 ;
  wire \LED[2]_i_1_n_0 ;
  wire \LED[3]_i_1_n_0 ;
  wire \LED[4]_i_1_n_0 ;
  wire \LED[5]_i_1_n_0 ;
  wire \LED[6]_i_1_n_0 ;
  wire \LED[7]_i_1_n_0 ;
  wire \LED[9]_i_1_n_0 ;
  wire [15:1]LED_OBUF;
  wire [10:0]PWM;
  wire \PWM[10]_i_1_n_0 ;
  wire [7:0]an;
  wire [7:0]an_OBUF;
  wire [10:0]audio_reg;
  wire \audio_reg[10]_i_1_n_0 ;
  wire \audio_reg_reg_n_0_[0] ;
  wire \audio_reg_reg_n_0_[10] ;
  wire \audio_reg_reg_n_0_[1] ;
  wire \audio_reg_reg_n_0_[2] ;
  wire \audio_reg_reg_n_0_[3] ;
  wire \audio_reg_reg_n_0_[4] ;
  wire \audio_reg_reg_n_0_[5] ;
  wire \audio_reg_reg_n_0_[6] ;
  wire \audio_reg_reg_n_0_[7] ;
  wire \audio_reg_reg_n_0_[8] ;
  wire \audio_reg_reg_n_0_[9] ;
  wire [9:0]c_data;
  wire \count[0]_i_2_n_0 ;
  wire \count[12]_i_2_n_0 ;
  wire \count[12]_i_3_n_0 ;
  wire \count[16]_i_2_n_0 ;
  wire \count[20]_i_2_n_0 ;
  wire \count[20]_i_3_n_0 ;
  wire \count[4]_i_2_n_0 ;
  wire \count[8]_i_2_n_0 ;
  wire \count[8]_i_3_n_0 ;
  wire [32:0]count_reg;
  wire \count_reg[0]_i_1_n_0 ;
  wire \count_reg[0]_i_1_n_4 ;
  wire \count_reg[0]_i_1_n_5 ;
  wire \count_reg[0]_i_1_n_6 ;
  wire \count_reg[0]_i_1_n_7 ;
  wire \count_reg[12]_i_1_n_0 ;
  wire \count_reg[12]_i_1_n_4 ;
  wire \count_reg[12]_i_1_n_5 ;
  wire \count_reg[12]_i_1_n_6 ;
  wire \count_reg[12]_i_1_n_7 ;
  wire \count_reg[16]_i_1_n_0 ;
  wire \count_reg[16]_i_1_n_4 ;
  wire \count_reg[16]_i_1_n_5 ;
  wire \count_reg[16]_i_1_n_6 ;
  wire \count_reg[16]_i_1_n_7 ;
  wire \count_reg[20]_i_1_n_0 ;
  wire \count_reg[20]_i_1_n_4 ;
  wire \count_reg[20]_i_1_n_5 ;
  wire \count_reg[20]_i_1_n_6 ;
  wire \count_reg[20]_i_1_n_7 ;
  wire \count_reg[24]_i_1_n_0 ;
  wire \count_reg[24]_i_1_n_4 ;
  wire \count_reg[24]_i_1_n_5 ;
  wire \count_reg[24]_i_1_n_6 ;
  wire \count_reg[24]_i_1_n_7 ;
  wire \count_reg[28]_i_1_n_0 ;
  wire \count_reg[28]_i_1_n_4 ;
  wire \count_reg[28]_i_1_n_5 ;
  wire \count_reg[28]_i_1_n_6 ;
  wire \count_reg[28]_i_1_n_7 ;
  wire \count_reg[32]_i_1_n_7 ;
  wire \count_reg[4]_i_1_n_0 ;
  wire \count_reg[4]_i_1_n_4 ;
  wire \count_reg[4]_i_1_n_5 ;
  wire \count_reg[4]_i_1_n_6 ;
  wire \count_reg[4]_i_1_n_7 ;
  wire \count_reg[8]_i_1_n_0 ;
  wire \count_reg[8]_i_1_n_4 ;
  wire \count_reg[8]_i_1_n_5 ;
  wire \count_reg[8]_i_1_n_6 ;
  wire \count_reg[8]_i_1_n_7 ;
  wire [10:0]d_data;
  wire [15:0]data;
  wire dig0;
  wire dig02_n_73;
  wire dig02_n_74;
  wire dig02_n_75;
  wire dig02_n_76;
  wire dig02_n_77;
  wire dig02_n_78;
  wire dig02_n_79;
  wire dig02_n_80;
  wire dig02_n_81;
  wire dig02_n_82;
  wire dig02_n_83;
  wire dig02_n_84;
  wire dig02_n_85;
  wire dig02_n_86;
  wire dig02_n_87;
  wire dig02_n_88;
  wire dig02_n_89;
  wire dig02_n_90;
  wire dig02_n_91;
  wire dig02_n_92;
  wire dig02_n_93;
  wire dig02_n_94;
  wire dig02_n_95;
  wire \dig0[1]_i_1_n_0 ;
  wire \dig0[2]_i_1_n_0 ;
  wire \dig0[3]_i_10_n_0 ;
  wire \dig0[3]_i_11_n_0 ;
  wire \dig0[3]_i_12_n_0 ;
  wire \dig0[3]_i_13_n_0 ;
  wire \dig0[3]_i_14_n_0 ;
  wire \dig0[3]_i_15_n_0 ;
  wire \dig0[3]_i_16_n_0 ;
  wire \dig0[3]_i_17_n_0 ;
  wire \dig0[3]_i_18_n_0 ;
  wire \dig0[3]_i_19_n_0 ;
  wire \dig0[3]_i_2_n_0 ;
  wire \dig0[3]_i_3_n_0 ;
  wire \dig0[3]_i_4_n_0 ;
  wire \dig0[3]_i_5_n_0 ;
  wire \dig0[3]_i_6_n_0 ;
  wire \dig0[3]_i_7_n_0 ;
  wire \dig0[3]_i_8_n_0 ;
  wire \dig0[3]_i_9_n_0 ;
  wire \dig0_reg_n_0_[0] ;
  wire \dig0_reg_n_0_[1] ;
  wire \dig0_reg_n_0_[2] ;
  wire \dig0_reg_n_0_[3] ;
  wire [3:0]dig1;
  wire \dig1[0]_i_1_n_0 ;
  wire \dig1[1]_i_1_n_0 ;
  wire \dig1[2]_i_1_n_0 ;
  wire \dig1[3]_i_10_n_0 ;
  wire \dig1[3]_i_11_n_0 ;
  wire \dig1[3]_i_12_n_0 ;
  wire \dig1[3]_i_13_n_0 ;
  wire \dig1[3]_i_14_n_0 ;
  wire \dig1[3]_i_1_n_0 ;
  wire \dig1[3]_i_2_n_0 ;
  wire \dig1[3]_i_3_n_0 ;
  wire \dig1[3]_i_4_n_0 ;
  wire \dig1[3]_i_5_n_0 ;
  wire \dig1[3]_i_6_n_0 ;
  wire \dig1[3]_i_7_n_0 ;
  wire \dig1[3]_i_8_n_0 ;
  wire \dig1[3]_i_9_n_0 ;
  wire [3:0]dig2;
  wire \dig2[0]_i_1_n_0 ;
  wire \dig2[1]_i_1_n_0 ;
  wire \dig2[2]_i_1_n_0 ;
  wire \dig2[3]_i_10_n_0 ;
  wire \dig2[3]_i_11_n_0 ;
  wire \dig2[3]_i_12_n_0 ;
  wire \dig2[3]_i_13_n_0 ;
  wire \dig2[3]_i_14_n_0 ;
  wire \dig2[3]_i_15_n_0 ;
  wire \dig2[3]_i_16_n_0 ;
  wire \dig2[3]_i_17_n_0 ;
  wire \dig2[3]_i_18_n_0 ;
  wire \dig2[3]_i_19_n_0 ;
  wire \dig2[3]_i_1_n_0 ;
  wire \dig2[3]_i_20_n_0 ;
  wire \dig2[3]_i_21_n_0 ;
  wire \dig2[3]_i_22_n_0 ;
  wire \dig2[3]_i_23_n_0 ;
  wire \dig2[3]_i_24_n_0 ;
  wire \dig2[3]_i_25_n_0 ;
  wire \dig2[3]_i_26_n_0 ;
  wire \dig2[3]_i_27_n_0 ;
  wire \dig2[3]_i_28_n_0 ;
  wire \dig2[3]_i_29_n_0 ;
  wire \dig2[3]_i_2_n_0 ;
  wire \dig2[3]_i_3_n_0 ;
  wire \dig2[3]_i_4_n_0 ;
  wire \dig2[3]_i_5_n_0 ;
  wire \dig2[3]_i_6_n_0 ;
  wire \dig2[3]_i_7_n_0 ;
  wire \dig2[3]_i_8_n_0 ;
  wire \dig2[3]_i_9_n_0 ;
  wire [3:0]dig3;
  wire \dig3[0]_i_1_n_0 ;
  wire \dig3[1]_i_1_n_0 ;
  wire \dig3[2]_i_1_n_0 ;
  wire \dig3[3]_i_10_n_0 ;
  wire \dig3[3]_i_11_n_0 ;
  wire \dig3[3]_i_12_n_0 ;
  wire \dig3[3]_i_13_n_0 ;
  wire \dig3[3]_i_14_n_0 ;
  wire \dig3[3]_i_15_n_0 ;
  wire \dig3[3]_i_16_n_0 ;
  wire \dig3[3]_i_17_n_0 ;
  wire \dig3[3]_i_18_n_0 ;
  wire \dig3[3]_i_19_n_0 ;
  wire \dig3[3]_i_1_n_0 ;
  wire \dig3[3]_i_20_n_0 ;
  wire \dig3[3]_i_21_n_0 ;
  wire \dig3[3]_i_22_n_0 ;
  wire \dig3[3]_i_23_n_0 ;
  wire \dig3[3]_i_24_n_0 ;
  wire \dig3[3]_i_25_n_0 ;
  wire \dig3[3]_i_26_n_0 ;
  wire \dig3[3]_i_27_n_0 ;
  wire \dig3[3]_i_2_n_0 ;
  wire \dig3[3]_i_3_n_0 ;
  wire \dig3[3]_i_4_n_0 ;
  wire \dig3[3]_i_5_n_0 ;
  wire \dig3[3]_i_6_n_0 ;
  wire \dig3[3]_i_7_n_0 ;
  wire \dig3[3]_i_8_n_0 ;
  wire \dig3[3]_i_9_n_0 ;
  wire [3:0]dig4;
  wire \dig4[0]_i_1_n_0 ;
  wire \dig4[1]_i_1_n_0 ;
  wire \dig4[2]_i_1_n_0 ;
  wire \dig4[3]_i_10_n_0 ;
  wire \dig4[3]_i_1_n_0 ;
  wire \dig4[3]_i_2_n_0 ;
  wire \dig4[3]_i_3_n_0 ;
  wire \dig4[3]_i_4_n_0 ;
  wire \dig4[3]_i_5_n_0 ;
  wire \dig4[3]_i_6_n_0 ;
  wire \dig4[3]_i_7_n_0 ;
  wire \dig4[3]_i_8_n_0 ;
  wire \dig4[3]_i_9_n_0 ;
  wire [3:0]dig5;
  wire \dig5[0]_i_1_n_0 ;
  wire \dig5[1]_i_1_n_0 ;
  wire \dig5[2]_i_1_n_0 ;
  wire \dig5[3]_i_1_n_0 ;
  wire \dig5[3]_i_2_n_0 ;
  wire \dig5[3]_i_3_n_0 ;
  wire \dig5[3]_i_4_n_0 ;
  wire \dig5[3]_i_5_n_0 ;
  wire \dig5[3]_i_6_n_0 ;
  wire [3:0]dig6;
  wire \dig6[0]_i_1_n_0 ;
  wire \dig6[1]_i_1_n_0 ;
  wire \dig6[2]_i_1_n_0 ;
  wire \dig6[2]_i_2_n_0 ;
  wire \dig6[2]_i_3_n_0 ;
  wire \dig6[2]_i_4_n_0 ;
  wire \dig6[2]_i_5_n_0 ;
  wire \dig6[3]_i_10_n_0 ;
  wire \dig6[3]_i_11_n_0 ;
  wire \dig6[3]_i_12_n_0 ;
  wire \dig6[3]_i_13_n_0 ;
  wire \dig6[3]_i_14_n_0 ;
  wire \dig6[3]_i_15_n_0 ;
  wire \dig6[3]_i_16_n_0 ;
  wire \dig6[3]_i_17_n_0 ;
  wire \dig6[3]_i_18_n_0 ;
  wire \dig6[3]_i_19_n_0 ;
  wire \dig6[3]_i_1_n_0 ;
  wire \dig6[3]_i_20_n_0 ;
  wire \dig6[3]_i_21_n_0 ;
  wire \dig6[3]_i_22_n_0 ;
  wire \dig6[3]_i_23_n_0 ;
  wire \dig6[3]_i_24_n_0 ;
  wire \dig6[3]_i_25_n_0 ;
  wire \dig6[3]_i_26_n_0 ;
  wire \dig6[3]_i_27_n_0 ;
  wire \dig6[3]_i_28_n_0 ;
  wire \dig6[3]_i_29_n_0 ;
  wire \dig6[3]_i_2_n_0 ;
  wire \dig6[3]_i_30_n_0 ;
  wire \dig6[3]_i_31_n_0 ;
  wire \dig6[3]_i_32_n_0 ;
  wire \dig6[3]_i_33_n_0 ;
  wire \dig6[3]_i_34_n_0 ;
  wire \dig6[3]_i_35_n_0 ;
  wire \dig6[3]_i_36_n_0 ;
  wire \dig6[3]_i_37_n_0 ;
  wire \dig6[3]_i_38_n_0 ;
  wire \dig6[3]_i_39_n_0 ;
  wire \dig6[3]_i_3_n_0 ;
  wire \dig6[3]_i_40_n_0 ;
  wire \dig6[3]_i_41_n_0 ;
  wire \dig6[3]_i_42_n_0 ;
  wire \dig6[3]_i_43_n_0 ;
  wire \dig6[3]_i_44_n_0 ;
  wire \dig6[3]_i_45_n_0 ;
  wire \dig6[3]_i_46_n_0 ;
  wire \dig6[3]_i_47_n_0 ;
  wire \dig6[3]_i_48_n_0 ;
  wire \dig6[3]_i_49_n_0 ;
  wire \dig6[3]_i_4_n_0 ;
  wire \dig6[3]_i_5_n_0 ;
  wire \dig6[3]_i_6_n_0 ;
  wire \dig6[3]_i_7_n_0 ;
  wire \dig6[3]_i_8_n_0 ;
  wire \dig6[3]_i_9_n_0 ;
  wire dp;
  wire dp_OBUF;
  wire enable;
  wire [3:0]next_state;
  wire \next_state[0]_i_1_n_0 ;
  wire \next_state[1]_i_1_n_0 ;
  wire \next_state[2]_i_1_n_0 ;
  wire \next_state[3]_i_1_n_0 ;
  wire [10:0]p10;
  wire \p9_reg[0]_srl9_n_0 ;
  wire \p9_reg[10]_srl9_i_1_n_0 ;
  wire \p9_reg[10]_srl9_n_0 ;
  wire \p9_reg[1]_srl9_n_0 ;
  wire \p9_reg[2]_srl9_n_0 ;
  wire \p9_reg[3]_srl9_n_0 ;
  wire \p9_reg[4]_srl9_n_0 ;
  wire \p9_reg[5]_srl9_n_0 ;
  wire \p9_reg[6]_srl9_n_0 ;
  wire \p9_reg[7]_srl9_n_0 ;
  wire \p9_reg[8]_srl9_n_0 ;
  wire \p9_reg[9]_srl9_n_0 ;
  wire ready;
  wire [6:0]seg;
  wire [6:0]seg_OBUF;
  wire [5:0]sw;
  wire [5:0]sw_IBUF;
  wire vauxn10;
  wire vauxn10_IBUF;
  wire vauxn11;
  wire vauxn11_IBUF;
  wire vauxn2;
  wire vauxn2_IBUF;
  wire vauxn3;
  wire vauxn3_IBUF;
  wire vauxp10;
  wire vauxp10_IBUF;
  wire vauxp11;
  wire vauxp11_IBUF;
  wire vauxp2;
  wire vauxp2_IBUF;
  wire vauxp3;
  wire vauxp3_IBUF;
  wire vn_in;
  wire vn_in_IBUF;
  wire vp_in;
  wire vp_in_IBUF;
  wire NLW_XLXI_7_alarm_out_UNCONNECTED;
  wire NLW_XLXI_7_busy_out_UNCONNECTED;
  wire NLW_XLXI_7_eos_out_UNCONNECTED;
  wire [4:0]NLW_XLXI_7_channel_out_UNCONNECTED;
  wire [3:0]NLW_XLXI_7_do_out_UNCONNECTED;
  wire [10:10]NLW_chorus_chorus_out_UNCONNECTED;
  wire [2:0]\NLW_count_reg[0]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_count_reg[12]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_count_reg[16]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_count_reg[20]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_count_reg[24]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_count_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_count_reg[32]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_count_reg[32]_i_1_O_UNCONNECTED ;
  wire [2:0]\NLW_count_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_count_reg[8]_i_1_CO_UNCONNECTED ;
  wire NLW_dig02_CARRYCASCOUT_UNCONNECTED;
  wire NLW_dig02_MULTSIGNOUT_UNCONNECTED;
  wire NLW_dig02_OVERFLOW_UNCONNECTED;
  wire NLW_dig02_PATTERNBDETECT_UNCONNECTED;
  wire NLW_dig02_PATTERNDETECT_UNCONNECTED;
  wire NLW_dig02_UNDERFLOW_UNCONNECTED;
  wire [29:0]NLW_dig02_ACOUT_UNCONNECTED;
  wire [17:0]NLW_dig02_BCOUT_UNCONNECTED;
  wire [3:0]NLW_dig02_CARRYOUT_UNCONNECTED;
  wire [47:0]NLW_dig02_P_UNCONNECTED;
  wire [47:0]NLW_dig02_PCOUT_UNCONNECTED;
  wire NLW_segment1_dp_UNCONNECTED;
  wire [3:0]NLW_segment1_in8_UNCONNECTED;

initial begin
 $sdf_annotate("XADCdemo_time_impl.sdf",,,,"tool_control");
end
  OBUF AUD_PWM_OBUF_inst
       (.I(AUD_PWM_OBUF),
        .O(AUD_PWM));
  OBUF AUD_SD_OBUF_inst
       (.I(1'b1),
        .O(AUD_SD));
  LUT4 #(
    .INIT(16'h0001)) 
    \Address_in[3]_i_1 
       (.I0(sw_IBUF[5]),
        .I1(sw_IBUF[2]),
        .I2(sw_IBUF[4]),
        .I3(sw_IBUF[3]),
        .O(\Address_in[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Address_in_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\Address_in[3]_i_1_n_0 ),
        .D(sw_IBUF[0]),
        .Q(Address_in[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Address_in_reg[3] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\Address_in[3]_i_1_n_0 ),
        .D(sw_IBUF[1]),
        .Q(Address_in[3]),
        .R(1'b0));
  BUFG CLK100MHZ_IBUF_BUFG_inst
       (.I(CLK100MHZ_IBUF),
        .O(CLK100MHZ_IBUF_BUFG));
  IBUF CLK100MHZ_IBUF_inst
       (.I(CLK100MHZ),
        .O(CLK100MHZ_IBUF));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \LED[10]_i_1 
       (.I0(data[13]),
        .I1(data[14]),
        .O(\LED[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \LED[11]_i_1 
       (.I0(data[14]),
        .I1(data[13]),
        .I2(data[12]),
        .O(\LED[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \LED[12]_i_1 
       (.I0(data[14]),
        .I1(data[15]),
        .O(\LED[12]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \LED[13]_i_1 
       (.I0(ready),
        .I1(data[15]),
        .O(\LED[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \LED[13]_i_2 
       (.I0(data[13]),
        .I1(data[12]),
        .I2(data[14]),
        .O(\LED[13]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \LED[14]_i_1 
       (.I0(data[15]),
        .I1(data[14]),
        .I2(data[13]),
        .O(\LED[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \LED[15]_i_1 
       (.I0(data[15]),
        .I1(data[14]),
        .I2(data[12]),
        .I3(data[13]),
        .O(\LED[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \LED[1]_i_1 
       (.I0(data[15]),
        .I1(data[12]),
        .I2(data[13]),
        .I3(data[14]),
        .O(\LED[1]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \LED[2]_i_1 
       (.I0(data[15]),
        .I1(data[14]),
        .I2(data[13]),
        .O(\LED[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'hFFEA)) 
    \LED[3]_i_1 
       (.I0(data[15]),
        .I1(data[12]),
        .I2(data[13]),
        .I3(data[14]),
        .O(\LED[3]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \LED[4]_i_1 
       (.I0(data[14]),
        .I1(data[15]),
        .O(\LED[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'hEEEA)) 
    \LED[5]_i_1 
       (.I0(data[15]),
        .I1(data[14]),
        .I2(data[12]),
        .I3(data[13]),
        .O(\LED[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hEC)) 
    \LED[6]_i_1 
       (.I0(data[14]),
        .I1(data[15]),
        .I2(data[13]),
        .O(\LED[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hEAAA)) 
    \LED[7]_i_1 
       (.I0(data[15]),
        .I1(data[14]),
        .I2(data[12]),
        .I3(data[13]),
        .O(\LED[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \LED[9]_i_1 
       (.I0(data[14]),
        .I1(data[13]),
        .I2(data[12]),
        .O(\LED[9]_i_1_n_0 ));
  OBUF \LED_OBUF[0]_inst 
       (.I(1'b1),
        .O(LED[0]));
  OBUF \LED_OBUF[10]_inst 
       (.I(LED_OBUF[10]),
        .O(LED[10]));
  OBUF \LED_OBUF[11]_inst 
       (.I(LED_OBUF[11]),
        .O(LED[11]));
  OBUF \LED_OBUF[12]_inst 
       (.I(LED_OBUF[12]),
        .O(LED[12]));
  OBUF \LED_OBUF[13]_inst 
       (.I(LED_OBUF[13]),
        .O(LED[13]));
  OBUF \LED_OBUF[14]_inst 
       (.I(LED_OBUF[14]),
        .O(LED[14]));
  OBUF \LED_OBUF[15]_inst 
       (.I(LED_OBUF[15]),
        .O(LED[15]));
  OBUF \LED_OBUF[1]_inst 
       (.I(LED_OBUF[1]),
        .O(LED[1]));
  OBUF \LED_OBUF[2]_inst 
       (.I(LED_OBUF[2]),
        .O(LED[2]));
  OBUF \LED_OBUF[3]_inst 
       (.I(LED_OBUF[3]),
        .O(LED[3]));
  OBUF \LED_OBUF[4]_inst 
       (.I(LED_OBUF[4]),
        .O(LED[4]));
  OBUF \LED_OBUF[5]_inst 
       (.I(LED_OBUF[5]),
        .O(LED[5]));
  OBUF \LED_OBUF[6]_inst 
       (.I(LED_OBUF[6]),
        .O(LED[6]));
  OBUF \LED_OBUF[7]_inst 
       (.I(LED_OBUF[7]),
        .O(LED[7]));
  OBUF \LED_OBUF[8]_inst 
       (.I(LED_OBUF[8]),
        .O(LED[8]));
  OBUF \LED_OBUF[9]_inst 
       (.I(LED_OBUF[9]),
        .O(LED[9]));
  FDRE #(
    .INIT(1'b0)) 
    \LED_reg[10] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(ready),
        .D(\LED[10]_i_1_n_0 ),
        .Q(LED_OBUF[10]),
        .R(\LED[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \LED_reg[11] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(ready),
        .D(\LED[11]_i_1_n_0 ),
        .Q(LED_OBUF[11]),
        .R(\LED[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \LED_reg[12] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(ready),
        .D(\LED[12]_i_1_n_0 ),
        .Q(LED_OBUF[12]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \LED_reg[13] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(ready),
        .D(\LED[13]_i_2_n_0 ),
        .Q(LED_OBUF[13]),
        .R(\LED[13]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \LED_reg[14] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(ready),
        .D(\LED[14]_i_1_n_0 ),
        .Q(LED_OBUF[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \LED_reg[15] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(ready),
        .D(\LED[15]_i_1_n_0 ),
        .Q(LED_OBUF[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \LED_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(ready),
        .D(\LED[1]_i_1_n_0 ),
        .Q(LED_OBUF[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \LED_reg[2] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(ready),
        .D(\LED[2]_i_1_n_0 ),
        .Q(LED_OBUF[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \LED_reg[3] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(ready),
        .D(\LED[3]_i_1_n_0 ),
        .Q(LED_OBUF[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \LED_reg[4] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(ready),
        .D(\LED[4]_i_1_n_0 ),
        .Q(LED_OBUF[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \LED_reg[5] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(ready),
        .D(\LED[5]_i_1_n_0 ),
        .Q(LED_OBUF[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \LED_reg[6] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(ready),
        .D(\LED[6]_i_1_n_0 ),
        .Q(LED_OBUF[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \LED_reg[7] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(ready),
        .D(\LED[7]_i_1_n_0 ),
        .Q(LED_OBUF[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \LED_reg[8] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(ready),
        .D(data[15]),
        .Q(LED_OBUF[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \LED_reg[9] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(ready),
        .D(\LED[9]_i_1_n_0 ),
        .Q(LED_OBUF[9]),
        .R(\LED[13]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0010)) 
    \PWM[10]_i_1 
       (.I0(next_state[0]),
        .I1(next_state[1]),
        .I2(next_state[3]),
        .I3(next_state[2]),
        .O(\PWM[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \PWM_reg[0] 
       (.C(ready),
        .CE(\PWM[10]_i_1_n_0 ),
        .D(\audio_reg_reg_n_0_[0] ),
        .Q(PWM[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \PWM_reg[10] 
       (.C(ready),
        .CE(\PWM[10]_i_1_n_0 ),
        .D(\audio_reg_reg_n_0_[10] ),
        .Q(PWM[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \PWM_reg[1] 
       (.C(ready),
        .CE(\PWM[10]_i_1_n_0 ),
        .D(\audio_reg_reg_n_0_[1] ),
        .Q(PWM[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \PWM_reg[2] 
       (.C(ready),
        .CE(\PWM[10]_i_1_n_0 ),
        .D(\audio_reg_reg_n_0_[2] ),
        .Q(PWM[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \PWM_reg[3] 
       (.C(ready),
        .CE(\PWM[10]_i_1_n_0 ),
        .D(\audio_reg_reg_n_0_[3] ),
        .Q(PWM[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \PWM_reg[4] 
       (.C(ready),
        .CE(\PWM[10]_i_1_n_0 ),
        .D(\audio_reg_reg_n_0_[4] ),
        .Q(PWM[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \PWM_reg[5] 
       (.C(ready),
        .CE(\PWM[10]_i_1_n_0 ),
        .D(\audio_reg_reg_n_0_[5] ),
        .Q(PWM[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \PWM_reg[6] 
       (.C(ready),
        .CE(\PWM[10]_i_1_n_0 ),
        .D(\audio_reg_reg_n_0_[6] ),
        .Q(PWM[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \PWM_reg[7] 
       (.C(ready),
        .CE(\PWM[10]_i_1_n_0 ),
        .D(\audio_reg_reg_n_0_[7] ),
        .Q(PWM[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \PWM_reg[8] 
       (.C(ready),
        .CE(\PWM[10]_i_1_n_0 ),
        .D(\audio_reg_reg_n_0_[8] ),
        .Q(PWM[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \PWM_reg[9] 
       (.C(ready),
        .CE(\PWM[10]_i_1_n_0 ),
        .D(\audio_reg_reg_n_0_[9] ),
        .Q(PWM[9]),
        .R(1'b0));
  (* IMPORTED_FROM = "/home/ngonidzashe/Documents/XADC/Nexys-A7-100T-XADC-2018.2-1/vivado_proj/Nexys-A7-100T-XADC.srcs/xadc_wiz_0/ip/xadc_wiz_0/xadc_wiz_0.dcp" *) 
  (* IMPORTED_TYPE = "CHECKPOINT" *) 
  (* IS_IMPORTED *) 
  xadc_wiz_0 XLXI_7
       (.alarm_out(NLW_XLXI_7_alarm_out_UNCONNECTED),
        .busy_out(NLW_XLXI_7_busy_out_UNCONNECTED),
        .channel_out(NLW_XLXI_7_channel_out_UNCONNECTED[4:0]),
        .daddr_in({1'b0,1'b0,1'b1,Address_in[3],1'b0,1'b1,Address_in[0]}),
        .dclk_in(CLK100MHZ_IBUF_BUFG),
        .den_in(enable),
        .di_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .do_out({data[15:4],NLW_XLXI_7_do_out_UNCONNECTED[3:0]}),
        .drdy_out(ready),
        .dwe_in(1'b0),
        .eoc_out(enable),
        .eos_out(NLW_XLXI_7_eos_out_UNCONNECTED),
        .reset_in(1'b0),
        .vauxn10(vauxn10_IBUF),
        .vauxn11(vauxn11_IBUF),
        .vauxn2(vauxn2_IBUF),
        .vauxn3(vauxn3_IBUF),
        .vauxp10(vauxp10_IBUF),
        .vauxp11(vauxp11_IBUF),
        .vauxp2(vauxp2_IBUF),
        .vauxp3(vauxp3_IBUF),
        .vn_in(vn_in_IBUF),
        .vp_in(vp_in_IBUF));
  OBUF \an_OBUF[0]_inst 
       (.I(an_OBUF[0]),
        .O(an[0]));
  OBUF \an_OBUF[1]_inst 
       (.I(an_OBUF[1]),
        .O(an[1]));
  OBUF \an_OBUF[2]_inst 
       (.I(an_OBUF[2]),
        .O(an[2]));
  OBUF \an_OBUF[3]_inst 
       (.I(an_OBUF[3]),
        .O(an[3]));
  OBUF \an_OBUF[4]_inst 
       (.I(an_OBUF[4]),
        .O(an[4]));
  OBUF \an_OBUF[5]_inst 
       (.I(an_OBUF[5]),
        .O(an[5]));
  OBUF \an_OBUF[6]_inst 
       (.I(dp_OBUF),
        .O(an[6]));
  OBUF \an_OBUF[7]_inst 
       (.I(an_OBUF[7]),
        .O(an[7]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \audio_reg[0]_i_1 
       (.I0(d_data[0]),
        .I1(next_state[0]),
        .I2(c_data[0]),
        .I3(next_state[2]),
        .I4(data[5]),
        .O(audio_reg[0]));
  LUT6 #(
    .INIT(64'h0000000000CCE200)) 
    \audio_reg[10]_i_1 
       (.I0(sw_IBUF[3]),
        .I1(next_state[0]),
        .I2(sw_IBUF[2]),
        .I3(next_state[2]),
        .I4(next_state[1]),
        .I5(next_state[3]),
        .O(\audio_reg[10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8F80)) 
    \audio_reg[10]_i_2 
       (.I0(next_state[0]),
        .I1(d_data[10]),
        .I2(next_state[2]),
        .I3(data[15]),
        .O(audio_reg[10]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \audio_reg[1]_i_1 
       (.I0(d_data[1]),
        .I1(next_state[0]),
        .I2(c_data[1]),
        .I3(next_state[2]),
        .I4(data[6]),
        .O(audio_reg[1]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \audio_reg[2]_i_1 
       (.I0(d_data[2]),
        .I1(next_state[0]),
        .I2(c_data[2]),
        .I3(next_state[2]),
        .I4(data[7]),
        .O(audio_reg[2]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \audio_reg[3]_i_1 
       (.I0(d_data[3]),
        .I1(next_state[0]),
        .I2(c_data[3]),
        .I3(next_state[2]),
        .I4(data[8]),
        .O(audio_reg[3]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \audio_reg[4]_i_1 
       (.I0(d_data[4]),
        .I1(next_state[0]),
        .I2(c_data[4]),
        .I3(next_state[2]),
        .I4(data[9]),
        .O(audio_reg[4]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \audio_reg[5]_i_1 
       (.I0(d_data[5]),
        .I1(next_state[0]),
        .I2(c_data[5]),
        .I3(next_state[2]),
        .I4(data[10]),
        .O(audio_reg[5]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \audio_reg[6]_i_1 
       (.I0(d_data[6]),
        .I1(next_state[0]),
        .I2(c_data[6]),
        .I3(next_state[2]),
        .I4(data[11]),
        .O(audio_reg[6]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \audio_reg[7]_i_1 
       (.I0(d_data[7]),
        .I1(next_state[0]),
        .I2(c_data[7]),
        .I3(next_state[2]),
        .I4(data[12]),
        .O(audio_reg[7]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \audio_reg[8]_i_1 
       (.I0(d_data[8]),
        .I1(next_state[0]),
        .I2(c_data[8]),
        .I3(next_state[2]),
        .I4(data[13]),
        .O(audio_reg[8]));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \audio_reg[9]_i_1 
       (.I0(d_data[9]),
        .I1(next_state[0]),
        .I2(c_data[9]),
        .I3(next_state[2]),
        .I4(data[14]),
        .O(audio_reg[9]));
  FDRE #(
    .INIT(1'b0)) 
    \audio_reg_reg[0] 
       (.C(ready),
        .CE(\audio_reg[10]_i_1_n_0 ),
        .D(audio_reg[0]),
        .Q(\audio_reg_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \audio_reg_reg[10] 
       (.C(ready),
        .CE(\audio_reg[10]_i_1_n_0 ),
        .D(audio_reg[10]),
        .Q(\audio_reg_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \audio_reg_reg[1] 
       (.C(ready),
        .CE(\audio_reg[10]_i_1_n_0 ),
        .D(audio_reg[1]),
        .Q(\audio_reg_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \audio_reg_reg[2] 
       (.C(ready),
        .CE(\audio_reg[10]_i_1_n_0 ),
        .D(audio_reg[2]),
        .Q(\audio_reg_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \audio_reg_reg[3] 
       (.C(ready),
        .CE(\audio_reg[10]_i_1_n_0 ),
        .D(audio_reg[3]),
        .Q(\audio_reg_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \audio_reg_reg[4] 
       (.C(ready),
        .CE(\audio_reg[10]_i_1_n_0 ),
        .D(audio_reg[4]),
        .Q(\audio_reg_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \audio_reg_reg[5] 
       (.C(ready),
        .CE(\audio_reg[10]_i_1_n_0 ),
        .D(audio_reg[5]),
        .Q(\audio_reg_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \audio_reg_reg[6] 
       (.C(ready),
        .CE(\audio_reg[10]_i_1_n_0 ),
        .D(audio_reg[6]),
        .Q(\audio_reg_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \audio_reg_reg[7] 
       (.C(ready),
        .CE(\audio_reg[10]_i_1_n_0 ),
        .D(audio_reg[7]),
        .Q(\audio_reg_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \audio_reg_reg[8] 
       (.C(ready),
        .CE(\audio_reg[10]_i_1_n_0 ),
        .D(audio_reg[8]),
        .Q(\audio_reg_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \audio_reg_reg[9] 
       (.C(ready),
        .CE(\audio_reg[10]_i_1_n_0 ),
        .D(audio_reg[9]),
        .Q(\audio_reg_reg_n_0_[9] ),
        .R(1'b0));
  chorus chorus
       (.chorus_out({NLW_chorus_chorus_out_UNCONNECTED[10],c_data}),
        .clk(CLK100MHZ_IBUF_BUFG),
        .current_sample({\audio_reg_reg_n_0_[10] ,\audio_reg_reg_n_0_[9] ,\audio_reg_reg_n_0_[8] ,\audio_reg_reg_n_0_[7] ,\audio_reg_reg_n_0_[6] ,\audio_reg_reg_n_0_[5] ,\audio_reg_reg_n_0_[4] ,\audio_reg_reg_n_0_[3] ,\audio_reg_reg_n_0_[2] ,\audio_reg_reg_n_0_[1] ,\audio_reg_reg_n_0_[0] }),
        .previous_sample(p10));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_2 
       (.I0(count_reg[0]),
        .O(\count[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \count[12]_i_2 
       (.I0(count_reg[15]),
        .I1(\dig0[3]_i_2_n_0 ),
        .O(\count[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \count[12]_i_3 
       (.I0(count_reg[12]),
        .I1(\dig0[3]_i_2_n_0 ),
        .O(\count[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \count[16]_i_2 
       (.I0(count_reg[19]),
        .I1(\dig0[3]_i_2_n_0 ),
        .O(\count[16]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \count[20]_i_2 
       (.I0(count_reg[23]),
        .I1(\dig0[3]_i_2_n_0 ),
        .O(\count[20]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \count[20]_i_3 
       (.I0(count_reg[20]),
        .I1(\dig0[3]_i_2_n_0 ),
        .O(\count[20]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \count[4]_i_2 
       (.I0(count_reg[7]),
        .I1(\dig0[3]_i_2_n_0 ),
        .O(\count[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \count[8]_i_2 
       (.I0(count_reg[10]),
        .I1(\dig0[3]_i_2_n_0 ),
        .O(\count[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \count[8]_i_3 
       (.I0(count_reg[9]),
        .I1(\dig0[3]_i_2_n_0 ),
        .O(\count[8]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[0]_i_1_n_7 ),
        .Q(count_reg[0]),
        .R(1'b0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \count_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\count_reg[0]_i_1_n_0 ,\NLW_count_reg[0]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\count_reg[0]_i_1_n_4 ,\count_reg[0]_i_1_n_5 ,\count_reg[0]_i_1_n_6 ,\count_reg[0]_i_1_n_7 }),
        .S({count_reg[3:1],\count[0]_i_2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[10] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[8]_i_1_n_5 ),
        .Q(count_reg[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[11] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[8]_i_1_n_4 ),
        .Q(count_reg[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[12] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[12]_i_1_n_7 ),
        .Q(count_reg[12]),
        .R(1'b0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \count_reg[12]_i_1 
       (.CI(\count_reg[8]_i_1_n_0 ),
        .CO({\count_reg[12]_i_1_n_0 ,\NLW_count_reg[12]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[12]_i_1_n_4 ,\count_reg[12]_i_1_n_5 ,\count_reg[12]_i_1_n_6 ,\count_reg[12]_i_1_n_7 }),
        .S({\count[12]_i_2_n_0 ,count_reg[14:13],\count[12]_i_3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[13] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[12]_i_1_n_6 ),
        .Q(count_reg[13]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[14] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[12]_i_1_n_5 ),
        .Q(count_reg[14]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[15] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[12]_i_1_n_4 ),
        .Q(count_reg[15]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[16] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[16]_i_1_n_7 ),
        .Q(count_reg[16]),
        .R(1'b0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \count_reg[16]_i_1 
       (.CI(\count_reg[12]_i_1_n_0 ),
        .CO({\count_reg[16]_i_1_n_0 ,\NLW_count_reg[16]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[16]_i_1_n_4 ,\count_reg[16]_i_1_n_5 ,\count_reg[16]_i_1_n_6 ,\count_reg[16]_i_1_n_7 }),
        .S({\count[16]_i_2_n_0 ,count_reg[18:16]}));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[17] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[16]_i_1_n_6 ),
        .Q(count_reg[17]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[18] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[16]_i_1_n_5 ),
        .Q(count_reg[18]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[19] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[16]_i_1_n_4 ),
        .Q(count_reg[19]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[0]_i_1_n_6 ),
        .Q(count_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[20] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[20]_i_1_n_7 ),
        .Q(count_reg[20]),
        .R(1'b0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \count_reg[20]_i_1 
       (.CI(\count_reg[16]_i_1_n_0 ),
        .CO({\count_reg[20]_i_1_n_0 ,\NLW_count_reg[20]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[20]_i_1_n_4 ,\count_reg[20]_i_1_n_5 ,\count_reg[20]_i_1_n_6 ,\count_reg[20]_i_1_n_7 }),
        .S({\count[20]_i_2_n_0 ,count_reg[22:21],\count[20]_i_3_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[21] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[20]_i_1_n_6 ),
        .Q(count_reg[21]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[22] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[20]_i_1_n_5 ),
        .Q(count_reg[22]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[23] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[20]_i_1_n_4 ),
        .Q(count_reg[23]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[24] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[24]_i_1_n_7 ),
        .Q(count_reg[24]),
        .R(1'b0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \count_reg[24]_i_1 
       (.CI(\count_reg[20]_i_1_n_0 ),
        .CO({\count_reg[24]_i_1_n_0 ,\NLW_count_reg[24]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[24]_i_1_n_4 ,\count_reg[24]_i_1_n_5 ,\count_reg[24]_i_1_n_6 ,\count_reg[24]_i_1_n_7 }),
        .S(count_reg[27:24]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[25] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[24]_i_1_n_6 ),
        .Q(count_reg[25]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[26] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[24]_i_1_n_5 ),
        .Q(count_reg[26]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[27] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[24]_i_1_n_4 ),
        .Q(count_reg[27]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[28] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[28]_i_1_n_7 ),
        .Q(count_reg[28]),
        .R(1'b0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \count_reg[28]_i_1 
       (.CI(\count_reg[24]_i_1_n_0 ),
        .CO({\count_reg[28]_i_1_n_0 ,\NLW_count_reg[28]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[28]_i_1_n_4 ,\count_reg[28]_i_1_n_5 ,\count_reg[28]_i_1_n_6 ,\count_reg[28]_i_1_n_7 }),
        .S(count_reg[31:28]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[29] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[28]_i_1_n_6 ),
        .Q(count_reg[29]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[0]_i_1_n_5 ),
        .Q(count_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[30] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[28]_i_1_n_5 ),
        .Q(count_reg[30]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[31] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[28]_i_1_n_4 ),
        .Q(count_reg[31]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[32] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[32]_i_1_n_7 ),
        .Q(count_reg[32]),
        .R(1'b0));
  CARRY4 \count_reg[32]_i_1 
       (.CI(\count_reg[28]_i_1_n_0 ),
        .CO(\NLW_count_reg[32]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_count_reg[32]_i_1_O_UNCONNECTED [3:1],\count_reg[32]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,count_reg[32]}));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[0]_i_1_n_4 ),
        .Q(count_reg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[4]_i_1_n_7 ),
        .Q(count_reg[4]),
        .R(1'b0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \count_reg[4]_i_1 
       (.CI(\count_reg[0]_i_1_n_0 ),
        .CO({\count_reg[4]_i_1_n_0 ,\NLW_count_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[4]_i_1_n_4 ,\count_reg[4]_i_1_n_5 ,\count_reg[4]_i_1_n_6 ,\count_reg[4]_i_1_n_7 }),
        .S({\count[4]_i_2_n_0 ,count_reg[6:4]}));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[4]_i_1_n_6 ),
        .Q(count_reg[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[4]_i_1_n_5 ),
        .Q(count_reg[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[4]_i_1_n_4 ),
        .Q(count_reg[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[8] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[8]_i_1_n_7 ),
        .Q(count_reg[8]),
        .R(1'b0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \count_reg[8]_i_1 
       (.CI(\count_reg[4]_i_1_n_0 ),
        .CO({\count_reg[8]_i_1_n_0 ,\NLW_count_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[8]_i_1_n_4 ,\count_reg[8]_i_1_n_5 ,\count_reg[8]_i_1_n_6 ,\count_reg[8]_i_1_n_7 }),
        .S({count_reg[11],\count[8]_i_2_n_0 ,\count[8]_i_3_n_0 ,count_reg[8]}));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[9] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(1'b1),
        .D(\count_reg[8]_i_1_n_6 ),
        .Q(count_reg[9]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-13 {cell *THIS*}}" *) 
  (* OPT_MODIFIED = "SWEEP" *) 
  DSP48E1 #(
    .ACASCREG(0),
    .ADREG(1),
    .ALUMODEREG(0),
    .AREG(0),
    .AUTORESET_PATDET("NO_RESET"),
    .A_INPUT("DIRECT"),
    .BCASCREG(0),
    .BREG(0),
    .B_INPUT("DIRECT"),
    .CARRYINREG(0),
    .CARRYINSELREG(0),
    .CREG(1),
    .DREG(1),
    .INMODEREG(0),
    .MASK(48'h3FFFFFFFFFFF),
    .MREG(0),
    .OPMODEREG(0),
    .PATTERN(48'h000000000000),
    .PREG(0),
    .SEL_MASK("MASK"),
    .SEL_PATTERN("PATTERN"),
    .USE_DPORT("FALSE"),
    .USE_MULT("MULTIPLY"),
    .USE_PATTERN_DETECT("NO_PATDET"),
    .USE_SIMD("ONE48")) 
    dig02
       (.A({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b0,1'b1,1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b0,1'b1,1'b0,1'b0,1'b0,1'b0}),
        .ACIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ACOUT(NLW_dig02_ACOUT_UNCONNECTED[29:0]),
        .ALUMODE({1'b0,1'b0,1'b0,1'b0}),
        .B({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,data[15:4]}),
        .BCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .BCOUT(NLW_dig02_BCOUT_UNCONNECTED[17:0]),
        .C({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CARRYCASCIN(1'b0),
        .CARRYCASCOUT(NLW_dig02_CARRYCASCOUT_UNCONNECTED),
        .CARRYIN(1'b0),
        .CARRYINSEL({1'b0,1'b0,1'b0}),
        .CARRYOUT(NLW_dig02_CARRYOUT_UNCONNECTED[3:0]),
        .CEA1(1'b0),
        .CEA2(1'b0),
        .CEAD(1'b0),
        .CEALUMODE(1'b0),
        .CEB1(1'b0),
        .CEB2(1'b0),
        .CEC(1'b0),
        .CECARRYIN(1'b0),
        .CECTRL(1'b0),
        .CED(1'b0),
        .CEINMODE(1'b0),
        .CEM(1'b0),
        .CEP(1'b0),
        .CLK(1'b0),
        .D({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .INMODE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .MULTSIGNIN(1'b0),
        .MULTSIGNOUT(NLW_dig02_MULTSIGNOUT_UNCONNECTED),
        .OPMODE({1'b0,1'b0,1'b0,1'b0,1'b1,1'b0,1'b1}),
        .OVERFLOW(NLW_dig02_OVERFLOW_UNCONNECTED),
        .P({NLW_dig02_P_UNCONNECTED[47:33],dig02_n_73,dig02_n_74,dig02_n_75,dig02_n_76,dig02_n_77,dig02_n_78,dig02_n_79,dig02_n_80,dig02_n_81,dig02_n_82,dig02_n_83,dig02_n_84,dig02_n_85,dig02_n_86,dig02_n_87,dig02_n_88,dig02_n_89,dig02_n_90,dig02_n_91,dig02_n_92,dig02_n_93,dig02_n_94,dig02_n_95,NLW_dig02_P_UNCONNECTED[9:0]}),
        .PATTERNBDETECT(NLW_dig02_PATTERNBDETECT_UNCONNECTED),
        .PATTERNDETECT(NLW_dig02_PATTERNDETECT_UNCONNECTED),
        .PCIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCOUT(NLW_dig02_PCOUT_UNCONNECTED[47:0]),
        .RSTA(1'b0),
        .RSTALLCARRYIN(1'b0),
        .RSTALUMODE(1'b0),
        .RSTB(1'b0),
        .RSTC(1'b0),
        .RSTCTRL(1'b0),
        .RSTD(1'b0),
        .RSTINMODE(1'b0),
        .RSTM(1'b0),
        .RSTP(1'b0),
        .UNDERFLOW(NLW_dig02_UNDERFLOW_UNCONNECTED));
  LUT6 #(
    .INIT(64'h565596818169AA6A)) 
    \dig0[1]_i_1 
       (.I0(dig02_n_94),
        .I1(dig02_n_92),
        .I2(\dig0[3]_i_11_n_0 ),
        .I3(dig02_n_93),
        .I4(\dig0[3]_i_10_n_0 ),
        .I5(\dig0[3]_i_9_n_0 ),
        .O(\dig0[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3C3C3C3CB1949472)) 
    \dig0[2]_i_1 
       (.I0(\dig0[3]_i_9_n_0 ),
        .I1(\dig0[3]_i_10_n_0 ),
        .I2(dig02_n_93),
        .I3(\dig0[3]_i_11_n_0 ),
        .I4(dig02_n_92),
        .I5(dig02_n_94),
        .O(\dig0[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000020000000)) 
    \dig0[3]_i_1 
       (.I0(\dig0[3]_i_2_n_0 ),
        .I1(\dig0[3]_i_4_n_0 ),
        .I2(data[12]),
        .I3(data[10]),
        .I4(data[8]),
        .I5(\dig0[3]_i_5_n_0 ),
        .O(dig0));
  LUT6 #(
    .INIT(64'h8EE4DAAE8AA4D88E)) 
    \dig0[3]_i_10 
       (.I0(\dig0[3]_i_15_n_0 ),
        .I1(\dig0[3]_i_11_n_0 ),
        .I2(dig02_n_91),
        .I3(\dig1[3]_i_5_n_0 ),
        .I4(dig02_n_92),
        .I5(dig02_n_93),
        .O(\dig0[3]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h8EE4DAAE8AA4D88E)) 
    \dig0[3]_i_11 
       (.I0(\dig0[3]_i_16_n_0 ),
        .I1(\dig1[3]_i_5_n_0 ),
        .I2(dig02_n_90),
        .I3(\dig0[3]_i_17_n_0 ),
        .I4(dig02_n_91),
        .I5(dig02_n_92),
        .O(\dig0[3]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \dig0[3]_i_12 
       (.I0(count_reg[21]),
        .I1(count_reg[30]),
        .I2(count_reg[2]),
        .I3(count_reg[11]),
        .O(\dig0[3]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \dig0[3]_i_13 
       (.I0(count_reg[8]),
        .I1(count_reg[18]),
        .I2(count_reg[0]),
        .I3(count_reg[1]),
        .O(\dig0[3]_i_13_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFBFF)) 
    \dig0[3]_i_14 
       (.I0(count_reg[17]),
        .I1(count_reg[19]),
        .I2(count_reg[25]),
        .I3(count_reg[10]),
        .I4(\dig0[3]_i_18_n_0 ),
        .O(\dig0[3]_i_14_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \dig0[3]_i_15 
       (.I0(dig02_n_91),
        .I1(\dig0[3]_i_17_n_0 ),
        .I2(dig02_n_90),
        .O(\dig0[3]_i_15_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \dig0[3]_i_16 
       (.I0(dig02_n_89),
        .I1(dig02_n_90),
        .I2(\dig1[3]_i_9_n_0 ),
        .O(\dig0[3]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h8EE4DAAE8AA4D88E)) 
    \dig0[3]_i_17 
       (.I0(\dig0[3]_i_19_n_0 ),
        .I1(\dig1[3]_i_9_n_0 ),
        .I2(dig02_n_88),
        .I3(\dig2[3]_i_11_n_0 ),
        .I4(dig02_n_89),
        .I5(dig02_n_90),
        .O(\dig0[3]_i_17_n_0 ));
  LUT4 #(
    .INIT(16'hFFF7)) 
    \dig0[3]_i_18 
       (.I0(count_reg[9]),
        .I1(count_reg[12]),
        .I2(count_reg[6]),
        .I3(count_reg[16]),
        .O(\dig0[3]_i_18_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \dig0[3]_i_19 
       (.I0(dig02_n_87),
        .I1(dig02_n_88),
        .I2(\dig1[3]_i_12_n_0 ),
        .O(\dig0[3]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \dig0[3]_i_2 
       (.I0(\dig0[3]_i_6_n_0 ),
        .I1(count_reg[3]),
        .I2(count_reg[32]),
        .I3(count_reg[26]),
        .I4(\dig0[3]_i_7_n_0 ),
        .I5(\dig0[3]_i_8_n_0 ),
        .O(\dig0[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h8119194200DBDB00)) 
    \dig0[3]_i_3 
       (.I0(\dig0[3]_i_9_n_0 ),
        .I1(\dig0[3]_i_10_n_0 ),
        .I2(dig02_n_93),
        .I3(\dig0[3]_i_11_n_0 ),
        .I4(dig02_n_92),
        .I5(dig02_n_94),
        .O(\dig0[3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h7F)) 
    \dig0[3]_i_4 
       (.I0(data[15]),
        .I1(data[14]),
        .I2(data[13]),
        .O(\dig0[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h1FFFFFFFFFFFFFFF)) 
    \dig0[3]_i_5 
       (.I0(data[5]),
        .I1(data[4]),
        .I2(data[11]),
        .I3(data[9]),
        .I4(data[7]),
        .I5(data[6]),
        .O(\dig0[3]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \dig0[3]_i_6 
       (.I0(count_reg[22]),
        .I1(count_reg[4]),
        .I2(count_reg[31]),
        .I3(count_reg[24]),
        .I4(\dig0[3]_i_12_n_0 ),
        .O(\dig0[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFBFFF)) 
    \dig0[3]_i_7 
       (.I0(\dig0[3]_i_13_n_0 ),
        .I1(count_reg[7]),
        .I2(count_reg[15]),
        .I3(count_reg[23]),
        .I4(count_reg[14]),
        .I5(\dig0[3]_i_14_n_0 ),
        .O(\dig0[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEFF)) 
    \dig0[3]_i_8 
       (.I0(count_reg[13]),
        .I1(count_reg[27]),
        .I2(count_reg[28]),
        .I3(count_reg[20]),
        .I4(count_reg[29]),
        .I5(count_reg[5]),
        .O(\dig0[3]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \dig0[3]_i_9 
       (.I0(dig02_n_91),
        .I1(dig02_n_92),
        .I2(\dig1[3]_i_5_n_0 ),
        .O(\dig0[3]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dig0_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\dig0[3]_i_2_n_0 ),
        .D(dig02_n_95),
        .Q(\dig0_reg_n_0_[0] ),
        .R(dig0));
  FDRE #(
    .INIT(1'b0)) 
    \dig0_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\dig0[3]_i_2_n_0 ),
        .D(\dig0[1]_i_1_n_0 ),
        .Q(\dig0_reg_n_0_[1] ),
        .R(dig0));
  FDRE #(
    .INIT(1'b0)) 
    \dig0_reg[2] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\dig0[3]_i_2_n_0 ),
        .D(\dig0[2]_i_1_n_0 ),
        .Q(\dig0_reg_n_0_[2] ),
        .R(dig0));
  FDRE #(
    .INIT(1'b0)) 
    \dig0_reg[3] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\dig0[3]_i_2_n_0 ),
        .D(\dig0[3]_i_3_n_0 ),
        .Q(\dig0_reg_n_0_[3] ),
        .R(dig0));
  LUT6 #(
    .INIT(64'h8DEAEA4E8DA8A84E)) 
    \dig1[0]_i_1 
       (.I0(\dig0[3]_i_9_n_0 ),
        .I1(\dig0[3]_i_10_n_0 ),
        .I2(dig02_n_93),
        .I3(\dig0[3]_i_11_n_0 ),
        .I4(dig02_n_92),
        .I5(dig02_n_94),
        .O(\dig1[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h92599A494565A6A2)) 
    \dig1[1]_i_1 
       (.I0(\dig0[3]_i_10_n_0 ),
        .I1(\dig1[3]_i_5_n_0 ),
        .I2(\dig1[3]_i_4_n_0 ),
        .I3(\dig0[3]_i_11_n_0 ),
        .I4(\dig1[3]_i_3_n_0 ),
        .I5(\dig1[3]_i_2_n_0 ),
        .O(\dig1[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h3C3C3C3C72689472)) 
    \dig1[2]_i_1 
       (.I0(\dig1[3]_i_2_n_0 ),
        .I1(\dig1[3]_i_3_n_0 ),
        .I2(\dig0[3]_i_11_n_0 ),
        .I3(\dig1[3]_i_4_n_0 ),
        .I4(\dig1[3]_i_5_n_0 ),
        .I5(\dig0[3]_i_10_n_0 ),
        .O(\dig1[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4226194200E7DB00)) 
    \dig1[3]_i_1 
       (.I0(\dig1[3]_i_2_n_0 ),
        .I1(\dig1[3]_i_3_n_0 ),
        .I2(\dig0[3]_i_11_n_0 ),
        .I3(\dig1[3]_i_4_n_0 ),
        .I4(\dig1[3]_i_5_n_0 ),
        .I5(\dig0[3]_i_10_n_0 ),
        .O(\dig1[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \dig1[3]_i_10 
       (.I0(dig02_n_89),
        .I1(\dig2[3]_i_11_n_0 ),
        .I2(dig02_n_88),
        .O(\dig1[3]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dig1[3]_i_11 
       (.I0(\dig2[3]_i_15_n_0 ),
        .I1(\dig2[3]_i_13_n_0 ),
        .O(\dig1[3]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h8EE4DAAE8AA4D88E)) 
    \dig1[3]_i_12 
       (.I0(\dig1[3]_i_14_n_0 ),
        .I1(\dig2[3]_i_15_n_0 ),
        .I2(dig02_n_85),
        .I3(\dig3[3]_i_18_n_0 ),
        .I4(dig02_n_86),
        .I5(dig02_n_87),
        .O(\dig1[3]_i_12_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \dig1[3]_i_13 
       (.I0(dig02_n_87),
        .I1(\dig2[3]_i_15_n_0 ),
        .I2(dig02_n_86),
        .O(\dig1[3]_i_13_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \dig1[3]_i_14 
       (.I0(dig02_n_85),
        .I1(\dig2[3]_i_20_n_0 ),
        .I2(dig02_n_84),
        .O(\dig1[3]_i_14_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dig1[3]_i_2 
       (.I0(\dig0[3]_i_17_n_0 ),
        .I1(\dig2[3]_i_5_n_0 ),
        .O(\dig1[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h4ED5EA4E4E54A84E)) 
    \dig1[3]_i_3 
       (.I0(\dig1[3]_i_6_n_0 ),
        .I1(\dig1[3]_i_4_n_0 ),
        .I2(\dig1[3]_i_5_n_0 ),
        .I3(\dig2[3]_i_5_n_0 ),
        .I4(\dig0[3]_i_17_n_0 ),
        .I5(\dig0[3]_i_11_n_0 ),
        .O(\dig1[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h4ED5EA4E4E54A84E)) 
    \dig1[3]_i_4 
       (.I0(\dig1[3]_i_7_n_0 ),
        .I1(\dig2[3]_i_5_n_0 ),
        .I2(\dig0[3]_i_17_n_0 ),
        .I3(\dig1[3]_i_8_n_0 ),
        .I4(\dig1[3]_i_9_n_0 ),
        .I5(\dig1[3]_i_5_n_0 ),
        .O(\dig1[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h8EE4DAAE8AA4D88E)) 
    \dig1[3]_i_5 
       (.I0(\dig1[3]_i_10_n_0 ),
        .I1(\dig0[3]_i_17_n_0 ),
        .I2(dig02_n_89),
        .I3(\dig1[3]_i_9_n_0 ),
        .I4(dig02_n_90),
        .I5(dig02_n_91),
        .O(\dig1[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dig1[3]_i_6 
       (.I0(\dig1[3]_i_8_n_0 ),
        .I1(\dig1[3]_i_9_n_0 ),
        .O(\dig1[3]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dig1[3]_i_7 
       (.I0(\dig2[3]_i_11_n_0 ),
        .I1(\dig2[3]_i_9_n_0 ),
        .O(\dig1[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h4ED5EA4E4E54A84E)) 
    \dig1[3]_i_8 
       (.I0(\dig1[3]_i_11_n_0 ),
        .I1(\dig2[3]_i_9_n_0 ),
        .I2(\dig2[3]_i_11_n_0 ),
        .I3(\dig3[3]_i_9_n_0 ),
        .I4(\dig1[3]_i_12_n_0 ),
        .I5(\dig1[3]_i_9_n_0 ),
        .O(\dig1[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h8EE4DAAE8AA4D88E)) 
    \dig1[3]_i_9 
       (.I0(\dig1[3]_i_13_n_0 ),
        .I1(\dig2[3]_i_11_n_0 ),
        .I2(dig02_n_87),
        .I3(\dig1[3]_i_12_n_0 ),
        .I4(dig02_n_88),
        .I5(dig02_n_89),
        .O(\dig1[3]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dig1_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\dig0[3]_i_2_n_0 ),
        .D(\dig1[0]_i_1_n_0 ),
        .Q(dig1[0]),
        .R(dig0));
  FDRE #(
    .INIT(1'b0)) 
    \dig1_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\dig0[3]_i_2_n_0 ),
        .D(\dig1[1]_i_1_n_0 ),
        .Q(dig1[1]),
        .R(dig0));
  FDRE #(
    .INIT(1'b0)) 
    \dig1_reg[2] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\dig0[3]_i_2_n_0 ),
        .D(\dig1[2]_i_1_n_0 ),
        .Q(dig1[2]),
        .R(dig0));
  FDRE #(
    .INIT(1'b0)) 
    \dig1_reg[3] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\dig0[3]_i_2_n_0 ),
        .D(\dig1[3]_i_1_n_0 ),
        .Q(dig1[3]),
        .R(dig0));
  LUT6 #(
    .INIT(64'h4ED5EA4E4E54A84E)) 
    \dig2[0]_i_1 
       (.I0(\dig1[3]_i_2_n_0 ),
        .I1(\dig1[3]_i_3_n_0 ),
        .I2(\dig0[3]_i_11_n_0 ),
        .I3(\dig1[3]_i_4_n_0 ),
        .I4(\dig1[3]_i_5_n_0 ),
        .I5(\dig0[3]_i_10_n_0 ),
        .O(\dig2[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h92599A494565A6A2)) 
    \dig2[1]_i_1 
       (.I0(\dig1[3]_i_3_n_0 ),
        .I1(\dig2[3]_i_5_n_0 ),
        .I2(\dig2[3]_i_4_n_0 ),
        .I3(\dig1[3]_i_4_n_0 ),
        .I4(\dig2[3]_i_3_n_0 ),
        .I5(\dig2[3]_i_2_n_0 ),
        .O(\dig2[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1FA41EE04BB01FA4)) 
    \dig2[2]_i_1 
       (.I0(\dig1[3]_i_3_n_0 ),
        .I1(\dig2[3]_i_2_n_0 ),
        .I2(\dig2[3]_i_3_n_0 ),
        .I3(\dig1[3]_i_4_n_0 ),
        .I4(\dig2[3]_i_4_n_0 ),
        .I5(\dig2[3]_i_5_n_0 ),
        .O(\dig2[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4226194200E7DB00)) 
    \dig2[3]_i_1 
       (.I0(\dig2[3]_i_2_n_0 ),
        .I1(\dig2[3]_i_3_n_0 ),
        .I2(\dig1[3]_i_4_n_0 ),
        .I3(\dig2[3]_i_4_n_0 ),
        .I4(\dig2[3]_i_5_n_0 ),
        .I5(\dig1[3]_i_3_n_0 ),
        .O(\dig2[3]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \dig2[3]_i_10 
       (.I0(\dig2[3]_i_11_n_0 ),
        .I1(\dig3[3]_i_9_n_0 ),
        .I2(\dig1[3]_i_12_n_0 ),
        .O(\dig2[3]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h17CDC7F107C1C471)) 
    \dig2[3]_i_11 
       (.I0(\dig2[3]_i_17_n_0 ),
        .I1(\dig2[3]_i_15_n_0 ),
        .I2(\dig2[3]_i_18_n_0 ),
        .I3(dig02_n_86),
        .I4(dig02_n_87),
        .I5(dig02_n_88),
        .O(\dig2[3]_i_11_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dig2[3]_i_12 
       (.I0(\dig3[3]_i_14_n_0 ),
        .I1(\dig6[3]_i_8_n_0 ),
        .O(\dig2[3]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h1C7DCF710C71C741)) 
    \dig2[3]_i_13 
       (.I0(\dig2[3]_i_19_n_0 ),
        .I1(\dig3[3]_i_19_n_0 ),
        .I2(\dig2[3]_i_20_n_0 ),
        .I3(\dig2[3]_i_21_n_0 ),
        .I4(\dig3[3]_i_18_n_0 ),
        .I5(\dig2[3]_i_15_n_0 ),
        .O(\dig2[3]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0FF038D1B8D3F00F)) 
    \dig2[3]_i_14 
       (.I0(\dig2[3]_i_21_n_0 ),
        .I1(\dig2[3]_i_19_n_0 ),
        .I2(\dig2[3]_i_20_n_0 ),
        .I3(\dig3[3]_i_19_n_0 ),
        .I4(\dig3[3]_i_18_n_0 ),
        .I5(\dig2[3]_i_15_n_0 ),
        .O(\dig2[3]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h17CDC7F107C1C471)) 
    \dig2[3]_i_15 
       (.I0(\dig2[3]_i_22_n_0 ),
        .I1(\dig2[3]_i_20_n_0 ),
        .I2(\dig2[3]_i_23_n_0 ),
        .I3(dig02_n_84),
        .I4(dig02_n_85),
        .I5(dig02_n_86),
        .O(\dig2[3]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h92599A494565A6A2)) 
    \dig2[3]_i_16 
       (.I0(\dig3[3]_i_18_n_0 ),
        .I1(\dig2[3]_i_24_n_0 ),
        .I2(\dig6[3]_i_19_n_0 ),
        .I3(\dig2[3]_i_20_n_0 ),
        .I4(\dig3[3]_i_19_n_0 ),
        .I5(\dig2[3]_i_25_n_0 ),
        .O(\dig2[3]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h0FF038D1B8D3F00F)) 
    \dig2[3]_i_17 
       (.I0(\dig2[3]_i_23_n_0 ),
        .I1(\dig2[3]_i_22_n_0 ),
        .I2(dig02_n_84),
        .I3(\dig2[3]_i_20_n_0 ),
        .I4(dig02_n_85),
        .I5(dig02_n_86),
        .O(\dig2[3]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h5559A44992259AAA)) 
    \dig2[3]_i_18 
       (.I0(dig02_n_85),
        .I1(dig02_n_84),
        .I2(\dig2[3]_i_24_n_0 ),
        .I3(dig02_n_83),
        .I4(\dig2[3]_i_20_n_0 ),
        .I5(\dig2[3]_i_26_n_0 ),
        .O(\dig2[3]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h0FF038D1B8D3F00F)) 
    \dig2[3]_i_19 
       (.I0(\dig3[3]_i_25_n_0 ),
        .I1(\dig3[3]_i_23_n_0 ),
        .I2(\dig3[3]_i_24_n_0 ),
        .I3(\dig6[3]_i_22_n_0 ),
        .I4(\dig2[3]_i_24_n_0 ),
        .I5(\dig2[3]_i_20_n_0 ),
        .O(\dig2[3]_i_19_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dig2[3]_i_2 
       (.I0(\dig1[3]_i_8_n_0 ),
        .I1(\dig3[3]_i_4_n_0 ),
        .O(\dig2[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h17CDC7F107C1C471)) 
    \dig2[3]_i_20 
       (.I0(\dig2[3]_i_27_n_0 ),
        .I1(\dig3[3]_i_24_n_0 ),
        .I2(\dig2[3]_i_28_n_0 ),
        .I3(dig02_n_82),
        .I4(dig02_n_83),
        .I5(dig02_n_84),
        .O(\dig2[3]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h92599A494565A6A2)) 
    \dig2[3]_i_21 
       (.I0(\dig2[3]_i_24_n_0 ),
        .I1(\dig6[3]_i_38_n_0 ),
        .I2(\dig6[3]_i_26_n_0 ),
        .I3(\dig3[3]_i_24_n_0 ),
        .I4(\dig6[3]_i_22_n_0 ),
        .I5(\dig6[3]_i_37_n_0 ),
        .O(\dig2[3]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h0FF038D1B8D3F00F)) 
    \dig2[3]_i_22 
       (.I0(\dig2[3]_i_28_n_0 ),
        .I1(\dig2[3]_i_27_n_0 ),
        .I2(dig02_n_82),
        .I3(\dig3[3]_i_24_n_0 ),
        .I4(dig02_n_83),
        .I5(dig02_n_84),
        .O(\dig2[3]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h5559A44992259AAA)) 
    \dig2[3]_i_23 
       (.I0(dig02_n_83),
        .I1(dig02_n_82),
        .I2(\dig6[3]_i_38_n_0 ),
        .I3(dig02_n_81),
        .I4(\dig3[3]_i_24_n_0 ),
        .I5(\dig2[3]_i_29_n_0 ),
        .O(\dig2[3]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h8EE4DAAE8AA4D88E)) 
    \dig2[3]_i_24 
       (.I0(\dig2[3]_i_29_n_0 ),
        .I1(\dig3[3]_i_24_n_0 ),
        .I2(dig02_n_81),
        .I3(\dig6[3]_i_38_n_0 ),
        .I4(dig02_n_82),
        .I5(dig02_n_83),
        .O(\dig2[3]_i_24_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dig2[3]_i_25 
       (.I0(\dig3[3]_i_24_n_0 ),
        .I1(\dig6[3]_i_22_n_0 ),
        .O(\dig2[3]_i_25_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \dig2[3]_i_26 
       (.I0(dig02_n_83),
        .I1(\dig3[3]_i_24_n_0 ),
        .I2(dig02_n_82),
        .O(\dig2[3]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h0FF038D1B8D3F00F)) 
    \dig2[3]_i_27 
       (.I0(\dig3[3]_i_27_n_0 ),
        .I1(\dig3[3]_i_26_n_0 ),
        .I2(dig02_n_80),
        .I3(\dig6[3]_i_40_n_0 ),
        .I4(dig02_n_81),
        .I5(dig02_n_82),
        .O(\dig2[3]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h92599A495525A4AA)) 
    \dig2[3]_i_28 
       (.I0(dig02_n_81),
        .I1(dig02_n_80),
        .I2(\dig6[3]_i_36_n_0 ),
        .I3(dig02_n_79),
        .I4(\dig6[3]_i_40_n_0 ),
        .I5(\dig6[3]_i_48_n_0 ),
        .O(\dig2[3]_i_28_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \dig2[3]_i_29 
       (.I0(dig02_n_81),
        .I1(\dig6[3]_i_40_n_0 ),
        .I2(dig02_n_80),
        .O(\dig2[3]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h4ED5D58D4E54548D)) 
    \dig2[3]_i_3 
       (.I0(\dig2[3]_i_6_n_0 ),
        .I1(\dig2[3]_i_4_n_0 ),
        .I2(\dig2[3]_i_5_n_0 ),
        .I3(\dig3[3]_i_4_n_0 ),
        .I4(\dig1[3]_i_8_n_0 ),
        .I5(\dig1[3]_i_4_n_0 ),
        .O(\dig2[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h4ED5EA4E4E54A84E)) 
    \dig2[3]_i_4 
       (.I0(\dig2[3]_i_7_n_0 ),
        .I1(\dig3[3]_i_4_n_0 ),
        .I2(\dig1[3]_i_8_n_0 ),
        .I3(\dig2[3]_i_8_n_0 ),
        .I4(\dig2[3]_i_9_n_0 ),
        .I5(\dig2[3]_i_5_n_0 ),
        .O(\dig2[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h4ED5D58D4E54548D)) 
    \dig2[3]_i_5 
       (.I0(\dig2[3]_i_10_n_0 ),
        .I1(\dig1[3]_i_8_n_0 ),
        .I2(\dig1[3]_i_9_n_0 ),
        .I3(\dig2[3]_i_9_n_0 ),
        .I4(\dig2[3]_i_11_n_0 ),
        .I5(\dig0[3]_i_17_n_0 ),
        .O(\dig2[3]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \dig2[3]_i_6 
       (.I0(\dig2[3]_i_8_n_0 ),
        .I1(\dig1[3]_i_8_n_0 ),
        .I2(\dig2[3]_i_9_n_0 ),
        .O(\dig2[3]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dig2[3]_i_7 
       (.I0(\dig3[3]_i_9_n_0 ),
        .I1(\dig3[3]_i_8_n_0 ),
        .O(\dig2[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h4ED5EA4E4E54A84E)) 
    \dig2[3]_i_8 
       (.I0(\dig2[3]_i_12_n_0 ),
        .I1(\dig3[3]_i_8_n_0 ),
        .I2(\dig3[3]_i_9_n_0 ),
        .I3(\dig4[3]_i_10_n_0 ),
        .I4(\dig2[3]_i_13_n_0 ),
        .I5(\dig2[3]_i_9_n_0 ),
        .O(\dig2[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h1C7DCF710C71C741)) 
    \dig2[3]_i_9 
       (.I0(\dig2[3]_i_14_n_0 ),
        .I1(\dig2[3]_i_13_n_0 ),
        .I2(\dig2[3]_i_15_n_0 ),
        .I3(\dig2[3]_i_16_n_0 ),
        .I4(\dig1[3]_i_12_n_0 ),
        .I5(\dig2[3]_i_11_n_0 ),
        .O(\dig2[3]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dig2_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\dig0[3]_i_2_n_0 ),
        .D(\dig2[0]_i_1_n_0 ),
        .Q(dig2[0]),
        .R(dig0));
  FDRE #(
    .INIT(1'b0)) 
    \dig2_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\dig0[3]_i_2_n_0 ),
        .D(\dig2[1]_i_1_n_0 ),
        .Q(dig2[1]),
        .R(dig0));
  FDRE #(
    .INIT(1'b0)) 
    \dig2_reg[2] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\dig0[3]_i_2_n_0 ),
        .D(\dig2[2]_i_1_n_0 ),
        .Q(dig2[2]),
        .R(dig0));
  FDRE #(
    .INIT(1'b0)) 
    \dig2_reg[3] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\dig0[3]_i_2_n_0 ),
        .D(\dig2[3]_i_1_n_0 ),
        .Q(dig2[3]),
        .R(dig0));
  LUT6 #(
    .INIT(64'h4ED5EA4E4E54A84E)) 
    \dig3[0]_i_1 
       (.I0(\dig2[3]_i_2_n_0 ),
        .I1(\dig2[3]_i_3_n_0 ),
        .I2(\dig1[3]_i_4_n_0 ),
        .I3(\dig2[3]_i_4_n_0 ),
        .I4(\dig2[3]_i_5_n_0 ),
        .I5(\dig1[3]_i_3_n_0 ),
        .O(\dig3[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h92259AAA5559A449)) 
    \dig3[1]_i_1 
       (.I0(\dig2[3]_i_3_n_0 ),
        .I1(\dig2[3]_i_4_n_0 ),
        .I2(\dig3[3]_i_5_n_0 ),
        .I3(\dig3[3]_i_4_n_0 ),
        .I4(\dig3[3]_i_3_n_0 ),
        .I5(\dig3[3]_i_2_n_0 ),
        .O(\dig3[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1F1E1E4FA4E0E0A1)) 
    \dig3[2]_i_1 
       (.I0(\dig2[3]_i_3_n_0 ),
        .I1(\dig3[3]_i_2_n_0 ),
        .I2(\dig3[3]_i_3_n_0 ),
        .I3(\dig3[3]_i_4_n_0 ),
        .I4(\dig3[3]_i_5_n_0 ),
        .I5(\dig2[3]_i_4_n_0 ),
        .O(\dig3[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h422826610EE00770)) 
    \dig3[3]_i_1 
       (.I0(\dig3[3]_i_2_n_0 ),
        .I1(\dig3[3]_i_3_n_0 ),
        .I2(\dig3[3]_i_4_n_0 ),
        .I3(\dig3[3]_i_5_n_0 ),
        .I4(\dig2[3]_i_4_n_0 ),
        .I5(\dig2[3]_i_3_n_0 ),
        .O(\dig3[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h92599A494565A6A2)) 
    \dig3[3]_i_10 
       (.I0(\dig2[3]_i_13_n_0 ),
        .I1(\dig3[3]_i_19_n_0 ),
        .I2(\dig6[3]_i_10_n_0 ),
        .I3(\dig3[3]_i_14_n_0 ),
        .I4(\dig6[3]_i_8_n_0 ),
        .I5(\dig3[3]_i_20_n_0 ),
        .O(\dig3[3]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h963E83969234D3B6)) 
    \dig3[3]_i_11 
       (.I0(\dig3[3]_i_8_n_0 ),
        .I1(\dig6[3]_i_8_n_0 ),
        .I2(\dig6[3]_i_6_n_0 ),
        .I3(\dig4[3]_i_10_n_0 ),
        .I4(\dig3[3]_i_21_n_0 ),
        .I5(\dig3[3]_i_22_n_0 ),
        .O(\dig3[3]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h2CBECFB20CB2CB82)) 
    \dig3[3]_i_12 
       (.I0(\dig3[3]_i_21_n_0 ),
        .I1(\dig6[3]_i_6_n_0 ),
        .I2(\dig6[3]_i_8_n_0 ),
        .I3(\dig3[3]_i_22_n_0 ),
        .I4(\dig4[3]_i_10_n_0 ),
        .I5(\dig3[3]_i_8_n_0 ),
        .O(\dig3[3]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h92599A494565A6A2)) 
    \dig3[3]_i_13 
       (.I0(\dig4[3]_i_10_n_0 ),
        .I1(\dig6[3]_i_10_n_0 ),
        .I2(\dig6[3]_i_9_n_0 ),
        .I3(\dig6[3]_i_8_n_0 ),
        .I4(\dig6[3]_i_6_n_0 ),
        .I5(\dig6[3]_i_7_n_0 ),
        .O(\dig3[3]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h4ED5EA4E4E54A84E)) 
    \dig3[3]_i_14 
       (.I0(\dig2[3]_i_25_n_0 ),
        .I1(\dig3[3]_i_19_n_0 ),
        .I2(\dig2[3]_i_20_n_0 ),
        .I3(\dig6[3]_i_19_n_0 ),
        .I4(\dig2[3]_i_24_n_0 ),
        .I5(\dig3[3]_i_18_n_0 ),
        .O(\dig3[3]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hA11EE17E877A8178)) 
    \dig3[3]_i_15 
       (.I0(\dig3[3]_i_14_n_0 ),
        .I1(\dig3[3]_i_19_n_0 ),
        .I2(\dig6[3]_i_11_n_0 ),
        .I3(\dig6[3]_i_19_n_0 ),
        .I4(\dig6[3]_i_20_n_0 ),
        .I5(\dig6[3]_i_21_n_0 ),
        .O(\dig3[3]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hA2655A265A6445A6)) 
    \dig3[3]_i_16 
       (.I0(\dig3[3]_i_19_n_0 ),
        .I1(\dig6[3]_i_11_n_0 ),
        .I2(\dig6[3]_i_14_n_0 ),
        .I3(\dig6[3]_i_23_n_0 ),
        .I4(\dig6[3]_i_22_n_0 ),
        .I5(\dig6[3]_i_19_n_0 ),
        .O(\dig3[3]_i_16_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dig3[3]_i_17 
       (.I0(\dig2[3]_i_20_n_0 ),
        .I1(\dig3[3]_i_19_n_0 ),
        .O(\dig3[3]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h8EE4DAAE8AA4D88E)) 
    \dig3[3]_i_18 
       (.I0(\dig2[3]_i_26_n_0 ),
        .I1(\dig2[3]_i_20_n_0 ),
        .I2(dig02_n_83),
        .I3(\dig2[3]_i_24_n_0 ),
        .I4(dig02_n_84),
        .I5(dig02_n_85),
        .O(\dig3[3]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h1C7DCF710C71C741)) 
    \dig3[3]_i_19 
       (.I0(\dig3[3]_i_23_n_0 ),
        .I1(\dig6[3]_i_22_n_0 ),
        .I2(\dig3[3]_i_24_n_0 ),
        .I3(\dig3[3]_i_25_n_0 ),
        .I4(\dig2[3]_i_24_n_0 ),
        .I5(\dig2[3]_i_20_n_0 ),
        .O(\dig3[3]_i_19_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \dig3[3]_i_2 
       (.I0(\dig2[3]_i_8_n_0 ),
        .I1(\dig4[3]_i_5_n_0 ),
        .I2(\dig3[3]_i_4_n_0 ),
        .O(\dig3[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dig3[3]_i_20 
       (.I0(\dig6[3]_i_19_n_0 ),
        .I1(\dig6[3]_i_11_n_0 ),
        .O(\dig3[3]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h9234D3B6963E8396)) 
    \dig3[3]_i_21 
       (.I0(\dig6[3]_i_8_n_0 ),
        .I1(\dig6[3]_i_11_n_0 ),
        .I2(\dig6[3]_i_3_n_0 ),
        .I3(\dig6[3]_i_10_n_0 ),
        .I4(\dig6[3]_i_17_n_0 ),
        .I5(\dig6[3]_i_18_n_0 ),
        .O(\dig3[3]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'hA69186926189618A)) 
    \dig3[3]_i_22 
       (.I0(\dig6[3]_i_10_n_0 ),
        .I1(\dig6[3]_i_4_n_0 ),
        .I2(\dig6[3]_i_14_n_0 ),
        .I3(\dig6[3]_i_13_n_0 ),
        .I4(\dig6[3]_i_12_n_0 ),
        .I5(\dig6[3]_i_11_n_0 ),
        .O(\dig3[3]_i_22_n_0 ));
  LUT6 #(
    .INIT(64'h0FF038D1B8D3F00F)) 
    \dig3[3]_i_23 
       (.I0(\dig6[3]_i_41_n_0 ),
        .I1(\dig6[3]_i_39_n_0 ),
        .I2(\dig6[3]_i_40_n_0 ),
        .I3(\dig6[3]_i_27_n_0 ),
        .I4(\dig6[3]_i_38_n_0 ),
        .I5(\dig3[3]_i_24_n_0 ),
        .O(\dig3[3]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h17CDC7F107C1C471)) 
    \dig3[3]_i_24 
       (.I0(\dig3[3]_i_26_n_0 ),
        .I1(\dig6[3]_i_40_n_0 ),
        .I2(\dig3[3]_i_27_n_0 ),
        .I3(dig02_n_80),
        .I4(dig02_n_81),
        .I5(dig02_n_82),
        .O(\dig3[3]_i_24_n_0 ));
  LUT6 #(
    .INIT(64'h92599A494565A6A2)) 
    \dig3[3]_i_25 
       (.I0(\dig6[3]_i_38_n_0 ),
        .I1(\dig6[3]_i_36_n_0 ),
        .I2(\dig6[3]_i_29_n_0 ),
        .I3(\dig6[3]_i_40_n_0 ),
        .I4(\dig6[3]_i_27_n_0 ),
        .I5(\dig6[3]_i_44_n_0 ),
        .O(\dig3[3]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h0FF038E178E3F00F)) 
    \dig3[3]_i_26 
       (.I0(\dig6[3]_i_49_n_0 ),
        .I1(\dig6[3]_i_47_n_0 ),
        .I2(dig02_n_78),
        .I3(\dig6[3]_i_32_n_0 ),
        .I4(dig02_n_79),
        .I5(dig02_n_80),
        .O(\dig3[3]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h9229AAAA55559449)) 
    \dig3[3]_i_27 
       (.I0(dig02_n_79),
        .I1(dig02_n_78),
        .I2(\dig6[3]_i_35_n_0 ),
        .I3(dig02_n_77),
        .I4(\dig6[3]_i_32_n_0 ),
        .I5(\dig6[3]_i_47_n_0 ),
        .O(\dig3[3]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h4ED4EA5E4A54E84E)) 
    \dig3[3]_i_3 
       (.I0(\dig3[3]_i_6_n_0 ),
        .I1(\dig3[3]_i_5_n_0 ),
        .I2(\dig2[3]_i_8_n_0 ),
        .I3(\dig4[3]_i_5_n_0 ),
        .I4(\dig3[3]_i_4_n_0 ),
        .I5(\dig2[3]_i_4_n_0 ),
        .O(\dig3[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h2CBECFB20CB2CB82)) 
    \dig3[3]_i_4 
       (.I0(\dig3[3]_i_7_n_0 ),
        .I1(\dig3[3]_i_8_n_0 ),
        .I2(\dig3[3]_i_9_n_0 ),
        .I3(\dig3[3]_i_10_n_0 ),
        .I4(\dig2[3]_i_9_n_0 ),
        .I5(\dig1[3]_i_8_n_0 ),
        .O(\dig3[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h2BCECBF20BC2C8B2)) 
    \dig3[3]_i_5 
       (.I0(\dig3[3]_i_11_n_0 ),
        .I1(\dig3[3]_i_12_n_0 ),
        .I2(\dig3[3]_i_13_n_0 ),
        .I3(\dig3[3]_i_8_n_0 ),
        .I4(\dig2[3]_i_8_n_0 ),
        .I5(\dig3[3]_i_4_n_0 ),
        .O(\dig3[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dig3[3]_i_6 
       (.I0(\dig3[3]_i_8_n_0 ),
        .I1(\dig3[3]_i_12_n_0 ),
        .O(\dig3[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h877AA11E8178E17E)) 
    \dig3[3]_i_7 
       (.I0(\dig3[3]_i_9_n_0 ),
        .I1(\dig2[3]_i_13_n_0 ),
        .I2(\dig6[3]_i_8_n_0 ),
        .I3(\dig3[3]_i_14_n_0 ),
        .I4(\dig3[3]_i_15_n_0 ),
        .I5(\dig3[3]_i_16_n_0 ),
        .O(\dig3[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h2CBECFB20CB2CB82)) 
    \dig3[3]_i_8 
       (.I0(\dig3[3]_i_15_n_0 ),
        .I1(\dig6[3]_i_8_n_0 ),
        .I2(\dig3[3]_i_14_n_0 ),
        .I3(\dig3[3]_i_16_n_0 ),
        .I4(\dig2[3]_i_13_n_0 ),
        .I5(\dig3[3]_i_9_n_0 ),
        .O(\dig3[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h4ED5EA4E4E54A84E)) 
    \dig3[3]_i_9 
       (.I0(\dig3[3]_i_17_n_0 ),
        .I1(\dig2[3]_i_13_n_0 ),
        .I2(\dig2[3]_i_15_n_0 ),
        .I3(\dig3[3]_i_14_n_0 ),
        .I4(\dig3[3]_i_18_n_0 ),
        .I5(\dig1[3]_i_12_n_0 ),
        .O(\dig3[3]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dig3_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\dig0[3]_i_2_n_0 ),
        .D(\dig3[0]_i_1_n_0 ),
        .Q(dig3[0]),
        .R(dig0));
  FDRE #(
    .INIT(1'b0)) 
    \dig3_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\dig0[3]_i_2_n_0 ),
        .D(\dig3[1]_i_1_n_0 ),
        .Q(dig3[1]),
        .R(dig0));
  FDRE #(
    .INIT(1'b0)) 
    \dig3_reg[2] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\dig0[3]_i_2_n_0 ),
        .D(\dig3[2]_i_1_n_0 ),
        .Q(dig3[2]),
        .R(dig0));
  FDRE #(
    .INIT(1'b0)) 
    \dig3_reg[3] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\dig0[3]_i_2_n_0 ),
        .D(\dig3[3]_i_1_n_0 ),
        .Q(dig3[3]),
        .R(dig0));
  LUT6 #(
    .INIT(64'h4DD8E55D4558E44D)) 
    \dig4[0]_i_1 
       (.I0(\dig3[3]_i_2_n_0 ),
        .I1(\dig3[3]_i_3_n_0 ),
        .I2(\dig3[3]_i_4_n_0 ),
        .I3(\dig3[3]_i_5_n_0 ),
        .I4(\dig2[3]_i_4_n_0 ),
        .I5(\dig2[3]_i_3_n_0 ),
        .O(\dig4[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h92599A494565A6A2)) 
    \dig4[1]_i_1 
       (.I0(\dig3[3]_i_3_n_0 ),
        .I1(\dig4[3]_i_5_n_0 ),
        .I2(\dig4[3]_i_4_n_0 ),
        .I3(\dig3[3]_i_5_n_0 ),
        .I4(\dig4[3]_i_3_n_0 ),
        .I5(\dig4[3]_i_2_n_0 ),
        .O(\dig4[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1FA41EE04BB01FA4)) 
    \dig4[2]_i_1 
       (.I0(\dig3[3]_i_3_n_0 ),
        .I1(\dig4[3]_i_2_n_0 ),
        .I2(\dig4[3]_i_3_n_0 ),
        .I3(\dig3[3]_i_5_n_0 ),
        .I4(\dig4[3]_i_4_n_0 ),
        .I5(\dig4[3]_i_5_n_0 ),
        .O(\dig4[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4226194200E7DB00)) 
    \dig4[3]_i_1 
       (.I0(\dig4[3]_i_2_n_0 ),
        .I1(\dig4[3]_i_3_n_0 ),
        .I2(\dig3[3]_i_5_n_0 ),
        .I3(\dig4[3]_i_4_n_0 ),
        .I4(\dig4[3]_i_5_n_0 ),
        .I5(\dig3[3]_i_3_n_0 ),
        .O(\dig4[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4ED5EA4E4E54A84E)) 
    \dig4[3]_i_10 
       (.I0(\dig3[3]_i_20_n_0 ),
        .I1(\dig6[3]_i_8_n_0 ),
        .I2(\dig3[3]_i_14_n_0 ),
        .I3(\dig6[3]_i_10_n_0 ),
        .I4(\dig3[3]_i_19_n_0 ),
        .I5(\dig2[3]_i_13_n_0 ),
        .O(\dig4[3]_i_10_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dig4[3]_i_2 
       (.I0(\dig3[3]_i_12_n_0 ),
        .I1(\dig5[3]_i_2_n_0 ),
        .O(\dig4[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h2CBECFB20CB2CB82)) 
    \dig4[3]_i_3 
       (.I0(\dig4[3]_i_6_n_0 ),
        .I1(\dig5[3]_i_2_n_0 ),
        .I2(\dig3[3]_i_12_n_0 ),
        .I3(\dig4[3]_i_7_n_0 ),
        .I4(\dig4[3]_i_5_n_0 ),
        .I5(\dig3[3]_i_5_n_0 ),
        .O(\dig4[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hD54E4EEA544E4EA8)) 
    \dig4[3]_i_4 
       (.I0(\dig4[3]_i_8_n_0 ),
        .I1(\dig5[3]_i_2_n_0 ),
        .I2(\dig3[3]_i_12_n_0 ),
        .I3(\dig6[2]_i_2_n_0 ),
        .I4(\dig6[3]_i_2_n_0 ),
        .I5(\dig4[3]_i_5_n_0 ),
        .O(\dig4[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h4ED4EA5E4A54E84E)) 
    \dig4[3]_i_5 
       (.I0(\dig4[3]_i_9_n_0 ),
        .I1(\dig3[3]_i_12_n_0 ),
        .I2(\dig4[3]_i_10_n_0 ),
        .I3(\dig6[3]_i_2_n_0 ),
        .I4(\dig3[3]_i_8_n_0 ),
        .I5(\dig2[3]_i_8_n_0 ),
        .O(\dig4[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h1AE11EE778A71887)) 
    \dig4[3]_i_6 
       (.I0(\dig3[3]_i_12_n_0 ),
        .I1(\dig6[3]_i_2_n_0 ),
        .I2(\dig6[2]_i_4_n_0 ),
        .I3(\dig6[3]_i_6_n_0 ),
        .I4(\dig5[3]_i_5_n_0 ),
        .I5(\dig5[3]_i_6_n_0 ),
        .O(\dig4[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h4A44A9AA42AA4955)) 
    \dig4[3]_i_7 
       (.I0(\dig6[3]_i_2_n_0 ),
        .I1(\dig6[3]_i_6_n_0 ),
        .I2(\dig6[3]_i_4_n_0 ),
        .I3(\dig6[3]_i_3_n_0 ),
        .I4(\dig6[3]_i_9_n_0 ),
        .I5(\dig6[3]_i_5_n_0 ),
        .O(\dig4[3]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \dig4[3]_i_8 
       (.I0(\dig6[3]_i_6_n_0 ),
        .I1(\dig6[2]_i_4_n_0 ),
        .O(\dig4[3]_i_8_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dig4[3]_i_9 
       (.I0(\dig6[3]_i_8_n_0 ),
        .I1(\dig6[3]_i_6_n_0 ),
        .O(\dig4[3]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dig4_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\dig0[3]_i_2_n_0 ),
        .D(\dig4[0]_i_1_n_0 ),
        .Q(dig4[0]),
        .R(dig0));
  FDRE #(
    .INIT(1'b0)) 
    \dig4_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\dig0[3]_i_2_n_0 ),
        .D(\dig4[1]_i_1_n_0 ),
        .Q(dig4[1]),
        .R(dig0));
  FDRE #(
    .INIT(1'b0)) 
    \dig4_reg[2] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\dig0[3]_i_2_n_0 ),
        .D(\dig4[2]_i_1_n_0 ),
        .Q(dig4[2]),
        .R(dig0));
  FDRE #(
    .INIT(1'b0)) 
    \dig4_reg[3] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\dig0[3]_i_2_n_0 ),
        .D(\dig4[3]_i_1_n_0 ),
        .Q(dig4[3]),
        .R(dig0));
  LUT6 #(
    .INIT(64'h4ED5EA4E4E54A84E)) 
    \dig5[0]_i_1 
       (.I0(\dig4[3]_i_2_n_0 ),
        .I1(\dig4[3]_i_3_n_0 ),
        .I2(\dig3[3]_i_5_n_0 ),
        .I3(\dig4[3]_i_4_n_0 ),
        .I4(\dig4[3]_i_5_n_0 ),
        .I5(\dig3[3]_i_3_n_0 ),
        .O(\dig5[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA2955A065A9045A6)) 
    \dig5[1]_i_1 
       (.I0(\dig4[3]_i_3_n_0 ),
        .I1(\dig5[3]_i_4_n_0 ),
        .I2(\dig6[2]_i_1_n_0 ),
        .I3(\dig5[3]_i_3_n_0 ),
        .I4(\dig5[3]_i_2_n_0 ),
        .I5(\dig4[3]_i_4_n_0 ),
        .O(\dig5[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h26C331861863CD8C)) 
    \dig5[2]_i_1 
       (.I0(\dig4[3]_i_3_n_0 ),
        .I1(\dig4[3]_i_4_n_0 ),
        .I2(\dig5[3]_i_2_n_0 ),
        .I3(\dig5[3]_i_3_n_0 ),
        .I4(\dig6[2]_i_1_n_0 ),
        .I5(\dig5[3]_i_4_n_0 ),
        .O(\dig5[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h101248D0328412C4)) 
    \dig5[3]_i_1 
       (.I0(\dig4[3]_i_4_n_0 ),
        .I1(\dig5[3]_i_2_n_0 ),
        .I2(\dig5[3]_i_3_n_0 ),
        .I3(\dig6[2]_i_1_n_0 ),
        .I4(\dig5[3]_i_4_n_0 ),
        .I5(\dig4[3]_i_3_n_0 ),
        .O(\dig5[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h256CB77E2448365E)) 
    \dig5[3]_i_2 
       (.I0(\dig6[2]_i_4_n_0 ),
        .I1(\dig5[3]_i_5_n_0 ),
        .I2(\dig6[3]_i_6_n_0 ),
        .I3(\dig6[3]_i_2_n_0 ),
        .I4(\dig5[3]_i_6_n_0 ),
        .I5(\dig3[3]_i_12_n_0 ),
        .O(\dig5[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF3FFF7F)) 
    \dig5[3]_i_3 
       (.I0(\dig6[3]_i_2_n_0 ),
        .I1(\dig6[3]_i_3_n_0 ),
        .I2(\dig6[3]_i_4_n_0 ),
        .I3(\dig6[3]_i_5_n_0 ),
        .I4(\dig6[3]_i_6_n_0 ),
        .I5(\dig6[2]_i_2_n_0 ),
        .O(\dig5[3]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h02C2)) 
    \dig5[3]_i_4 
       (.I0(\dig6[2]_i_2_n_0 ),
        .I1(\dig6[2]_i_3_n_0 ),
        .I2(\dig6[2]_i_4_n_0 ),
        .I3(\dig6[2]_i_5_n_0 ),
        .O(\dig5[3]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFA88)) 
    \dig5[3]_i_5 
       (.I0(\dig6[3]_i_3_n_0 ),
        .I1(\dig6[3]_i_4_n_0 ),
        .I2(\dig6[3]_i_5_n_0 ),
        .I3(\dig6[3]_i_9_n_0 ),
        .O(\dig5[3]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h30E53525)) 
    \dig5[3]_i_6 
       (.I0(\dig6[3]_i_6_n_0 ),
        .I1(\dig6[3]_i_4_n_0 ),
        .I2(\dig6[3]_i_3_n_0 ),
        .I3(\dig6[3]_i_9_n_0 ),
        .I4(\dig6[3]_i_5_n_0 ),
        .O(\dig5[3]_i_6_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dig5_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\dig0[3]_i_2_n_0 ),
        .D(\dig5[0]_i_1_n_0 ),
        .Q(dig5[0]),
        .R(dig0));
  FDRE #(
    .INIT(1'b0)) 
    \dig5_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\dig0[3]_i_2_n_0 ),
        .D(\dig5[1]_i_1_n_0 ),
        .Q(dig5[1]),
        .R(dig0));
  FDRE #(
    .INIT(1'b0)) 
    \dig5_reg[2] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\dig0[3]_i_2_n_0 ),
        .D(\dig5[2]_i_1_n_0 ),
        .Q(dig5[2]),
        .R(dig0));
  FDRE #(
    .INIT(1'b0)) 
    \dig5_reg[3] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\dig0[3]_i_2_n_0 ),
        .D(\dig5[3]_i_1_n_0 ),
        .Q(dig5[3]),
        .R(dig0));
  LUT6 #(
    .INIT(64'h729F7E1C701B6C18)) 
    \dig6[0]_i_1 
       (.I0(\dig4[3]_i_4_n_0 ),
        .I1(\dig5[3]_i_2_n_0 ),
        .I2(\dig5[3]_i_3_n_0 ),
        .I3(\dig6[2]_i_1_n_0 ),
        .I4(\dig5[3]_i_4_n_0 ),
        .I5(\dig4[3]_i_3_n_0 ),
        .O(\dig6[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0E0670060C046004)) 
    \dig6[1]_i_1 
       (.I0(\dig5[3]_i_2_n_0 ),
        .I1(\dig6[2]_i_2_n_0 ),
        .I2(\dig6[2]_i_3_n_0 ),
        .I3(\dig6[2]_i_4_n_0 ),
        .I4(\dig6[2]_i_5_n_0 ),
        .I5(\dig4[3]_i_4_n_0 ),
        .O(\dig6[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0F0B800B)) 
    \dig6[2]_i_1 
       (.I0(\dig5[3]_i_2_n_0 ),
        .I1(\dig6[2]_i_2_n_0 ),
        .I2(\dig6[2]_i_3_n_0 ),
        .I3(\dig6[2]_i_4_n_0 ),
        .I4(\dig6[2]_i_5_n_0 ),
        .O(\dig6[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h26B626C626F6FECE)) 
    \dig6[2]_i_2 
       (.I0(\dig6[3]_i_5_n_0 ),
        .I1(\dig6[3]_i_9_n_0 ),
        .I2(\dig6[3]_i_3_n_0 ),
        .I3(\dig6[3]_i_4_n_0 ),
        .I4(\dig6[3]_i_6_n_0 ),
        .I5(\dig6[3]_i_2_n_0 ),
        .O(\dig6[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hE0EE0300E000E300)) 
    \dig6[2]_i_3 
       (.I0(\dig6[3]_i_2_n_0 ),
        .I1(\dig6[3]_i_6_n_0 ),
        .I2(\dig6[3]_i_4_n_0 ),
        .I3(\dig6[3]_i_3_n_0 ),
        .I4(\dig6[3]_i_9_n_0 ),
        .I5(\dig6[3]_i_5_n_0 ),
        .O(\dig6[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFCFD0)) 
    \dig6[2]_i_4 
       (.I0(\dig6[3]_i_6_n_0 ),
        .I1(\dig6[3]_i_4_n_0 ),
        .I2(\dig6[3]_i_3_n_0 ),
        .I3(\dig6[3]_i_9_n_0 ),
        .I4(\dig6[3]_i_5_n_0 ),
        .O(\dig6[2]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'h0D08)) 
    \dig6[2]_i_5 
       (.I0(\dig6[3]_i_3_n_0 ),
        .I1(\dig6[3]_i_4_n_0 ),
        .I2(\dig6[3]_i_5_n_0 ),
        .I3(\dig6[3]_i_9_n_0 ),
        .O(\dig6[2]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00C00080)) 
    \dig6[3]_i_1 
       (.I0(\dig6[3]_i_2_n_0 ),
        .I1(\dig6[3]_i_3_n_0 ),
        .I2(\dig6[3]_i_4_n_0 ),
        .I3(\dig6[3]_i_5_n_0 ),
        .I4(\dig6[3]_i_6_n_0 ),
        .O(\dig6[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7E9F701C7C1F6018)) 
    \dig6[3]_i_10 
       (.I0(\dig6[3]_i_19_n_0 ),
        .I1(\dig6[3]_i_22_n_0 ),
        .I2(\dig6[3]_i_23_n_0 ),
        .I3(\dig6[3]_i_14_n_0 ),
        .I4(\dig6[3]_i_11_n_0 ),
        .I5(\dig3[3]_i_19_n_0 ),
        .O(\dig6[3]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h2BACCB2F0B2CC82B)) 
    \dig6[3]_i_11 
       (.I0(\dig6[3]_i_24_n_0 ),
        .I1(\dig6[3]_i_13_n_0 ),
        .I2(\dig6[3]_i_25_n_0 ),
        .I3(\dig6[3]_i_26_n_0 ),
        .I4(\dig6[3]_i_22_n_0 ),
        .I5(\dig6[3]_i_19_n_0 ),
        .O(\dig6[3]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hFF00303A)) 
    \dig6[3]_i_12 
       (.I0(\dig6[3]_i_27_n_0 ),
        .I1(\dig6[3]_i_28_n_0 ),
        .I2(\dig6[3]_i_29_n_0 ),
        .I3(\dig6[3]_i_16_n_0 ),
        .I4(\dig6[3]_i_15_n_0 ),
        .O(\dig6[3]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hCFCC3211CFCC2011)) 
    \dig6[3]_i_13 
       (.I0(\dig6[3]_i_27_n_0 ),
        .I1(\dig6[3]_i_15_n_0 ),
        .I2(\dig6[3]_i_28_n_0 ),
        .I3(\dig6[3]_i_29_n_0 ),
        .I4(\dig6[3]_i_16_n_0 ),
        .I5(\dig6[3]_i_26_n_0 ),
        .O(\dig6[3]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h7550F5557550F550)) 
    \dig6[3]_i_14 
       (.I0(\dig6[3]_i_30_n_0 ),
        .I1(\dig6[3]_i_31_n_0 ),
        .I2(\dig6[3]_i_13_n_0 ),
        .I3(\dig6[3]_i_25_n_0 ),
        .I4(\dig6[3]_i_26_n_0 ),
        .I5(\dig6[3]_i_22_n_0 ),
        .O(\dig6[3]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h00F0C0CC00F5D0CC)) 
    \dig6[3]_i_15 
       (.I0(\dig6[3]_i_32_n_0 ),
        .I1(\dig6[3]_i_33_n_0 ),
        .I2(\dig6[3]_i_16_n_0 ),
        .I3(\dig6[3]_i_34_n_0 ),
        .I4(\dig6[3]_i_35_n_0 ),
        .I5(\dig6[3]_i_36_n_0 ),
        .O(\dig6[3]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'hC0C0C080)) 
    \dig6[3]_i_16 
       (.I0(dig02_n_76),
        .I1(dig02_n_73),
        .I2(dig02_n_74),
        .I3(dig02_n_75),
        .I4(dig02_n_77),
        .O(\dig6[3]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'h6E6E6E6E36243636)) 
    \dig6[3]_i_17 
       (.I0(\dig6[3]_i_11_n_0 ),
        .I1(\dig6[3]_i_13_n_0 ),
        .I2(\dig6[3]_i_14_n_0 ),
        .I3(\dig6[3]_i_15_n_0 ),
        .I4(\dig6[3]_i_16_n_0 ),
        .I5(\dig6[3]_i_12_n_0 ),
        .O(\dig6[3]_i_17_n_0 ));
  LUT5 #(
    .INIT(32'hBBBB5655)) 
    \dig6[3]_i_18 
       (.I0(\dig6[3]_i_14_n_0 ),
        .I1(\dig6[3]_i_13_n_0 ),
        .I2(\dig6[3]_i_15_n_0 ),
        .I3(\dig6[3]_i_16_n_0 ),
        .I4(\dig6[3]_i_12_n_0 ),
        .O(\dig6[3]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'h4ED5EA4E4E54A84E)) 
    \dig6[3]_i_19 
       (.I0(\dig6[3]_i_37_n_0 ),
        .I1(\dig6[3]_i_22_n_0 ),
        .I2(\dig3[3]_i_24_n_0 ),
        .I3(\dig6[3]_i_26_n_0 ),
        .I4(\dig6[3]_i_38_n_0 ),
        .I5(\dig2[3]_i_24_n_0 ),
        .O(\dig6[3]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h4ED5EA4E4E54A84E)) 
    \dig6[3]_i_2 
       (.I0(\dig6[3]_i_7_n_0 ),
        .I1(\dig6[3]_i_6_n_0 ),
        .I2(\dig6[3]_i_8_n_0 ),
        .I3(\dig6[3]_i_9_n_0 ),
        .I4(\dig6[3]_i_10_n_0 ),
        .I5(\dig4[3]_i_10_n_0 ),
        .O(\dig6[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h9AAA5AAA55585558)) 
    \dig6[3]_i_20 
       (.I0(\dig6[3]_i_22_n_0 ),
        .I1(\dig6[3]_i_26_n_0 ),
        .I2(\dig6[3]_i_25_n_0 ),
        .I3(\dig6[3]_i_13_n_0 ),
        .I4(\dig6[3]_i_31_n_0 ),
        .I5(\dig6[3]_i_30_n_0 ),
        .O(\dig6[3]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h78871EE17E851EE1)) 
    \dig6[3]_i_21 
       (.I0(\dig6[3]_i_19_n_0 ),
        .I1(\dig6[3]_i_22_n_0 ),
        .I2(\dig6[3]_i_13_n_0 ),
        .I3(\dig6[3]_i_26_n_0 ),
        .I4(\dig6[3]_i_24_n_0 ),
        .I5(\dig6[3]_i_25_n_0 ),
        .O(\dig6[3]_i_21_n_0 ));
  LUT6 #(
    .INIT(64'h1C7DCF710C71C741)) 
    \dig6[3]_i_22 
       (.I0(\dig6[3]_i_39_n_0 ),
        .I1(\dig6[3]_i_27_n_0 ),
        .I2(\dig6[3]_i_40_n_0 ),
        .I3(\dig6[3]_i_41_n_0 ),
        .I4(\dig6[3]_i_38_n_0 ),
        .I5(\dig3[3]_i_24_n_0 ),
        .O(\dig6[3]_i_22_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dig6[3]_i_23 
       (.I0(\dig6[3]_i_26_n_0 ),
        .I1(\dig6[3]_i_13_n_0 ),
        .O(\dig6[3]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h04FFF05FF03FFF0C)) 
    \dig6[3]_i_24 
       (.I0(\dig6[3]_i_31_n_0 ),
        .I1(\dig6[3]_i_42_n_0 ),
        .I2(\dig6[3]_i_12_n_0 ),
        .I3(\dig6[3]_i_43_n_0 ),
        .I4(\dig6[3]_i_27_n_0 ),
        .I5(\dig6[3]_i_26_n_0 ),
        .O(\dig6[3]_i_24_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \dig6[3]_i_25 
       (.I0(\dig6[3]_i_26_n_0 ),
        .I1(\dig6[3]_i_27_n_0 ),
        .I2(\dig6[3]_i_12_n_0 ),
        .O(\dig6[3]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'h4ED5EA4E4E54A84E)) 
    \dig6[3]_i_26 
       (.I0(\dig6[3]_i_44_n_0 ),
        .I1(\dig6[3]_i_27_n_0 ),
        .I2(\dig6[3]_i_40_n_0 ),
        .I3(\dig6[3]_i_29_n_0 ),
        .I4(\dig6[3]_i_36_n_0 ),
        .I5(\dig6[3]_i_38_n_0 ),
        .O(\dig6[3]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'h8D58E5EF0858E54E)) 
    \dig6[3]_i_27 
       (.I0(\dig6[3]_i_28_n_0 ),
        .I1(\dig6[3]_i_45_n_0 ),
        .I2(\dig6[3]_i_32_n_0 ),
        .I3(\dig6[3]_i_36_n_0 ),
        .I4(\dig6[3]_i_46_n_0 ),
        .I5(\dig6[3]_i_40_n_0 ),
        .O(\dig6[3]_i_27_n_0 ));
  LUT6 #(
    .INIT(64'h3FF00F3FC0055F7F)) 
    \dig6[3]_i_28 
       (.I0(\dig6[3]_i_32_n_0 ),
        .I1(dig02_n_76),
        .I2(dig02_n_74),
        .I3(dig02_n_75),
        .I4(dig02_n_73),
        .I5(\dig6[3]_i_35_n_0 ),
        .O(\dig6[3]_i_28_n_0 ));
  LUT6 #(
    .INIT(64'h8ADB86CF82CB848D)) 
    \dig6[3]_i_29 
       (.I0(\dig6[3]_i_35_n_0 ),
        .I1(\dig6[3]_i_34_n_0 ),
        .I2(\dig6[3]_i_16_n_0 ),
        .I3(\dig6[3]_i_33_n_0 ),
        .I4(\dig6[3]_i_32_n_0 ),
        .I5(\dig6[3]_i_36_n_0 ),
        .O(\dig6[3]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hB02CB02FB02CB02C)) 
    \dig6[3]_i_3 
       (.I0(\dig6[3]_i_11_n_0 ),
        .I1(\dig6[3]_i_12_n_0 ),
        .I2(\dig6[3]_i_13_n_0 ),
        .I3(\dig6[3]_i_14_n_0 ),
        .I4(\dig6[3]_i_15_n_0 ),
        .I5(\dig6[3]_i_16_n_0 ),
        .O(\dig6[3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h78771E11)) 
    \dig6[3]_i_30 
       (.I0(\dig6[3]_i_26_n_0 ),
        .I1(\dig6[3]_i_27_n_0 ),
        .I2(\dig6[3]_i_16_n_0 ),
        .I3(\dig6[3]_i_29_n_0 ),
        .I4(\dig6[3]_i_12_n_0 ),
        .O(\dig6[3]_i_30_n_0 ));
  LUT6 #(
    .INIT(64'hCC1711CCC00771C0)) 
    \dig6[3]_i_31 
       (.I0(\dig3[3]_i_24_n_0 ),
        .I1(\dig6[3]_i_38_n_0 ),
        .I2(\dig6[3]_i_41_n_0 ),
        .I3(\dig6[3]_i_40_n_0 ),
        .I4(\dig6[3]_i_27_n_0 ),
        .I5(\dig6[3]_i_39_n_0 ),
        .O(\dig6[3]_i_31_n_0 ));
  LUT6 #(
    .INIT(64'h5A9E795A581A6158)) 
    \dig6[3]_i_32 
       (.I0(dig02_n_76),
        .I1(dig02_n_73),
        .I2(dig02_n_74),
        .I3(dig02_n_75),
        .I4(dig02_n_77),
        .I5(dig02_n_78),
        .O(\dig6[3]_i_32_n_0 ));
  LUT3 #(
    .INIT(8'h57)) 
    \dig6[3]_i_33 
       (.I0(dig02_n_73),
        .I1(dig02_n_74),
        .I2(dig02_n_75),
        .O(\dig6[3]_i_33_n_0 ));
  LUT4 #(
    .INIT(16'hB02C)) 
    \dig6[3]_i_34 
       (.I0(dig02_n_76),
        .I1(dig02_n_73),
        .I2(dig02_n_74),
        .I3(dig02_n_75),
        .O(\dig6[3]_i_34_n_0 ));
  LUT5 #(
    .INIT(32'h63DC429C)) 
    \dig6[3]_i_35 
       (.I0(dig02_n_76),
        .I1(dig02_n_73),
        .I2(dig02_n_74),
        .I3(dig02_n_75),
        .I4(dig02_n_77),
        .O(\dig6[3]_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h4DD4D55D4554D44D)) 
    \dig6[3]_i_36 
       (.I0(\dig6[3]_i_47_n_0 ),
        .I1(\dig6[3]_i_32_n_0 ),
        .I2(dig02_n_77),
        .I3(\dig6[3]_i_35_n_0 ),
        .I4(dig02_n_78),
        .I5(dig02_n_79),
        .O(\dig6[3]_i_36_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dig6[3]_i_37 
       (.I0(\dig6[3]_i_40_n_0 ),
        .I1(\dig6[3]_i_27_n_0 ),
        .O(\dig6[3]_i_37_n_0 ));
  LUT6 #(
    .INIT(64'h4ED4EA5E4A54E84E)) 
    \dig6[3]_i_38 
       (.I0(\dig6[3]_i_48_n_0 ),
        .I1(\dig6[3]_i_40_n_0 ),
        .I2(dig02_n_79),
        .I3(\dig6[3]_i_36_n_0 ),
        .I4(dig02_n_80),
        .I5(dig02_n_81),
        .O(\dig6[3]_i_38_n_0 ));
  LUT6 #(
    .INIT(64'hF00F78C17CE10FF0)) 
    \dig6[3]_i_39 
       (.I0(\dig6[3]_i_46_n_0 ),
        .I1(\dig6[3]_i_45_n_0 ),
        .I2(\dig6[3]_i_32_n_0 ),
        .I3(\dig6[3]_i_28_n_0 ),
        .I4(\dig6[3]_i_36_n_0 ),
        .I5(\dig6[3]_i_40_n_0 ),
        .O(\dig6[3]_i_39_n_0 ));
  LUT5 #(
    .INIT(32'hEEEE0300)) 
    \dig6[3]_i_4 
       (.I0(\dig6[3]_i_14_n_0 ),
        .I1(\dig6[3]_i_13_n_0 ),
        .I2(\dig6[3]_i_15_n_0 ),
        .I3(\dig6[3]_i_16_n_0 ),
        .I4(\dig6[3]_i_12_n_0 ),
        .O(\dig6[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h717CCDF1704CC171)) 
    \dig6[3]_i_40 
       (.I0(\dig6[3]_i_47_n_0 ),
        .I1(\dig6[3]_i_32_n_0 ),
        .I2(\dig6[3]_i_49_n_0 ),
        .I3(dig02_n_79),
        .I4(dig02_n_78),
        .I5(dig02_n_80),
        .O(\dig6[3]_i_40_n_0 ));
  LUT6 #(
    .INIT(64'h5525AA44A499A2A5)) 
    \dig6[3]_i_41 
       (.I0(\dig6[3]_i_36_n_0 ),
        .I1(\dig6[3]_i_32_n_0 ),
        .I2(\dig6[3]_i_33_n_0 ),
        .I3(\dig6[3]_i_16_n_0 ),
        .I4(\dig6[3]_i_34_n_0 ),
        .I5(\dig6[3]_i_35_n_0 ),
        .O(\dig6[3]_i_41_n_0 ));
  LUT6 #(
    .INIT(64'h007C003C00F80008)) 
    \dig6[3]_i_42 
       (.I0(\dig6[3]_i_36_n_0 ),
        .I1(\dig6[3]_i_35_n_0 ),
        .I2(\dig6[3]_i_34_n_0 ),
        .I3(\dig6[3]_i_16_n_0 ),
        .I4(\dig6[3]_i_33_n_0 ),
        .I5(\dig6[3]_i_32_n_0 ),
        .O(\dig6[3]_i_42_n_0 ));
  LUT6 #(
    .INIT(64'h0A0AAAAA0A2AAAAA)) 
    \dig6[3]_i_43 
       (.I0(\dig6[3]_i_29_n_0 ),
        .I1(dig02_n_77),
        .I2(dig02_n_73),
        .I3(dig02_n_75),
        .I4(dig02_n_74),
        .I5(dig02_n_76),
        .O(\dig6[3]_i_43_n_0 ));
  LUT6 #(
    .INIT(64'h48B38BB3A6486448)) 
    \dig6[3]_i_44 
       (.I0(\dig6[3]_i_35_n_0 ),
        .I1(dig02_n_73),
        .I2(dig02_n_75),
        .I3(dig02_n_74),
        .I4(dig02_n_76),
        .I5(\dig6[3]_i_32_n_0 ),
        .O(\dig6[3]_i_44_n_0 ));
  LUT6 #(
    .INIT(64'hFC800FFCF8301FF8)) 
    \dig6[3]_i_45 
       (.I0(dig02_n_78),
        .I1(dig02_n_76),
        .I2(dig02_n_74),
        .I3(dig02_n_75),
        .I4(dig02_n_73),
        .I5(dig02_n_77),
        .O(\dig6[3]_i_45_n_0 ));
  LUT6 #(
    .INIT(64'h037E08F307CC10F7)) 
    \dig6[3]_i_46 
       (.I0(dig02_n_78),
        .I1(dig02_n_76),
        .I2(dig02_n_74),
        .I3(dig02_n_75),
        .I4(dig02_n_73),
        .I5(dig02_n_77),
        .O(\dig6[3]_i_46_n_0 ));
  LUT6 #(
    .INIT(64'h6318318C39CE9CE7)) 
    \dig6[3]_i_47 
       (.I0(dig02_n_75),
        .I1(dig02_n_74),
        .I2(dig02_n_73),
        .I3(dig02_n_76),
        .I4(dig02_n_77),
        .I5(dig02_n_78),
        .O(\dig6[3]_i_47_n_0 ));
  LUT6 #(
    .INIT(64'hA2459A2459A2459A)) 
    \dig6[3]_i_48 
       (.I0(dig02_n_78),
        .I1(dig02_n_77),
        .I2(dig02_n_75),
        .I3(dig02_n_74),
        .I4(dig02_n_73),
        .I5(dig02_n_76),
        .O(\dig6[3]_i_48_n_0 ));
  LUT6 #(
    .INIT(64'h695AA6A59AA6695A)) 
    \dig6[3]_i_49 
       (.I0(dig02_n_78),
        .I1(dig02_n_76),
        .I2(dig02_n_73),
        .I3(dig02_n_74),
        .I4(dig02_n_75),
        .I5(dig02_n_77),
        .O(\dig6[3]_i_49_n_0 ));
  LUT5 #(
    .INIT(32'h54540515)) 
    \dig6[3]_i_5 
       (.I0(\dig6[3]_i_4_n_0 ),
        .I1(\dig6[3]_i_14_n_0 ),
        .I2(\dig6[3]_i_13_n_0 ),
        .I3(\dig6[3]_i_11_n_0 ),
        .I4(\dig6[3]_i_12_n_0 ),
        .O(\dig6[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hBE2CB2CFB20C82CB)) 
    \dig6[3]_i_6 
       (.I0(\dig6[3]_i_17_n_0 ),
        .I1(\dig6[3]_i_3_n_0 ),
        .I2(\dig6[3]_i_11_n_0 ),
        .I3(\dig6[3]_i_18_n_0 ),
        .I4(\dig6[3]_i_10_n_0 ),
        .I5(\dig6[3]_i_8_n_0 ),
        .O(\dig6[3]_i_6_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \dig6[3]_i_7 
       (.I0(\dig6[3]_i_11_n_0 ),
        .I1(\dig6[3]_i_3_n_0 ),
        .O(\dig6[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h572BCE6746238E45)) 
    \dig6[3]_i_8 
       (.I0(\dig6[3]_i_19_n_0 ),
        .I1(\dig6[3]_i_20_n_0 ),
        .I2(\dig6[3]_i_21_n_0 ),
        .I3(\dig6[3]_i_11_n_0 ),
        .I4(\dig3[3]_i_19_n_0 ),
        .I5(\dig3[3]_i_14_n_0 ),
        .O(\dig6[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h50FA2F5C50A00A5C)) 
    \dig6[3]_i_9 
       (.I0(\dig6[3]_i_11_n_0 ),
        .I1(\dig6[3]_i_12_n_0 ),
        .I2(\dig6[3]_i_13_n_0 ),
        .I3(\dig6[3]_i_14_n_0 ),
        .I4(\dig6[3]_i_4_n_0 ),
        .I5(\dig6[3]_i_10_n_0 ),
        .O(\dig6[3]_i_9_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \dig6_reg[0] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\dig0[3]_i_2_n_0 ),
        .D(\dig6[0]_i_1_n_0 ),
        .Q(dig6[0]),
        .S(dig0));
  FDRE #(
    .INIT(1'b0)) 
    \dig6_reg[1] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\dig0[3]_i_2_n_0 ),
        .D(\dig6[1]_i_1_n_0 ),
        .Q(dig6[1]),
        .R(dig0));
  FDRE #(
    .INIT(1'b0)) 
    \dig6_reg[2] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\dig0[3]_i_2_n_0 ),
        .D(\dig6[2]_i_1_n_0 ),
        .Q(dig6[2]),
        .R(dig0));
  FDRE #(
    .INIT(1'b0)) 
    \dig6_reg[3] 
       (.C(CLK100MHZ_IBUF_BUFG),
        .CE(\dig0[3]_i_2_n_0 ),
        .D(\dig6[3]_i_1_n_0 ),
        .Q(dig6[3]),
        .R(dig0));
  distortion distort
       (.ready(ready),
        .sample_in(data[15:5]),
        .sample_out(d_data));
  OBUF dp_OBUF_inst
       (.I(dp_OBUF),
        .O(dp));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hFF1F)) 
    \next_state[0]_i_1 
       (.I0(next_state[1]),
        .I1(next_state[2]),
        .I2(next_state[0]),
        .I3(next_state[3]),
        .O(\next_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'hFF5B)) 
    \next_state[1]_i_1 
       (.I0(next_state[1]),
        .I1(next_state[2]),
        .I2(next_state[0]),
        .I3(next_state[3]),
        .O(\next_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h1450)) 
    \next_state[2]_i_1 
       (.I0(next_state[3]),
        .I1(next_state[0]),
        .I2(next_state[2]),
        .I3(next_state[1]),
        .O(\next_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    \next_state[3]_i_1 
       (.I0(next_state[3]),
        .I1(next_state[0]),
        .I2(next_state[2]),
        .I3(next_state[1]),
        .O(\next_state[3]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \next_state_reg[0] 
       (.C(ready),
        .CE(1'b1),
        .D(\next_state[0]_i_1_n_0 ),
        .Q(next_state[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \next_state_reg[1] 
       (.C(ready),
        .CE(1'b1),
        .D(\next_state[1]_i_1_n_0 ),
        .Q(next_state[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \next_state_reg[2] 
       (.C(ready),
        .CE(1'b1),
        .D(\next_state[2]_i_1_n_0 ),
        .Q(next_state[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \next_state_reg[3] 
       (.C(ready),
        .CE(1'b1),
        .D(\next_state[3]_i_1_n_0 ),
        .Q(next_state[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p10_reg[0] 
       (.C(ready),
        .CE(\p9_reg[10]_srl9_i_1_n_0 ),
        .D(\p9_reg[0]_srl9_n_0 ),
        .Q(p10[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p10_reg[10] 
       (.C(ready),
        .CE(\p9_reg[10]_srl9_i_1_n_0 ),
        .D(\p9_reg[10]_srl9_n_0 ),
        .Q(p10[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p10_reg[1] 
       (.C(ready),
        .CE(\p9_reg[10]_srl9_i_1_n_0 ),
        .D(\p9_reg[1]_srl9_n_0 ),
        .Q(p10[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p10_reg[2] 
       (.C(ready),
        .CE(\p9_reg[10]_srl9_i_1_n_0 ),
        .D(\p9_reg[2]_srl9_n_0 ),
        .Q(p10[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p10_reg[3] 
       (.C(ready),
        .CE(\p9_reg[10]_srl9_i_1_n_0 ),
        .D(\p9_reg[3]_srl9_n_0 ),
        .Q(p10[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p10_reg[4] 
       (.C(ready),
        .CE(\p9_reg[10]_srl9_i_1_n_0 ),
        .D(\p9_reg[4]_srl9_n_0 ),
        .Q(p10[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p10_reg[5] 
       (.C(ready),
        .CE(\p9_reg[10]_srl9_i_1_n_0 ),
        .D(\p9_reg[5]_srl9_n_0 ),
        .Q(p10[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p10_reg[6] 
       (.C(ready),
        .CE(\p9_reg[10]_srl9_i_1_n_0 ),
        .D(\p9_reg[6]_srl9_n_0 ),
        .Q(p10[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p10_reg[7] 
       (.C(ready),
        .CE(\p9_reg[10]_srl9_i_1_n_0 ),
        .D(\p9_reg[7]_srl9_n_0 ),
        .Q(p10[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p10_reg[8] 
       (.C(ready),
        .CE(\p9_reg[10]_srl9_i_1_n_0 ),
        .D(\p9_reg[8]_srl9_n_0 ),
        .Q(p10[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \p10_reg[9] 
       (.C(ready),
        .CE(\p9_reg[10]_srl9_i_1_n_0 ),
        .D(\p9_reg[9]_srl9_n_0 ),
        .Q(p10[9]),
        .R(1'b0));
  (* srl_bus_name = "\p9_reg " *) 
  (* srl_name = "\p9_reg[0]_srl9 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \p9_reg[0]_srl9 
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b1),
        .CE(\p9_reg[10]_srl9_i_1_n_0 ),
        .CLK(ready),
        .D(\audio_reg_reg_n_0_[0] ),
        .Q(\p9_reg[0]_srl9_n_0 ));
  (* srl_bus_name = "\p9_reg " *) 
  (* srl_name = "\p9_reg[10]_srl9 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \p9_reg[10]_srl9 
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b1),
        .CE(\p9_reg[10]_srl9_i_1_n_0 ),
        .CLK(ready),
        .D(\audio_reg_reg_n_0_[10] ),
        .Q(\p9_reg[10]_srl9_n_0 ));
  LUT4 #(
    .INIT(16'h0400)) 
    \p9_reg[10]_srl9_i_1 
       (.I0(next_state[2]),
        .I1(next_state[1]),
        .I2(next_state[3]),
        .I3(next_state[0]),
        .O(\p9_reg[10]_srl9_i_1_n_0 ));
  (* srl_bus_name = "\p9_reg " *) 
  (* srl_name = "\p9_reg[1]_srl9 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \p9_reg[1]_srl9 
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b1),
        .CE(\p9_reg[10]_srl9_i_1_n_0 ),
        .CLK(ready),
        .D(\audio_reg_reg_n_0_[1] ),
        .Q(\p9_reg[1]_srl9_n_0 ));
  (* srl_bus_name = "\p9_reg " *) 
  (* srl_name = "\p9_reg[2]_srl9 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \p9_reg[2]_srl9 
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b1),
        .CE(\p9_reg[10]_srl9_i_1_n_0 ),
        .CLK(ready),
        .D(\audio_reg_reg_n_0_[2] ),
        .Q(\p9_reg[2]_srl9_n_0 ));
  (* srl_bus_name = "\p9_reg " *) 
  (* srl_name = "\p9_reg[3]_srl9 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \p9_reg[3]_srl9 
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b1),
        .CE(\p9_reg[10]_srl9_i_1_n_0 ),
        .CLK(ready),
        .D(\audio_reg_reg_n_0_[3] ),
        .Q(\p9_reg[3]_srl9_n_0 ));
  (* srl_bus_name = "\p9_reg " *) 
  (* srl_name = "\p9_reg[4]_srl9 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \p9_reg[4]_srl9 
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b1),
        .CE(\p9_reg[10]_srl9_i_1_n_0 ),
        .CLK(ready),
        .D(\audio_reg_reg_n_0_[4] ),
        .Q(\p9_reg[4]_srl9_n_0 ));
  (* srl_bus_name = "\p9_reg " *) 
  (* srl_name = "\p9_reg[5]_srl9 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \p9_reg[5]_srl9 
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b1),
        .CE(\p9_reg[10]_srl9_i_1_n_0 ),
        .CLK(ready),
        .D(\audio_reg_reg_n_0_[5] ),
        .Q(\p9_reg[5]_srl9_n_0 ));
  (* srl_bus_name = "\p9_reg " *) 
  (* srl_name = "\p9_reg[6]_srl9 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \p9_reg[6]_srl9 
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b1),
        .CE(\p9_reg[10]_srl9_i_1_n_0 ),
        .CLK(ready),
        .D(\audio_reg_reg_n_0_[6] ),
        .Q(\p9_reg[6]_srl9_n_0 ));
  (* srl_bus_name = "\p9_reg " *) 
  (* srl_name = "\p9_reg[7]_srl9 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \p9_reg[7]_srl9 
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b1),
        .CE(\p9_reg[10]_srl9_i_1_n_0 ),
        .CLK(ready),
        .D(\audio_reg_reg_n_0_[7] ),
        .Q(\p9_reg[7]_srl9_n_0 ));
  (* srl_bus_name = "\p9_reg " *) 
  (* srl_name = "\p9_reg[8]_srl9 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \p9_reg[8]_srl9 
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b1),
        .CE(\p9_reg[10]_srl9_i_1_n_0 ),
        .CLK(ready),
        .D(\audio_reg_reg_n_0_[8] ),
        .Q(\p9_reg[8]_srl9_n_0 ));
  (* srl_bus_name = "\p9_reg " *) 
  (* srl_name = "\p9_reg[9]_srl9 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \p9_reg[9]_srl9 
       (.A0(1'b0),
        .A1(1'b0),
        .A2(1'b0),
        .A3(1'b1),
        .CE(\p9_reg[10]_srl9_i_1_n_0 ),
        .CLK(ready),
        .D(\audio_reg_reg_n_0_[9] ),
        .Q(\p9_reg[9]_srl9_n_0 ));
  pwm_module pwm
       (.PWM_in(PWM),
        .PWM_out(AUD_PWM_OBUF),
        .clk(CLK100MHZ_IBUF_BUFG));
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
  DigitToSeg segment1
       (.an({an_OBUF[7],dp_OBUF,an_OBUF[5:0]}),
        .dp(NLW_segment1_dp_UNCONNECTED),
        .in1({\dig0_reg_n_0_[3] ,\dig0_reg_n_0_[2] ,\dig0_reg_n_0_[1] ,\dig0_reg_n_0_[0] }),
        .in2(dig1),
        .in3(dig2),
        .in4(dig3),
        .in5(dig4),
        .in6(dig5),
        .in7(dig6),
        .in8(NLW_segment1_in8_UNCONNECTED[3:0]),
        .mclk(CLK100MHZ_IBUF_BUFG),
        .seg(seg_OBUF));
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
  IBUF \sw_IBUF[4]_inst 
       (.I(sw[4]),
        .O(sw_IBUF[4]));
  IBUF \sw_IBUF[5]_inst 
       (.I(sw[5]),
        .O(sw_IBUF[5]));
  IBUF vauxn10_IBUF_inst
       (.I(vauxn10),
        .O(vauxn10_IBUF));
  IBUF vauxn11_IBUF_inst
       (.I(vauxn11),
        .O(vauxn11_IBUF));
  IBUF vauxn2_IBUF_inst
       (.I(vauxn2),
        .O(vauxn2_IBUF));
  IBUF vauxn3_IBUF_inst
       (.I(vauxn3),
        .O(vauxn3_IBUF));
  IBUF vauxp10_IBUF_inst
       (.I(vauxp10),
        .O(vauxp10_IBUF));
  IBUF vauxp11_IBUF_inst
       (.I(vauxp11),
        .O(vauxp11_IBUF));
  IBUF vauxp2_IBUF_inst
       (.I(vauxp2),
        .O(vauxp2_IBUF));
  IBUF vauxp3_IBUF_inst
       (.I(vauxp3),
        .O(vauxp3_IBUF));
  IBUF vn_in_IBUF_inst
       (.I(vn_in),
        .O(vn_in_IBUF));
  IBUF vp_in_IBUF_inst
       (.I(vp_in),
        .O(vp_in_IBUF));
endmodule

module chorus
   (clk,
    current_sample,
    previous_sample,
    chorus_out);
  input clk;
  input [10:0]current_sample;
  input [10:0]previous_sample;
  output [10:0]chorus_out;

  wire [10:0]chorus_out;
  wire \chorus_out[2]_i_2_n_0 ;
  wire \chorus_out[2]_i_3_n_0 ;
  wire \chorus_out[2]_i_4_n_0 ;
  wire \chorus_out[2]_i_5_n_0 ;
  wire \chorus_out[6]_i_2_n_0 ;
  wire \chorus_out[6]_i_3_n_0 ;
  wire \chorus_out[6]_i_4_n_0 ;
  wire \chorus_out[6]_i_5_n_0 ;
  wire \chorus_out[9]_i_2_n_0 ;
  wire \chorus_out[9]_i_3_n_0 ;
  wire \chorus_out[9]_i_4_n_0 ;
  wire \chorus_out_reg[2]_i_1_n_0 ;
  wire \chorus_out_reg[2]_i_1_n_4 ;
  wire \chorus_out_reg[2]_i_1_n_5 ;
  wire \chorus_out_reg[2]_i_1_n_6 ;
  wire \chorus_out_reg[6]_i_1_n_0 ;
  wire \chorus_out_reg[6]_i_1_n_4 ;
  wire \chorus_out_reg[6]_i_1_n_5 ;
  wire \chorus_out_reg[6]_i_1_n_6 ;
  wire \chorus_out_reg[6]_i_1_n_7 ;
  wire \chorus_out_reg[9]_i_1_n_5 ;
  wire \chorus_out_reg[9]_i_1_n_6 ;
  wire \chorus_out_reg[9]_i_1_n_7 ;
  wire clk;
  wire [10:0]current_sample;
  wire [10:0]previous_sample;
  wire [2:0]\NLW_chorus_out_reg[2]_i_1_CO_UNCONNECTED ;
  wire [0:0]\NLW_chorus_out_reg[2]_i_1_O_UNCONNECTED ;
  wire [2:0]\NLW_chorus_out_reg[6]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_chorus_out_reg[9]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_chorus_out_reg[9]_i_1_O_UNCONNECTED ;

  LUT2 #(
    .INIT(4'h6)) 
    \chorus_out[2]_i_2 
       (.I0(current_sample[3]),
        .I1(previous_sample[3]),
        .O(\chorus_out[2]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \chorus_out[2]_i_3 
       (.I0(current_sample[2]),
        .I1(previous_sample[2]),
        .O(\chorus_out[2]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \chorus_out[2]_i_4 
       (.I0(current_sample[1]),
        .I1(previous_sample[1]),
        .O(\chorus_out[2]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \chorus_out[2]_i_5 
       (.I0(current_sample[0]),
        .I1(previous_sample[0]),
        .O(\chorus_out[2]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \chorus_out[6]_i_2 
       (.I0(current_sample[7]),
        .I1(previous_sample[7]),
        .O(\chorus_out[6]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \chorus_out[6]_i_3 
       (.I0(current_sample[6]),
        .I1(previous_sample[6]),
        .O(\chorus_out[6]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \chorus_out[6]_i_4 
       (.I0(current_sample[5]),
        .I1(previous_sample[5]),
        .O(\chorus_out[6]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \chorus_out[6]_i_5 
       (.I0(current_sample[4]),
        .I1(previous_sample[4]),
        .O(\chorus_out[6]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \chorus_out[9]_i_2 
       (.I0(current_sample[10]),
        .I1(previous_sample[10]),
        .O(\chorus_out[9]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \chorus_out[9]_i_3 
       (.I0(current_sample[9]),
        .I1(previous_sample[9]),
        .O(\chorus_out[9]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \chorus_out[9]_i_4 
       (.I0(current_sample[8]),
        .I1(previous_sample[8]),
        .O(\chorus_out[9]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \chorus_out_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\chorus_out_reg[2]_i_1_n_6 ),
        .Q(chorus_out[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \chorus_out_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\chorus_out_reg[2]_i_1_n_5 ),
        .Q(chorus_out[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \chorus_out_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\chorus_out_reg[2]_i_1_n_4 ),
        .Q(chorus_out[2]),
        .R(1'b0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \chorus_out_reg[2]_i_1 
       (.CI(1'b0),
        .CO({\chorus_out_reg[2]_i_1_n_0 ,\NLW_chorus_out_reg[2]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(current_sample[3:0]),
        .O({\chorus_out_reg[2]_i_1_n_4 ,\chorus_out_reg[2]_i_1_n_5 ,\chorus_out_reg[2]_i_1_n_6 ,\NLW_chorus_out_reg[2]_i_1_O_UNCONNECTED [0]}),
        .S({\chorus_out[2]_i_2_n_0 ,\chorus_out[2]_i_3_n_0 ,\chorus_out[2]_i_4_n_0 ,\chorus_out[2]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \chorus_out_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\chorus_out_reg[6]_i_1_n_7 ),
        .Q(chorus_out[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \chorus_out_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\chorus_out_reg[6]_i_1_n_6 ),
        .Q(chorus_out[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \chorus_out_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\chorus_out_reg[6]_i_1_n_5 ),
        .Q(chorus_out[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \chorus_out_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\chorus_out_reg[6]_i_1_n_4 ),
        .Q(chorus_out[6]),
        .R(1'b0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \chorus_out_reg[6]_i_1 
       (.CI(\chorus_out_reg[2]_i_1_n_0 ),
        .CO({\chorus_out_reg[6]_i_1_n_0 ,\NLW_chorus_out_reg[6]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI(current_sample[7:4]),
        .O({\chorus_out_reg[6]_i_1_n_4 ,\chorus_out_reg[6]_i_1_n_5 ,\chorus_out_reg[6]_i_1_n_6 ,\chorus_out_reg[6]_i_1_n_7 }),
        .S({\chorus_out[6]_i_2_n_0 ,\chorus_out[6]_i_3_n_0 ,\chorus_out[6]_i_4_n_0 ,\chorus_out[6]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \chorus_out_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\chorus_out_reg[9]_i_1_n_7 ),
        .Q(chorus_out[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \chorus_out_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\chorus_out_reg[9]_i_1_n_6 ),
        .Q(chorus_out[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \chorus_out_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\chorus_out_reg[9]_i_1_n_5 ),
        .Q(chorus_out[9]),
        .R(1'b0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \chorus_out_reg[9]_i_1 
       (.CI(\chorus_out_reg[6]_i_1_n_0 ),
        .CO(\NLW_chorus_out_reg[9]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,current_sample[9:8]}),
        .O({\NLW_chorus_out_reg[9]_i_1_O_UNCONNECTED [3],\chorus_out_reg[9]_i_1_n_5 ,\chorus_out_reg[9]_i_1_n_6 ,\chorus_out_reg[9]_i_1_n_7 }),
        .S({1'b0,\chorus_out[9]_i_2_n_0 ,\chorus_out[9]_i_3_n_0 ,\chorus_out[9]_i_4_n_0 }));
endmodule

module counter3bit
   (clk,
    rst,
    Q);
  input clk;
  input rst;
  output [2:0]Q;

  wire [2:0]Q;
  wire \Q[0]_i_1_n_0 ;
  wire \Q[1]_i_1_n_0 ;
  wire \Q[2]_i_1_n_0 ;
  wire clk;

  LUT1 #(
    .INIT(2'h1)) 
    \Q[0]_i_1 
       (.I0(Q[0]),
        .O(\Q[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \Q[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(\Q[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \Q[2]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .O(\Q[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\Q[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\Q[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \Q_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\Q[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(1'b0));
endmodule

module decoder_3_8
   (I,
    an,
    dp);
  input [2:0]I;
  output [7:0]an;
  output dp;

  wire [2:0]I;
  wire [7:0]an;

  LUT3 #(
    .INIT(8'hFE)) 
    \an[0]_INST_0 
       (.I0(I[0]),
        .I1(I[1]),
        .I2(I[2]),
        .O(an[0]));
  LUT3 #(
    .INIT(8'hEF)) 
    \an[1]_INST_0 
       (.I0(I[1]),
        .I1(I[2]),
        .I2(I[0]),
        .O(an[1]));
  LUT3 #(
    .INIT(8'hEF)) 
    \an[2]_INST_0 
       (.I0(I[0]),
        .I1(I[2]),
        .I2(I[1]),
        .O(an[2]));
  LUT3 #(
    .INIT(8'hBF)) 
    \an[3]_INST_0 
       (.I0(I[2]),
        .I1(I[1]),
        .I2(I[0]),
        .O(an[3]));
  LUT3 #(
    .INIT(8'hFB)) 
    \an[4]_INST_0 
       (.I0(I[0]),
        .I1(I[2]),
        .I2(I[1]),
        .O(an[4]));
  LUT3 #(
    .INIT(8'hDF)) 
    \an[5]_INST_0 
       (.I0(I[2]),
        .I1(I[1]),
        .I2(I[0]),
        .O(an[5]));
  LUT3 #(
    .INIT(8'hBF)) 
    \an[6]_INST_0 
       (.I0(I[0]),
        .I1(I[1]),
        .I2(I[2]),
        .O(an[6]));
  LUT3 #(
    .INIT(8'h7F)) 
    \an[7]_INST_0 
       (.I0(I[1]),
        .I1(I[2]),
        .I2(I[0]),
        .O(an[7]));
endmodule

module distortion
   (ready,
    sample_in,
    sample_out);
  input ready;
  input [10:0]sample_in;
  output [10:0]sample_out;

  wire ready;
  wire [10:0]sample_in;
  wire [10:0]sample_out;

  FDRE #(
    .INIT(1'b0)) 
    \sample_out_reg[0] 
       (.C(ready),
        .CE(1'b1),
        .D(sample_in[0]),
        .Q(sample_out[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_out_reg[10] 
       (.C(ready),
        .CE(1'b1),
        .D(sample_in[10]),
        .Q(sample_out[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_out_reg[1] 
       (.C(ready),
        .CE(1'b1),
        .D(sample_in[1]),
        .Q(sample_out[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_out_reg[2] 
       (.C(ready),
        .CE(1'b1),
        .D(sample_in[2]),
        .Q(sample_out[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_out_reg[3] 
       (.C(ready),
        .CE(1'b1),
        .D(sample_in[3]),
        .Q(sample_out[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_out_reg[4] 
       (.C(ready),
        .CE(1'b1),
        .D(sample_in[4]),
        .Q(sample_out[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_out_reg[5] 
       (.C(ready),
        .CE(1'b1),
        .D(sample_in[5]),
        .Q(sample_out[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_out_reg[6] 
       (.C(ready),
        .CE(1'b1),
        .D(sample_in[6]),
        .Q(sample_out[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_out_reg[7] 
       (.C(ready),
        .CE(1'b1),
        .D(sample_in[7]),
        .Q(sample_out[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_out_reg[8] 
       (.C(ready),
        .CE(1'b1),
        .D(sample_in[8]),
        .Q(sample_out[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sample_out_reg[9] 
       (.C(ready),
        .CE(1'b1),
        .D(sample_in[9]),
        .Q(sample_out[9]),
        .R(1'b0));
endmodule

module mux4_4bus
   (I0,
    I1,
    I2,
    I3,
    I4,
    I5,
    I6,
    I7,
    Sel,
    Y);
  input [3:0]I0;
  input [3:0]I1;
  input [3:0]I2;
  input [3:0]I3;
  input [3:0]I4;
  input [3:0]I5;
  input [3:0]I6;
  input [3:0]I7;
  input [2:0]Sel;
  output [3:0]Y;

  wire [3:0]I0;
  wire [3:0]I1;
  wire [3:0]I2;
  wire [3:0]I3;
  wire [3:0]I4;
  wire [3:0]I5;
  wire [3:0]I6;
  wire [2:0]Sel;
  wire [3:0]Y;
  wire \Y[0]_INST_0_i_1_n_0 ;
  wire \Y[0]_INST_0_i_2_n_0 ;
  wire \Y[1]_INST_0_i_1_n_0 ;
  wire \Y[1]_INST_0_i_2_n_0 ;
  wire \Y[2]_INST_0_i_1_n_0 ;
  wire \Y[2]_INST_0_i_2_n_0 ;
  wire \Y[3]_INST_0_i_1_n_0 ;
  wire \Y[3]_INST_0_i_2_n_0 ;

  MUXF7 \Y[0]_INST_0 
       (.I0(\Y[0]_INST_0_i_1_n_0 ),
        .I1(\Y[0]_INST_0_i_2_n_0 ),
        .O(Y[0]),
        .S(Sel[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Y[0]_INST_0_i_1 
       (.I0(I3[0]),
        .I1(I2[0]),
        .I2(Sel[1]),
        .I3(I1[0]),
        .I4(Sel[0]),
        .I5(I0[0]),
        .O(\Y[0]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \Y[0]_INST_0_i_2 
       (.I0(I6[0]),
        .I1(Sel[1]),
        .I2(I5[0]),
        .I3(Sel[0]),
        .I4(I4[0]),
        .O(\Y[0]_INST_0_i_2_n_0 ));
  MUXF7 \Y[1]_INST_0 
       (.I0(\Y[1]_INST_0_i_1_n_0 ),
        .I1(\Y[1]_INST_0_i_2_n_0 ),
        .O(Y[1]),
        .S(Sel[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Y[1]_INST_0_i_1 
       (.I0(I3[1]),
        .I1(I2[1]),
        .I2(Sel[1]),
        .I3(I1[1]),
        .I4(Sel[0]),
        .I5(I0[1]),
        .O(\Y[1]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \Y[1]_INST_0_i_2 
       (.I0(I6[1]),
        .I1(Sel[1]),
        .I2(I5[1]),
        .I3(Sel[0]),
        .I4(I4[1]),
        .O(\Y[1]_INST_0_i_2_n_0 ));
  MUXF7 \Y[2]_INST_0 
       (.I0(\Y[2]_INST_0_i_1_n_0 ),
        .I1(\Y[2]_INST_0_i_2_n_0 ),
        .O(Y[2]),
        .S(Sel[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Y[2]_INST_0_i_1 
       (.I0(I3[2]),
        .I1(I2[2]),
        .I2(Sel[1]),
        .I3(I1[2]),
        .I4(Sel[0]),
        .I5(I0[2]),
        .O(\Y[2]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \Y[2]_INST_0_i_2 
       (.I0(I6[2]),
        .I1(Sel[1]),
        .I2(I5[2]),
        .I3(Sel[0]),
        .I4(I4[2]),
        .O(\Y[2]_INST_0_i_2_n_0 ));
  MUXF7 \Y[3]_INST_0 
       (.I0(\Y[3]_INST_0_i_1_n_0 ),
        .I1(\Y[3]_INST_0_i_2_n_0 ),
        .O(Y[3]),
        .S(Sel[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \Y[3]_INST_0_i_1 
       (.I0(I3[3]),
        .I1(I2[3]),
        .I2(Sel[1]),
        .I3(I1[3]),
        .I4(Sel[0]),
        .I5(I0[3]),
        .O(\Y[3]_INST_0_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \Y[3]_INST_0_i_2 
       (.I0(I6[3]),
        .I1(Sel[1]),
        .I2(I5[3]),
        .I3(Sel[0]),
        .I4(I4[3]),
        .O(\Y[3]_INST_0_i_2_n_0 ));
endmodule

module pwm_module
   (clk,
    PWM_in,
    PWM_out);
  input clk;
  input [10:0]PWM_in;
  output PWM_out;

  wire [10:0]PWM_in;
  wire PWM_out;
  wire PWM_out_i_10_n_0;
  wire PWM_out_i_11_n_0;
  wire PWM_out_i_12_n_0;
  wire PWM_out_i_13_n_0;
  wire PWM_out_i_14_n_0;
  wire PWM_out_i_3_n_0;
  wire PWM_out_i_4_n_0;
  wire PWM_out_i_5_n_0;
  wire PWM_out_i_6_n_0;
  wire PWM_out_i_7_n_0;
  wire PWM_out_i_8_n_0;
  wire PWM_out_i_9_n_0;
  wire PWM_out_reg_i_1_n_2;
  wire PWM_out_reg_i_2_n_0;
  wire \PWM_ramp[0]_i_1_n_0 ;
  wire \PWM_ramp[10]_i_1_n_0 ;
  wire \PWM_ramp[10]_i_2_n_0 ;
  wire \PWM_ramp[1]_i_1_n_0 ;
  wire \PWM_ramp[2]_i_1_n_0 ;
  wire \PWM_ramp[3]_i_1_n_0 ;
  wire \PWM_ramp[4]_i_1_n_0 ;
  wire \PWM_ramp[5]_i_1_n_0 ;
  wire \PWM_ramp[6]_i_1_n_0 ;
  wire \PWM_ramp[7]_i_1_n_0 ;
  wire \PWM_ramp[8]_i_1_n_0 ;
  wire \PWM_ramp[9]_i_1_n_0 ;
  wire [10:0]PWM_ramp_reg;
  wire clk;
  wire [10:0]new_pwm;
  wire \new_pwm[10]_i_1_n_0 ;
  wire \new_pwm[10]_i_2_n_0 ;
  wire \new_pwm[10]_i_3_n_0 ;
  wire [3:0]NLW_PWM_out_reg_i_1_CO_UNCONNECTED;
  wire [3:0]NLW_PWM_out_reg_i_1_O_UNCONNECTED;
  wire [2:0]NLW_PWM_out_reg_i_2_CO_UNCONNECTED;
  wire [3:0]NLW_PWM_out_reg_i_2_O_UNCONNECTED;

  LUT4 #(
    .INIT(16'h2F02)) 
    PWM_out_i_10
       (.I0(new_pwm[0]),
        .I1(PWM_ramp_reg[0]),
        .I2(PWM_ramp_reg[1]),
        .I3(new_pwm[1]),
        .O(PWM_out_i_10_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    PWM_out_i_11
       (.I0(new_pwm[6]),
        .I1(PWM_ramp_reg[6]),
        .I2(new_pwm[7]),
        .I3(PWM_ramp_reg[7]),
        .O(PWM_out_i_11_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    PWM_out_i_12
       (.I0(new_pwm[4]),
        .I1(PWM_ramp_reg[4]),
        .I2(new_pwm[5]),
        .I3(PWM_ramp_reg[5]),
        .O(PWM_out_i_12_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    PWM_out_i_13
       (.I0(new_pwm[2]),
        .I1(PWM_ramp_reg[2]),
        .I2(new_pwm[3]),
        .I3(PWM_ramp_reg[3]),
        .O(PWM_out_i_13_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    PWM_out_i_14
       (.I0(new_pwm[0]),
        .I1(PWM_ramp_reg[0]),
        .I2(new_pwm[1]),
        .I3(PWM_ramp_reg[1]),
        .O(PWM_out_i_14_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    PWM_out_i_3
       (.I0(new_pwm[10]),
        .I1(PWM_ramp_reg[10]),
        .O(PWM_out_i_3_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    PWM_out_i_4
       (.I0(new_pwm[8]),
        .I1(PWM_ramp_reg[8]),
        .I2(PWM_ramp_reg[9]),
        .I3(new_pwm[9]),
        .O(PWM_out_i_4_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    PWM_out_i_5
       (.I0(PWM_ramp_reg[10]),
        .I1(new_pwm[10]),
        .O(PWM_out_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    PWM_out_i_6
       (.I0(new_pwm[8]),
        .I1(PWM_ramp_reg[8]),
        .I2(new_pwm[9]),
        .I3(PWM_ramp_reg[9]),
        .O(PWM_out_i_6_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    PWM_out_i_7
       (.I0(new_pwm[6]),
        .I1(PWM_ramp_reg[6]),
        .I2(PWM_ramp_reg[7]),
        .I3(new_pwm[7]),
        .O(PWM_out_i_7_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    PWM_out_i_8
       (.I0(new_pwm[4]),
        .I1(PWM_ramp_reg[4]),
        .I2(PWM_ramp_reg[5]),
        .I3(new_pwm[5]),
        .O(PWM_out_i_8_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    PWM_out_i_9
       (.I0(new_pwm[2]),
        .I1(PWM_ramp_reg[2]),
        .I2(PWM_ramp_reg[3]),
        .I3(new_pwm[3]),
        .O(PWM_out_i_9_n_0));
  FDRE #(
    .INIT(1'b0)) 
    PWM_out_reg
       (.C(clk),
        .CE(1'b1),
        .D(PWM_out_reg_i_1_n_2),
        .Q(PWM_out),
        .R(1'b0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 PWM_out_reg_i_1
       (.CI(PWM_out_reg_i_2_n_0),
        .CO({NLW_PWM_out_reg_i_1_CO_UNCONNECTED[3:2],PWM_out_reg_i_1_n_2,NLW_PWM_out_reg_i_1_CO_UNCONNECTED[0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,PWM_out_i_3_n_0,PWM_out_i_4_n_0}),
        .O(NLW_PWM_out_reg_i_1_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,PWM_out_i_5_n_0,PWM_out_i_6_n_0}));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 PWM_out_reg_i_2
       (.CI(1'b0),
        .CO({PWM_out_reg_i_2_n_0,NLW_PWM_out_reg_i_2_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({PWM_out_i_7_n_0,PWM_out_i_8_n_0,PWM_out_i_9_n_0,PWM_out_i_10_n_0}),
        .O(NLW_PWM_out_reg_i_2_O_UNCONNECTED[3:0]),
        .S({PWM_out_i_11_n_0,PWM_out_i_12_n_0,PWM_out_i_13_n_0,PWM_out_i_14_n_0}));
  (* \PinAttr:I0:HOLD_DETOUR  = "190" *) 
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \PWM_ramp[0]_i_1 
       (.I0(PWM_ramp_reg[0]),
        .O(\PWM_ramp[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \PWM_ramp[10]_i_1 
       (.I0(PWM_ramp_reg[8]),
        .I1(PWM_ramp_reg[6]),
        .I2(\PWM_ramp[10]_i_2_n_0 ),
        .I3(PWM_ramp_reg[7]),
        .I4(PWM_ramp_reg[9]),
        .I5(PWM_ramp_reg[10]),
        .O(\PWM_ramp[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \PWM_ramp[10]_i_2 
       (.I0(PWM_ramp_reg[5]),
        .I1(PWM_ramp_reg[3]),
        .I2(PWM_ramp_reg[1]),
        .I3(PWM_ramp_reg[0]),
        .I4(PWM_ramp_reg[2]),
        .I5(PWM_ramp_reg[4]),
        .O(\PWM_ramp[10]_i_2_n_0 ));
  (* \PinAttr:I0:HOLD_DETOUR  = "190" *) 
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \PWM_ramp[1]_i_1 
       (.I0(PWM_ramp_reg[0]),
        .I1(PWM_ramp_reg[1]),
        .O(\PWM_ramp[1]_i_1_n_0 ));
  (* \PinAttr:I1:HOLD_DETOUR  = "194" *) 
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \PWM_ramp[2]_i_1 
       (.I0(PWM_ramp_reg[1]),
        .I1(PWM_ramp_reg[0]),
        .I2(PWM_ramp_reg[2]),
        .O(\PWM_ramp[2]_i_1_n_0 ));
  (* \PinAttr:I1:HOLD_DETOUR  = "194" *) 
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \PWM_ramp[3]_i_1 
       (.I0(PWM_ramp_reg[1]),
        .I1(PWM_ramp_reg[0]),
        .I2(PWM_ramp_reg[2]),
        .I3(PWM_ramp_reg[3]),
        .O(\PWM_ramp[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \PWM_ramp[4]_i_1 
       (.I0(PWM_ramp_reg[2]),
        .I1(PWM_ramp_reg[0]),
        .I2(PWM_ramp_reg[1]),
        .I3(PWM_ramp_reg[3]),
        .I4(PWM_ramp_reg[4]),
        .O(\PWM_ramp[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \PWM_ramp[5]_i_1 
       (.I0(PWM_ramp_reg[3]),
        .I1(PWM_ramp_reg[1]),
        .I2(PWM_ramp_reg[0]),
        .I3(PWM_ramp_reg[2]),
        .I4(PWM_ramp_reg[4]),
        .I5(PWM_ramp_reg[5]),
        .O(\PWM_ramp[5]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \PWM_ramp[6]_i_1 
       (.I0(\PWM_ramp[10]_i_2_n_0 ),
        .I1(PWM_ramp_reg[6]),
        .O(\PWM_ramp[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h6C)) 
    \PWM_ramp[7]_i_1 
       (.I0(PWM_ramp_reg[6]),
        .I1(PWM_ramp_reg[7]),
        .I2(\PWM_ramp[10]_i_2_n_0 ),
        .O(\PWM_ramp[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \PWM_ramp[8]_i_1 
       (.I0(PWM_ramp_reg[7]),
        .I1(\PWM_ramp[10]_i_2_n_0 ),
        .I2(PWM_ramp_reg[6]),
        .I3(PWM_ramp_reg[8]),
        .O(\PWM_ramp[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \PWM_ramp[9]_i_1 
       (.I0(PWM_ramp_reg[7]),
        .I1(\PWM_ramp[10]_i_2_n_0 ),
        .I2(PWM_ramp_reg[6]),
        .I3(PWM_ramp_reg[8]),
        .I4(PWM_ramp_reg[9]),
        .O(\PWM_ramp[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \PWM_ramp_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\PWM_ramp[0]_i_1_n_0 ),
        .Q(PWM_ramp_reg[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \PWM_ramp_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\PWM_ramp[10]_i_1_n_0 ),
        .Q(PWM_ramp_reg[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \PWM_ramp_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\PWM_ramp[1]_i_1_n_0 ),
        .Q(PWM_ramp_reg[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \PWM_ramp_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\PWM_ramp[2]_i_1_n_0 ),
        .Q(PWM_ramp_reg[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \PWM_ramp_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\PWM_ramp[3]_i_1_n_0 ),
        .Q(PWM_ramp_reg[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \PWM_ramp_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\PWM_ramp[4]_i_1_n_0 ),
        .Q(PWM_ramp_reg[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \PWM_ramp_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\PWM_ramp[5]_i_1_n_0 ),
        .Q(PWM_ramp_reg[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \PWM_ramp_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\PWM_ramp[6]_i_1_n_0 ),
        .Q(PWM_ramp_reg[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \PWM_ramp_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\PWM_ramp[7]_i_1_n_0 ),
        .Q(PWM_ramp_reg[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \PWM_ramp_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\PWM_ramp[8]_i_1_n_0 ),
        .Q(PWM_ramp_reg[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \PWM_ramp_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\PWM_ramp[9]_i_1_n_0 ),
        .Q(PWM_ramp_reg[9]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00000001)) 
    \new_pwm[10]_i_1 
       (.I0(PWM_ramp_reg[10]),
        .I1(PWM_ramp_reg[8]),
        .I2(PWM_ramp_reg[9]),
        .I3(\new_pwm[10]_i_2_n_0 ),
        .I4(\new_pwm[10]_i_3_n_0 ),
        .O(\new_pwm[10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \new_pwm[10]_i_2 
       (.I0(PWM_ramp_reg[2]),
        .I1(PWM_ramp_reg[0]),
        .I2(PWM_ramp_reg[1]),
        .I3(PWM_ramp_reg[3]),
        .O(\new_pwm[10]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \new_pwm[10]_i_3 
       (.I0(PWM_ramp_reg[6]),
        .I1(PWM_ramp_reg[7]),
        .I2(PWM_ramp_reg[4]),
        .I3(PWM_ramp_reg[5]),
        .O(\new_pwm[10]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \new_pwm_reg[0] 
       (.C(clk),
        .CE(\new_pwm[10]_i_1_n_0 ),
        .D(PWM_in[0]),
        .Q(new_pwm[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \new_pwm_reg[10] 
       (.C(clk),
        .CE(\new_pwm[10]_i_1_n_0 ),
        .D(PWM_in[10]),
        .Q(new_pwm[10]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \new_pwm_reg[1] 
       (.C(clk),
        .CE(\new_pwm[10]_i_1_n_0 ),
        .D(PWM_in[1]),
        .Q(new_pwm[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \new_pwm_reg[2] 
       (.C(clk),
        .CE(\new_pwm[10]_i_1_n_0 ),
        .D(PWM_in[2]),
        .Q(new_pwm[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \new_pwm_reg[3] 
       (.C(clk),
        .CE(\new_pwm[10]_i_1_n_0 ),
        .D(PWM_in[3]),
        .Q(new_pwm[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \new_pwm_reg[4] 
       (.C(clk),
        .CE(\new_pwm[10]_i_1_n_0 ),
        .D(PWM_in[4]),
        .Q(new_pwm[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \new_pwm_reg[5] 
       (.C(clk),
        .CE(\new_pwm[10]_i_1_n_0 ),
        .D(PWM_in[5]),
        .Q(new_pwm[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \new_pwm_reg[6] 
       (.C(clk),
        .CE(\new_pwm[10]_i_1_n_0 ),
        .D(PWM_in[6]),
        .Q(new_pwm[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \new_pwm_reg[7] 
       (.C(clk),
        .CE(\new_pwm[10]_i_1_n_0 ),
        .D(PWM_in[7]),
        .Q(new_pwm[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \new_pwm_reg[8] 
       (.C(clk),
        .CE(\new_pwm[10]_i_1_n_0 ),
        .D(PWM_in[8]),
        .Q(new_pwm[8]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \new_pwm_reg[9] 
       (.C(clk),
        .CE(\new_pwm[10]_i_1_n_0 ),
        .D(PWM_in[9]),
        .Q(new_pwm[9]),
        .R(1'b0));
endmodule

(* constantNumber = "10000" *) 
module segClkDevider
   (clk,
    rst,
    clk_div);
  input clk;
  input rst;
  output clk_div;

  wire clk;
  wire clk_div;
  wire clk_div_i_1_n_0;
  wire clk_div_i_2_n_0;
  wire clk_div_i_3_n_0;
  wire clk_div_i_4_n_0;
  wire clk_div_i_5_n_0;
  wire clk_div_i_6_n_0;
  wire clk_div_i_7_n_0;
  wire clk_div_i_8_n_0;
  wire clk_div_i_9_n_0;
  wire [31:0]count;
  wire \count_reg[12]_i_2_n_0 ;
  wire \count_reg[12]_i_2_n_4 ;
  wire \count_reg[12]_i_2_n_5 ;
  wire \count_reg[12]_i_2_n_6 ;
  wire \count_reg[12]_i_2_n_7 ;
  wire \count_reg[16]_i_2_n_0 ;
  wire \count_reg[16]_i_2_n_4 ;
  wire \count_reg[16]_i_2_n_5 ;
  wire \count_reg[16]_i_2_n_6 ;
  wire \count_reg[16]_i_2_n_7 ;
  wire \count_reg[20]_i_2_n_0 ;
  wire \count_reg[20]_i_2_n_4 ;
  wire \count_reg[20]_i_2_n_5 ;
  wire \count_reg[20]_i_2_n_6 ;
  wire \count_reg[20]_i_2_n_7 ;
  wire \count_reg[24]_i_2_n_0 ;
  wire \count_reg[24]_i_2_n_4 ;
  wire \count_reg[24]_i_2_n_5 ;
  wire \count_reg[24]_i_2_n_6 ;
  wire \count_reg[24]_i_2_n_7 ;
  wire \count_reg[28]_i_2_n_0 ;
  wire \count_reg[28]_i_2_n_4 ;
  wire \count_reg[28]_i_2_n_5 ;
  wire \count_reg[28]_i_2_n_6 ;
  wire \count_reg[28]_i_2_n_7 ;
  wire \count_reg[31]_i_2_n_5 ;
  wire \count_reg[31]_i_2_n_6 ;
  wire \count_reg[31]_i_2_n_7 ;
  wire \count_reg[4]_i_2_n_0 ;
  wire \count_reg[4]_i_2_n_4 ;
  wire \count_reg[4]_i_2_n_5 ;
  wire \count_reg[4]_i_2_n_6 ;
  wire \count_reg[4]_i_2_n_7 ;
  wire \count_reg[8]_i_2_n_0 ;
  wire \count_reg[8]_i_2_n_4 ;
  wire \count_reg[8]_i_2_n_5 ;
  wire \count_reg[8]_i_2_n_6 ;
  wire \count_reg[8]_i_2_n_7 ;
  wire \count_reg_n_0_[0] ;
  wire \count_reg_n_0_[10] ;
  wire \count_reg_n_0_[11] ;
  wire \count_reg_n_0_[12] ;
  wire \count_reg_n_0_[13] ;
  wire \count_reg_n_0_[14] ;
  wire \count_reg_n_0_[15] ;
  wire \count_reg_n_0_[16] ;
  wire \count_reg_n_0_[17] ;
  wire \count_reg_n_0_[18] ;
  wire \count_reg_n_0_[19] ;
  wire \count_reg_n_0_[1] ;
  wire \count_reg_n_0_[20] ;
  wire \count_reg_n_0_[21] ;
  wire \count_reg_n_0_[22] ;
  wire \count_reg_n_0_[23] ;
  wire \count_reg_n_0_[24] ;
  wire \count_reg_n_0_[25] ;
  wire \count_reg_n_0_[26] ;
  wire \count_reg_n_0_[27] ;
  wire \count_reg_n_0_[28] ;
  wire \count_reg_n_0_[29] ;
  wire \count_reg_n_0_[2] ;
  wire \count_reg_n_0_[30] ;
  wire \count_reg_n_0_[31] ;
  wire \count_reg_n_0_[3] ;
  wire \count_reg_n_0_[4] ;
  wire \count_reg_n_0_[5] ;
  wire \count_reg_n_0_[6] ;
  wire \count_reg_n_0_[7] ;
  wire \count_reg_n_0_[8] ;
  wire \count_reg_n_0_[9] ;
  wire [2:0]\NLW_count_reg[12]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_count_reg[16]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_count_reg[20]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_count_reg[24]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_count_reg[28]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_count_reg[31]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_count_reg[31]_i_2_O_UNCONNECTED ;
  wire [2:0]\NLW_count_reg[4]_i_2_CO_UNCONNECTED ;
  wire [2:0]\NLW_count_reg[8]_i_2_CO_UNCONNECTED ;

  LUT5 #(
    .INIT(32'hFFFE0001)) 
    clk_div_i_1
       (.I0(clk_div_i_2_n_0),
        .I1(clk_div_i_3_n_0),
        .I2(clk_div_i_4_n_0),
        .I3(clk_div_i_5_n_0),
        .I4(clk_div),
        .O(clk_div_i_1_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    clk_div_i_2
       (.I0(\count_reg_n_0_[18] ),
        .I1(\count_reg_n_0_[19] ),
        .I2(\count_reg_n_0_[16] ),
        .I3(\count_reg_n_0_[17] ),
        .I4(clk_div_i_6_n_0),
        .O(clk_div_i_2_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    clk_div_i_3
       (.I0(\count_reg_n_0_[26] ),
        .I1(\count_reg_n_0_[27] ),
        .I2(\count_reg_n_0_[24] ),
        .I3(\count_reg_n_0_[25] ),
        .I4(clk_div_i_7_n_0),
        .O(clk_div_i_3_n_0));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    clk_div_i_4
       (.I0(\count_reg_n_0_[2] ),
        .I1(\count_reg_n_0_[3] ),
        .I2(\count_reg_n_0_[0] ),
        .I3(\count_reg_n_0_[1] ),
        .I4(clk_div_i_8_n_0),
        .O(clk_div_i_4_n_0));
  LUT5 #(
    .INIT(32'hFFFFBFFF)) 
    clk_div_i_5
       (.I0(\count_reg_n_0_[11] ),
        .I1(\count_reg_n_0_[10] ),
        .I2(\count_reg_n_0_[8] ),
        .I3(\count_reg_n_0_[9] ),
        .I4(clk_div_i_9_n_0),
        .O(clk_div_i_5_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    clk_div_i_6
       (.I0(\count_reg_n_0_[21] ),
        .I1(\count_reg_n_0_[20] ),
        .I2(\count_reg_n_0_[23] ),
        .I3(\count_reg_n_0_[22] ),
        .O(clk_div_i_6_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    clk_div_i_7
       (.I0(\count_reg_n_0_[29] ),
        .I1(\count_reg_n_0_[28] ),
        .I2(\count_reg_n_0_[31] ),
        .I3(\count_reg_n_0_[30] ),
        .O(clk_div_i_7_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    clk_div_i_8
       (.I0(\count_reg_n_0_[5] ),
        .I1(\count_reg_n_0_[4] ),
        .I2(\count_reg_n_0_[7] ),
        .I3(\count_reg_n_0_[6] ),
        .O(clk_div_i_8_n_0));
  LUT4 #(
    .INIT(16'hFFFD)) 
    clk_div_i_9
       (.I0(\count_reg_n_0_[13] ),
        .I1(\count_reg_n_0_[12] ),
        .I2(\count_reg_n_0_[15] ),
        .I3(\count_reg_n_0_[14] ),
        .O(clk_div_i_9_n_0));
  FDRE #(
    .INIT(1'b0)) 
    clk_div_reg
       (.C(clk),
        .CE(1'b1),
        .D(clk_div_i_1_n_0),
        .Q(clk_div),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \count[0]_i_1 
       (.I0(\count_reg_n_0_[0] ),
        .O(count[0]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \count[10]_i_1 
       (.I0(clk_div_i_2_n_0),
        .I1(clk_div_i_3_n_0),
        .I2(clk_div_i_4_n_0),
        .I3(clk_div_i_5_n_0),
        .I4(\count_reg[12]_i_2_n_6 ),
        .O(count[10]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \count[11]_i_1 
       (.I0(clk_div_i_2_n_0),
        .I1(clk_div_i_3_n_0),
        .I2(clk_div_i_4_n_0),
        .I3(clk_div_i_5_n_0),
        .I4(\count_reg[12]_i_2_n_5 ),
        .O(count[11]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \count[12]_i_1 
       (.I0(clk_div_i_2_n_0),
        .I1(clk_div_i_3_n_0),
        .I2(clk_div_i_4_n_0),
        .I3(clk_div_i_5_n_0),
        .I4(\count_reg[12]_i_2_n_4 ),
        .O(count[12]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \count[13]_i_1 
       (.I0(clk_div_i_2_n_0),
        .I1(clk_div_i_3_n_0),
        .I2(clk_div_i_4_n_0),
        .I3(clk_div_i_5_n_0),
        .I4(\count_reg[16]_i_2_n_7 ),
        .O(count[13]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \count[14]_i_1 
       (.I0(clk_div_i_2_n_0),
        .I1(clk_div_i_3_n_0),
        .I2(clk_div_i_4_n_0),
        .I3(clk_div_i_5_n_0),
        .I4(\count_reg[16]_i_2_n_6 ),
        .O(count[14]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \count[15]_i_1 
       (.I0(clk_div_i_2_n_0),
        .I1(clk_div_i_3_n_0),
        .I2(clk_div_i_4_n_0),
        .I3(clk_div_i_5_n_0),
        .I4(\count_reg[16]_i_2_n_5 ),
        .O(count[15]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \count[16]_i_1 
       (.I0(clk_div_i_2_n_0),
        .I1(clk_div_i_3_n_0),
        .I2(clk_div_i_4_n_0),
        .I3(clk_div_i_5_n_0),
        .I4(\count_reg[16]_i_2_n_4 ),
        .O(count[16]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \count[17]_i_1 
       (.I0(clk_div_i_2_n_0),
        .I1(clk_div_i_3_n_0),
        .I2(clk_div_i_4_n_0),
        .I3(clk_div_i_5_n_0),
        .I4(\count_reg[20]_i_2_n_7 ),
        .O(count[17]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \count[18]_i_1 
       (.I0(clk_div_i_2_n_0),
        .I1(clk_div_i_3_n_0),
        .I2(clk_div_i_4_n_0),
        .I3(clk_div_i_5_n_0),
        .I4(\count_reg[20]_i_2_n_6 ),
        .O(count[18]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \count[19]_i_1 
       (.I0(clk_div_i_2_n_0),
        .I1(clk_div_i_3_n_0),
        .I2(clk_div_i_4_n_0),
        .I3(clk_div_i_5_n_0),
        .I4(\count_reg[20]_i_2_n_5 ),
        .O(count[19]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \count[1]_i_1 
       (.I0(clk_div_i_2_n_0),
        .I1(clk_div_i_3_n_0),
        .I2(clk_div_i_4_n_0),
        .I3(clk_div_i_5_n_0),
        .I4(\count_reg[4]_i_2_n_7 ),
        .O(count[1]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \count[20]_i_1 
       (.I0(clk_div_i_2_n_0),
        .I1(clk_div_i_3_n_0),
        .I2(clk_div_i_4_n_0),
        .I3(clk_div_i_5_n_0),
        .I4(\count_reg[20]_i_2_n_4 ),
        .O(count[20]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \count[21]_i_1 
       (.I0(clk_div_i_2_n_0),
        .I1(clk_div_i_3_n_0),
        .I2(clk_div_i_4_n_0),
        .I3(clk_div_i_5_n_0),
        .I4(\count_reg[24]_i_2_n_7 ),
        .O(count[21]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \count[22]_i_1 
       (.I0(clk_div_i_2_n_0),
        .I1(clk_div_i_3_n_0),
        .I2(clk_div_i_4_n_0),
        .I3(clk_div_i_5_n_0),
        .I4(\count_reg[24]_i_2_n_6 ),
        .O(count[22]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \count[23]_i_1 
       (.I0(clk_div_i_2_n_0),
        .I1(clk_div_i_3_n_0),
        .I2(clk_div_i_4_n_0),
        .I3(clk_div_i_5_n_0),
        .I4(\count_reg[24]_i_2_n_5 ),
        .O(count[23]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \count[24]_i_1 
       (.I0(clk_div_i_2_n_0),
        .I1(clk_div_i_3_n_0),
        .I2(clk_div_i_4_n_0),
        .I3(clk_div_i_5_n_0),
        .I4(\count_reg[24]_i_2_n_4 ),
        .O(count[24]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \count[25]_i_1 
       (.I0(clk_div_i_2_n_0),
        .I1(clk_div_i_3_n_0),
        .I2(clk_div_i_4_n_0),
        .I3(clk_div_i_5_n_0),
        .I4(\count_reg[28]_i_2_n_7 ),
        .O(count[25]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \count[26]_i_1 
       (.I0(clk_div_i_2_n_0),
        .I1(clk_div_i_3_n_0),
        .I2(clk_div_i_4_n_0),
        .I3(clk_div_i_5_n_0),
        .I4(\count_reg[28]_i_2_n_6 ),
        .O(count[26]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \count[27]_i_1 
       (.I0(clk_div_i_2_n_0),
        .I1(clk_div_i_3_n_0),
        .I2(clk_div_i_4_n_0),
        .I3(clk_div_i_5_n_0),
        .I4(\count_reg[28]_i_2_n_5 ),
        .O(count[27]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \count[28]_i_1 
       (.I0(clk_div_i_2_n_0),
        .I1(clk_div_i_3_n_0),
        .I2(clk_div_i_4_n_0),
        .I3(clk_div_i_5_n_0),
        .I4(\count_reg[28]_i_2_n_4 ),
        .O(count[28]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \count[29]_i_1 
       (.I0(clk_div_i_2_n_0),
        .I1(clk_div_i_3_n_0),
        .I2(clk_div_i_4_n_0),
        .I3(clk_div_i_5_n_0),
        .I4(\count_reg[31]_i_2_n_7 ),
        .O(count[29]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \count[2]_i_1 
       (.I0(clk_div_i_2_n_0),
        .I1(clk_div_i_3_n_0),
        .I2(clk_div_i_4_n_0),
        .I3(clk_div_i_5_n_0),
        .I4(\count_reg[4]_i_2_n_6 ),
        .O(count[2]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \count[30]_i_1 
       (.I0(clk_div_i_2_n_0),
        .I1(clk_div_i_3_n_0),
        .I2(clk_div_i_4_n_0),
        .I3(clk_div_i_5_n_0),
        .I4(\count_reg[31]_i_2_n_6 ),
        .O(count[30]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \count[31]_i_1 
       (.I0(clk_div_i_2_n_0),
        .I1(clk_div_i_3_n_0),
        .I2(clk_div_i_4_n_0),
        .I3(clk_div_i_5_n_0),
        .I4(\count_reg[31]_i_2_n_5 ),
        .O(count[31]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \count[3]_i_1 
       (.I0(clk_div_i_2_n_0),
        .I1(clk_div_i_3_n_0),
        .I2(clk_div_i_4_n_0),
        .I3(clk_div_i_5_n_0),
        .I4(\count_reg[4]_i_2_n_5 ),
        .O(count[3]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \count[4]_i_1 
       (.I0(clk_div_i_2_n_0),
        .I1(clk_div_i_3_n_0),
        .I2(clk_div_i_4_n_0),
        .I3(clk_div_i_5_n_0),
        .I4(\count_reg[4]_i_2_n_4 ),
        .O(count[4]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \count[5]_i_1 
       (.I0(clk_div_i_2_n_0),
        .I1(clk_div_i_3_n_0),
        .I2(clk_div_i_4_n_0),
        .I3(clk_div_i_5_n_0),
        .I4(\count_reg[8]_i_2_n_7 ),
        .O(count[5]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \count[6]_i_1 
       (.I0(clk_div_i_2_n_0),
        .I1(clk_div_i_3_n_0),
        .I2(clk_div_i_4_n_0),
        .I3(clk_div_i_5_n_0),
        .I4(\count_reg[8]_i_2_n_6 ),
        .O(count[6]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \count[7]_i_1 
       (.I0(clk_div_i_2_n_0),
        .I1(clk_div_i_3_n_0),
        .I2(clk_div_i_4_n_0),
        .I3(clk_div_i_5_n_0),
        .I4(\count_reg[8]_i_2_n_5 ),
        .O(count[7]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \count[8]_i_1 
       (.I0(clk_div_i_2_n_0),
        .I1(clk_div_i_3_n_0),
        .I2(clk_div_i_4_n_0),
        .I3(clk_div_i_5_n_0),
        .I4(\count_reg[8]_i_2_n_4 ),
        .O(count[8]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \count[9]_i_1 
       (.I0(clk_div_i_2_n_0),
        .I1(clk_div_i_3_n_0),
        .I2(clk_div_i_4_n_0),
        .I3(clk_div_i_5_n_0),
        .I4(\count_reg[12]_i_2_n_7 ),
        .O(count[9]));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(count[0]),
        .Q(\count_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(count[10]),
        .Q(\count_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(count[11]),
        .Q(\count_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(count[12]),
        .Q(\count_reg_n_0_[12] ),
        .R(1'b0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \count_reg[12]_i_2 
       (.CI(\count_reg[8]_i_2_n_0 ),
        .CO({\count_reg[12]_i_2_n_0 ,\NLW_count_reg[12]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[12]_i_2_n_4 ,\count_reg[12]_i_2_n_5 ,\count_reg[12]_i_2_n_6 ,\count_reg[12]_i_2_n_7 }),
        .S({\count_reg_n_0_[12] ,\count_reg_n_0_[11] ,\count_reg_n_0_[10] ,\count_reg_n_0_[9] }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(count[13]),
        .Q(\count_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(count[14]),
        .Q(\count_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(count[15]),
        .Q(\count_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(count[16]),
        .Q(\count_reg_n_0_[16] ),
        .R(1'b0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \count_reg[16]_i_2 
       (.CI(\count_reg[12]_i_2_n_0 ),
        .CO({\count_reg[16]_i_2_n_0 ,\NLW_count_reg[16]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[16]_i_2_n_4 ,\count_reg[16]_i_2_n_5 ,\count_reg[16]_i_2_n_6 ,\count_reg[16]_i_2_n_7 }),
        .S({\count_reg_n_0_[16] ,\count_reg_n_0_[15] ,\count_reg_n_0_[14] ,\count_reg_n_0_[13] }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(count[17]),
        .Q(\count_reg_n_0_[17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(count[18]),
        .Q(\count_reg_n_0_[18] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(count[19]),
        .Q(\count_reg_n_0_[19] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(count[1]),
        .Q(\count_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(count[20]),
        .Q(\count_reg_n_0_[20] ),
        .R(1'b0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \count_reg[20]_i_2 
       (.CI(\count_reg[16]_i_2_n_0 ),
        .CO({\count_reg[20]_i_2_n_0 ,\NLW_count_reg[20]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[20]_i_2_n_4 ,\count_reg[20]_i_2_n_5 ,\count_reg[20]_i_2_n_6 ,\count_reg[20]_i_2_n_7 }),
        .S({\count_reg_n_0_[20] ,\count_reg_n_0_[19] ,\count_reg_n_0_[18] ,\count_reg_n_0_[17] }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(count[21]),
        .Q(\count_reg_n_0_[21] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(count[22]),
        .Q(\count_reg_n_0_[22] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(count[23]),
        .Q(\count_reg_n_0_[23] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(count[24]),
        .Q(\count_reg_n_0_[24] ),
        .R(1'b0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \count_reg[24]_i_2 
       (.CI(\count_reg[20]_i_2_n_0 ),
        .CO({\count_reg[24]_i_2_n_0 ,\NLW_count_reg[24]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[24]_i_2_n_4 ,\count_reg[24]_i_2_n_5 ,\count_reg[24]_i_2_n_6 ,\count_reg[24]_i_2_n_7 }),
        .S({\count_reg_n_0_[24] ,\count_reg_n_0_[23] ,\count_reg_n_0_[22] ,\count_reg_n_0_[21] }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(count[25]),
        .Q(\count_reg_n_0_[25] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(count[26]),
        .Q(\count_reg_n_0_[26] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(count[27]),
        .Q(\count_reg_n_0_[27] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(count[28]),
        .Q(\count_reg_n_0_[28] ),
        .R(1'b0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \count_reg[28]_i_2 
       (.CI(\count_reg[24]_i_2_n_0 ),
        .CO({\count_reg[28]_i_2_n_0 ,\NLW_count_reg[28]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[28]_i_2_n_4 ,\count_reg[28]_i_2_n_5 ,\count_reg[28]_i_2_n_6 ,\count_reg[28]_i_2_n_7 }),
        .S({\count_reg_n_0_[28] ,\count_reg_n_0_[27] ,\count_reg_n_0_[26] ,\count_reg_n_0_[25] }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(count[29]),
        .Q(\count_reg_n_0_[29] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(count[2]),
        .Q(\count_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(count[30]),
        .Q(\count_reg_n_0_[30] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(count[31]),
        .Q(\count_reg_n_0_[31] ),
        .R(1'b0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \count_reg[31]_i_2 
       (.CI(\count_reg[28]_i_2_n_0 ),
        .CO(\NLW_count_reg[31]_i_2_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_count_reg[31]_i_2_O_UNCONNECTED [3],\count_reg[31]_i_2_n_5 ,\count_reg[31]_i_2_n_6 ,\count_reg[31]_i_2_n_7 }),
        .S({1'b0,\count_reg_n_0_[31] ,\count_reg_n_0_[30] ,\count_reg_n_0_[29] }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(count[3]),
        .Q(\count_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(count[4]),
        .Q(\count_reg_n_0_[4] ),
        .R(1'b0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \count_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\count_reg[4]_i_2_n_0 ,\NLW_count_reg[4]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(\count_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[4]_i_2_n_4 ,\count_reg[4]_i_2_n_5 ,\count_reg[4]_i_2_n_6 ,\count_reg[4]_i_2_n_7 }),
        .S({\count_reg_n_0_[4] ,\count_reg_n_0_[3] ,\count_reg_n_0_[2] ,\count_reg_n_0_[1] }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(count[5]),
        .Q(\count_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(count[6]),
        .Q(\count_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(count[7]),
        .Q(\count_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(count[8]),
        .Q(\count_reg_n_0_[8] ),
        .R(1'b0));
  (* OPT_MODIFIED = "SWEEP" *) 
  CARRY4 \count_reg[8]_i_2 
       (.CI(\count_reg[4]_i_2_n_0 ),
        .CO({\count_reg[8]_i_2_n_0 ,\NLW_count_reg[8]_i_2_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_reg[8]_i_2_n_4 ,\count_reg[8]_i_2_n_5 ,\count_reg[8]_i_2_n_6 ,\count_reg[8]_i_2_n_7 }),
        .S({\count_reg_n_0_[8] ,\count_reg_n_0_[7] ,\count_reg_n_0_[6] ,\count_reg_n_0_[5] }));
  FDRE #(
    .INIT(1'b0)) 
    \count_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(count[9]),
        .Q(\count_reg_n_0_[9] ),
        .R(1'b0));
endmodule

module sevensegdecoder
   (nIn,
    ssOut);
  input [3:0]nIn;
  output [6:0]ssOut;

  wire [3:0]nIn;
  wire [6:0]ssOut;

  LUT4 #(
    .INIT(16'h2094)) 
    \ssOut[0]_INST_0 
       (.I0(nIn[3]),
        .I1(nIn[2]),
        .I2(nIn[0]),
        .I3(nIn[1]),
        .O(ssOut[0]));
  LUT4 #(
    .INIT(16'hAC48)) 
    \ssOut[1]_INST_0 
       (.I0(nIn[3]),
        .I1(nIn[2]),
        .I2(nIn[0]),
        .I3(nIn[1]),
        .O(ssOut[1]));
  LUT4 #(
    .INIT(16'hA210)) 
    \ssOut[2]_INST_0 
       (.I0(nIn[3]),
        .I1(nIn[0]),
        .I2(nIn[1]),
        .I3(nIn[2]),
        .O(ssOut[2]));
  LUT4 #(
    .INIT(16'hC12C)) 
    \ssOut[3]_INST_0 
       (.I0(nIn[3]),
        .I1(nIn[0]),
        .I2(nIn[1]),
        .I3(nIn[2]),
        .O(ssOut[3]));
  LUT4 #(
    .INIT(16'h5710)) 
    \ssOut[4]_INST_0 
       (.I0(nIn[3]),
        .I1(nIn[1]),
        .I2(nIn[2]),
        .I3(nIn[0]),
        .O(ssOut[4]));
  LUT4 #(
    .INIT(16'h6504)) 
    \ssOut[5]_INST_0 
       (.I0(nIn[3]),
        .I1(nIn[1]),
        .I2(nIn[2]),
        .I3(nIn[0]),
        .O(ssOut[5]));
  LUT4 #(
    .INIT(16'h4025)) 
    \ssOut[6]_INST_0 
       (.I0(nIn[3]),
        .I1(nIn[0]),
        .I2(nIn[2]),
        .I3(nIn[1]),
        .O(ssOut[6]));
endmodule

module xadc_wiz_0
   (daddr_in,
    dclk_in,
    den_in,
    di_in,
    dwe_in,
    reset_in,
    vauxp2,
    vauxn2,
    vauxp3,
    vauxn3,
    vauxp10,
    vauxn10,
    vauxp11,
    vauxn11,
    busy_out,
    channel_out,
    do_out,
    drdy_out,
    eoc_out,
    eos_out,
    alarm_out,
    vp_in,
    vn_in);
  input [6:0]daddr_in;
  input dclk_in;
  input den_in;
  input [15:0]di_in;
  input dwe_in;
  input reset_in;
  input vauxp2;
  input vauxn2;
  input vauxp3;
  input vauxn3;
  input vauxp10;
  input vauxn10;
  input vauxp11;
  input vauxn11;
  output busy_out;
  output [4:0]channel_out;
  output [15:0]do_out;
  output drdy_out;
  output eoc_out;
  output eos_out;
  output alarm_out;
  input vp_in;
  input vn_in;

  wire [6:0]daddr_in;
  wire dclk_in;
  wire den_in;
  wire [15:0]di_in;
  wire [15:0]do_out;
  wire \^drdy_out ;
  wire drdy_out_BUFG;
  wire dwe_in;
  wire eoc_out;
  wire reset_in;
  wire vauxn10;
  wire vauxn11;
  wire vauxn2;
  wire vauxn3;
  wire vauxp10;
  wire vauxp11;
  wire vauxp2;
  wire vauxp3;
  wire vn_in;
  wire vp_in;
  wire NLW_inst_BUSY_UNCONNECTED;
  wire NLW_inst_EOS_UNCONNECTED;
  wire NLW_inst_JTAGBUSY_UNCONNECTED;
  wire NLW_inst_JTAGLOCKED_UNCONNECTED;
  wire NLW_inst_JTAGMODIFIED_UNCONNECTED;
  wire NLW_inst_OT_UNCONNECTED;
  wire [7:0]NLW_inst_ALM_UNCONNECTED;
  wire [4:0]NLW_inst_CHANNEL_UNCONNECTED;
  wire [3:0]NLW_inst_DO_UNCONNECTED;
  wire [4:0]NLW_inst_MUXADDR_UNCONNECTED;

  assign drdy_out = drdy_out_BUFG;
  (* LOPT_BUFG_CLOCK *) 
  (* OPT_MODIFIED = "BUFG_OPT" *) 
  BUFG drdy_out_BUFG_inst
       (.I(\^drdy_out ),
        .O(drdy_out_BUFG));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "BUFG_OPT" *) 
  XADC #(
    .INIT_40(16'h8000),
    .INIT_41(16'h21AF),
    .INIT_42(16'h1900),
    .INIT_43(16'h0000),
    .INIT_44(16'h0000),
    .INIT_45(16'h0000),
    .INIT_46(16'h0000),
    .INIT_47(16'h0000),
    .INIT_48(16'h0000),
    .INIT_49(16'h0C0C),
    .INIT_4A(16'h0000),
    .INIT_4B(16'h0000),
    .INIT_4C(16'h0000),
    .INIT_4D(16'h0000),
    .INIT_4E(16'h0000),
    .INIT_4F(16'h0000),
    .INIT_50(16'hB5ED),
    .INIT_51(16'h57E4),
    .INIT_52(16'hA147),
    .INIT_53(16'hCA33),
    .INIT_54(16'hA93A),
    .INIT_55(16'h52C6),
    .INIT_56(16'h9555),
    .INIT_57(16'hAE4E),
    .INIT_58(16'h5999),
    .INIT_59(16'h0000),
    .INIT_5A(16'h0000),
    .INIT_5B(16'h0000),
    .INIT_5C(16'h5111),
    .INIT_5D(16'h0000),
    .INIT_5E(16'h0000),
    .INIT_5F(16'h0000),
    .IS_CONVSTCLK_INVERTED(1'b0),
    .IS_DCLK_INVERTED(1'b0),
    .SIM_DEVICE("7SERIES"),
    .SIM_MONITOR_FILE("design.txt")) 
    inst
       (.ALM(NLW_inst_ALM_UNCONNECTED[7:0]),
        .BUSY(NLW_inst_BUSY_UNCONNECTED),
        .CHANNEL(NLW_inst_CHANNEL_UNCONNECTED[4:0]),
        .CONVST(1'b0),
        .CONVSTCLK(1'b0),
        .DADDR(daddr_in),
        .DCLK(dclk_in),
        .DEN(den_in),
        .DI(di_in),
        .DO({do_out[15:4],NLW_inst_DO_UNCONNECTED[3:0]}),
        .DRDY(\^drdy_out ),
        .DWE(dwe_in),
        .EOC(eoc_out),
        .EOS(NLW_inst_EOS_UNCONNECTED),
        .JTAGBUSY(NLW_inst_JTAGBUSY_UNCONNECTED),
        .JTAGLOCKED(NLW_inst_JTAGLOCKED_UNCONNECTED),
        .JTAGMODIFIED(NLW_inst_JTAGMODIFIED_UNCONNECTED),
        .MUXADDR(NLW_inst_MUXADDR_UNCONNECTED[4:0]),
        .OT(NLW_inst_OT_UNCONNECTED),
        .RESET(reset_in),
        .VAUXN({1'b0,1'b0,1'b0,1'b0,vauxn11,vauxn10,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,vauxn3,vauxn2,1'b0,1'b0}),
        .VAUXP({1'b0,1'b0,1'b0,1'b0,vauxp11,vauxp10,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,vauxp3,vauxp2,1'b0,1'b0}),
        .VN(vn_in),
        .VP(vp_in));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
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

endmodule
`endif
