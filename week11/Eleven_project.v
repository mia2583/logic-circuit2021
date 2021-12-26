// Copyright (C) 2020  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and any partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel FPGA IP License Agreement, or other applicable license
// agreement, including, without limitation, that your use is for
// the sole purpose of programming logic devices manufactured by
// Intel and sold by Intel or its authorized distributors.  Please
// refer to the applicable agreement for further details, at
// https://fpgasoftware.intel.com/eula.

// PROGRAM		"Quartus Prime"
// VERSION		"Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"
// CREATED		"Fri Nov 05 18:49:31 2021"

module Eleven_project(
	clk,
	rst,
	keypad_0,
	keypad_1,
	keypad_2,
	keypad_3,
	keypad_4,
	keypad_6,
	keypad_5,
	keypad_7,
	keypad_8,
	keypad_9,
	a,
	b,
	c,
	d,
	e,
	f,
	g,
	com8,
	con7,
	com6,
	com5,
	com4,
	com3,
	com2,
	com1,
	piezo,
	green_1,
	green_2,
	green_3,
	green_4,
	red_1,
	red_2,
	red_3,
	red_4,
	Motor_A,
	Motor_B,
	Motor_AA,
	Motor_BB
);


input wire	clk;
input wire	rst;
input wire	keypad_0;
input wire	keypad_1;
input wire	keypad_2;
input wire	keypad_3;
input wire	keypad_4;
input wire	keypad_6;
input wire	keypad_5;
input wire	keypad_7;
input wire	keypad_8;
input wire	keypad_9;
output wire	a;
output wire	b;
output wire	c;
output wire	d;
output wire	e;
output wire	f;
output wire	g;
output wire	com8;
output wire	con7;
output wire	com6;
output wire	com5;
output wire	com4;
output wire	com3;
output wire	com2;
output wire	com1;
output wire	piezo;
output wire	green_1;
output wire	green_2;
output wire	green_3;
output wire	green_4;
output wire	red_1;
output wire	red_2;
output wire	red_3;
output wire	red_4;
output wire	Motor_A;
output wire	Motor_B;
output wire	Motor_AA;
output wire	Motor_BB;

wire	[3:0] reg_line;
wire	SYNTHESIZED_WIRE_66;
wire	SYNTHESIZED_WIRE_67;
wire	[3:0] SYNTHESIZED_WIRE_68;
wire	[3:0] SYNTHESIZED_WIRE_69;
wire	SYNTHESIZED_WIRE_70;
wire	[3:0] SYNTHESIZED_WIRE_71;
wire	[3:0] SYNTHESIZED_WIRE_72;
wire	SYNTHESIZED_WIRE_73;
wire	[3:0] SYNTHESIZED_WIRE_14;
wire	[3:0] SYNTHESIZED_WIRE_15;
wire	[3:0] SYNTHESIZED_WIRE_16;
wire	SYNTHESIZED_WIRE_17;
wire	SYNTHESIZED_WIRE_18;
wire	SYNTHESIZED_WIRE_74;
wire	SYNTHESIZED_WIRE_21;
wire	SYNTHESIZED_WIRE_23;
wire	SYNTHESIZED_WIRE_32;
wire	SYNTHESIZED_WIRE_33;
wire	SYNTHESIZED_WIRE_35;
wire	SYNTHESIZED_WIRE_37;
wire	SYNTHESIZED_WIRE_40;
wire	SYNTHESIZED_WIRE_41;
wire	SYNTHESIZED_WIRE_42;
wire	SYNTHESIZED_WIRE_43;
wire	SYNTHESIZED_WIRE_44;
wire	SYNTHESIZED_WIRE_75;
wire	SYNTHESIZED_WIRE_76;
wire	SYNTHESIZED_WIRE_50;
wire	SYNTHESIZED_WIRE_51;
wire	SYNTHESIZED_WIRE_53;
wire	SYNTHESIZED_WIRE_55;
wire	SYNTHESIZED_WIRE_58;
wire	SYNTHESIZED_WIRE_59;

assign	com4 = 1;
assign	com3 = 1;
assign	com2 = 1;
assign	com1 = 1;
assign	SYNTHESIZED_WIRE_58 = 1;




d2b	b2v_inst(
	.d0(keypad_0),
	.d1(keypad_1),
	.d2(keypad_2),
	.d3(keypad_3),
	.d4(keypad_4),
	.d5(keypad_5),
	.d6(keypad_6),
	.d7(keypad_7),
	.d8(keypad_8),
	.d9(keypad_9),
	.b3(reg_line[3]),
	.b2(reg_line[2]),
	.b1(reg_line[1]),
	.b0(reg_line[0]));


four_bit_reg_ce	b2v_inst10(
	.ce(SYNTHESIZED_WIRE_66),
	.clk(clk),
	.rst_n(SYNTHESIZED_WIRE_67),
	.din(SYNTHESIZED_WIRE_68),
	.out(SYNTHESIZED_WIRE_69));


four_bit_reg_ce	b2v_inst11(
	.ce(SYNTHESIZED_WIRE_66),
	.clk(clk),
	.rst_n(SYNTHESIZED_WIRE_67),
	.din(SYNTHESIZED_WIRE_69),
	.out(SYNTHESIZED_WIRE_72));


count_4	b2v_inst12(
	.clk(clk),
	.rst_n(SYNTHESIZED_WIRE_67),
	.Q0(SYNTHESIZED_WIRE_70),
	.Q1(SYNTHESIZED_WIRE_73));


Piezo_module	b2v_inst13(
	.clk(clk),
	.rst(rst),
	.Keypad0(keypad_0),
	.Keypad1(keypad_1),
	.Keypad2(keypad_2),
	.Keypad3(keypad_3),
	.Keypad4(keypad_4),
	.Keypad5(keypad_5),
	.Keypad6(keypad_6),
	.Keypad7(keypad_7),
	.Keypad8(keypad_8),
	.Keypad9(keypad_9),
	.Piezo(piezo));


mx_4bit_2x1	b2v_inst14(
	.ce(SYNTHESIZED_WIRE_70),
	.s0(SYNTHESIZED_WIRE_71),
	.s1(SYNTHESIZED_WIRE_68),
	.m_out(SYNTHESIZED_WIRE_14));


mx_4bit_2x1	b2v_inst15(
	.ce(SYNTHESIZED_WIRE_70),
	.s0(SYNTHESIZED_WIRE_69),
	.s1(SYNTHESIZED_WIRE_72),
	.m_out(SYNTHESIZED_WIRE_15));


mx_4bit_2x1	b2v_inst16(
	.ce(SYNTHESIZED_WIRE_73),
	.s0(SYNTHESIZED_WIRE_14),
	.s1(SYNTHESIZED_WIRE_15),
	.m_out(SYNTHESIZED_WIRE_16));


b2seg_bus	b2v_inst17(
	.b_in(SYNTHESIZED_WIRE_16),
	.a(a),
	.b(b),
	.c(c),
	.d(d),
	.e(e),
	.f(f),
	.g(g));

assign	SYNTHESIZED_WIRE_18 = keypad_0 | keypad_2 | keypad_1 | keypad_3 | keypad_5 | keypad_4 | keypad_6 | keypad_7;

assign	SYNTHESIZED_WIRE_17 = keypad_9 | keypad_8;

assign	SYNTHESIZED_WIRE_44 = SYNTHESIZED_WIRE_17 | SYNTHESIZED_WIRE_18;

assign	SYNTHESIZED_WIRE_67 =  ~rst;


Led	b2v_inst23(
	.Correct(SYNTHESIZED_WIRE_74),
	.Green1(green_1),
	.Green2(green_2),
	.Green3(green_3),
	.Green4(green_4),
	.Red1(red_1),
	.Red2(red_2),
	.Red3(red_3),
	.Red4(red_4));

assign	SYNTHESIZED_WIRE_75 = SYNTHESIZED_WIRE_74 ^ SYNTHESIZED_WIRE_21;

assign	SYNTHESIZED_WIRE_76 = SYNTHESIZED_WIRE_74 ^ SYNTHESIZED_WIRE_23;


Password	b2v_inst27(
	.Reg_1(SYNTHESIZED_WIRE_72),
	.Reg_2(SYNTHESIZED_WIRE_69),
	.Reg_3(SYNTHESIZED_WIRE_68),
	.Reg_4(SYNTHESIZED_WIRE_71),
	.Correct(SYNTHESIZED_WIRE_74));

assign	SYNTHESIZED_WIRE_32 =  ~SYNTHESIZED_WIRE_70;

assign	SYNTHESIZED_WIRE_33 =  ~SYNTHESIZED_WIRE_73;

assign	SYNTHESIZED_WIRE_35 =  ~SYNTHESIZED_WIRE_73;

assign	SYNTHESIZED_WIRE_37 =  ~SYNTHESIZED_WIRE_70;

assign	SYNTHESIZED_WIRE_40 = SYNTHESIZED_WIRE_32 & SYNTHESIZED_WIRE_33;

assign	SYNTHESIZED_WIRE_41 = SYNTHESIZED_WIRE_70 & SYNTHESIZED_WIRE_35;

assign	SYNTHESIZED_WIRE_42 = SYNTHESIZED_WIRE_73 & SYNTHESIZED_WIRE_37;

assign	SYNTHESIZED_WIRE_43 = SYNTHESIZED_WIRE_73 & SYNTHESIZED_WIRE_70;

assign	com8 =  ~SYNTHESIZED_WIRE_40;

assign	con7 =  ~SYNTHESIZED_WIRE_41;

assign	com6 =  ~SYNTHESIZED_WIRE_42;

assign	com5 =  ~SYNTHESIZED_WIRE_43;


trigger	b2v_inst4(
	.Din(SYNTHESIZED_WIRE_44),
	.CLK(clk),
	.rst_n(SYNTHESIZED_WIRE_67),
	.Dout(SYNTHESIZED_WIRE_66));

assign	SYNTHESIZED_WIRE_50 =  ~SYNTHESIZED_WIRE_75;


assign	SYNTHESIZED_WIRE_51 =  ~SYNTHESIZED_WIRE_76;

assign	SYNTHESIZED_WIRE_53 =  ~SYNTHESIZED_WIRE_76;

assign	SYNTHESIZED_WIRE_55 =  ~SYNTHESIZED_WIRE_76;

assign	Motor_A = SYNTHESIZED_WIRE_50 & SYNTHESIZED_WIRE_51;

assign	Motor_B = SYNTHESIZED_WIRE_75 & SYNTHESIZED_WIRE_53;

assign	Motor_AA = SYNTHESIZED_WIRE_75 & SYNTHESIZED_WIRE_55;

assign	Motor_BB = SYNTHESIZED_WIRE_75 & SYNTHESIZED_WIRE_76;


clk_div	b2v_inst49(
	.clk(clk),
	.rst(rst),
	.en(SYNTHESIZED_WIRE_58),
	.div_clk(SYNTHESIZED_WIRE_59));
	defparam	b2v_inst49.cnt_num = 10000;



count_4	b2v_inst51(
	.clk(SYNTHESIZED_WIRE_59),
	.rst_n(SYNTHESIZED_WIRE_67),
	.Q0(SYNTHESIZED_WIRE_21),
	.Q1(SYNTHESIZED_WIRE_23));


four_bit_reg_ce	b2v_inst7(
	.ce(SYNTHESIZED_WIRE_66),
	.clk(clk),
	.rst_n(SYNTHESIZED_WIRE_67),
	.din(reg_line),
	.out(SYNTHESIZED_WIRE_71));


four_bit_reg_ce	b2v_inst8(
	.ce(SYNTHESIZED_WIRE_66),
	.clk(clk),
	.rst_n(SYNTHESIZED_WIRE_67),
	.din(SYNTHESIZED_WIRE_71),
	.out(SYNTHESIZED_WIRE_68));


endmodule
