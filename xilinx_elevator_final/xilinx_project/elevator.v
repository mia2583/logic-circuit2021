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
// CREATED		"Thu Dec 23 13:40:40 2021"

module elevator(
	clk,
	rst,
	star,
	sharp,
	key,
	arrived,
	green1,
	green2,
	green3,
	green4,
	red1,
	red2,
	red3,
	red4,
	a,
	b,
	c,
	d,
	e,
	f,
	g,
	motor_a,
	motor_b,
	motor_aa,
	motor_bb,
	sound,
	close
);


input wire	clk;
input wire	rst;
input wire	star;
input wire	sharp;
input wire	[9:0] key;
output wire	arrived;
output wire	green1;
output wire	green2;
output wire	green3;
output wire	green4;
output wire	red1;
output wire	red2;
output wire	red3;
output wire	red4;
output wire	a;
output wire	b;
output wire	c;
output wire	d;
output wire	e;
output wire	f;
output wire	g;
output wire	motor_a;
output wire	motor_b;
output wire	motor_aa;
output wire	motor_bb;
output wire	sound;
output wire	close;

wire	[3:0] after;
wire	[3:0] result;
wire	SYNTHESIZED_WIRE_29;
wire	SYNTHESIZED_WIRE_30;
wire	SYNTHESIZED_WIRE_31;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_7;
wire	SYNTHESIZED_WIRE_8;
wire	SYNTHESIZED_WIRE_32;
wire	SYNTHESIZED_WIRE_12;
wire	[3:0] SYNTHESIZED_WIRE_33;
wire	[3:0] SYNTHESIZED_WIRE_15;
wire	[3:0] SYNTHESIZED_WIRE_34;
wire	SYNTHESIZED_WIRE_20;
wire	SYNTHESIZED_WIRE_21;
wire	SYNTHESIZED_WIRE_23;
wire	SYNTHESIZED_WIRE_27;

assign	arrived = SYNTHESIZED_WIRE_29;
assign	close = SYNTHESIZED_WIRE_6;
assign	SYNTHESIZED_WIRE_3 = 1;




canMove2	b2v_inst(
	.arrived(SYNTHESIZED_WIRE_29),
	.star(star),
	.clk(clk),
	.rst(rst),
	.sharp(sharp),
	.move(SYNTHESIZED_WIRE_6)
	);

assign	SYNTHESIZED_WIRE_23 =  ~SYNTHESIZED_WIRE_30;


clk_div	b2v_inst10(
	.clk(clk),
	.rst_n(SYNTHESIZED_WIRE_31),
	.en(SYNTHESIZED_WIRE_3),
	.div_clk(SYNTHESIZED_WIRE_20));
	defparam	b2v_inst10.cnt_num = 1000;

assign	SYNTHESIZED_WIRE_21 =  ~SYNTHESIZED_WIRE_4;

assign	SYNTHESIZED_WIRE_7 =  ~SYNTHESIZED_WIRE_30;

assign	SYNTHESIZED_WIRE_8 = SYNTHESIZED_WIRE_6 & SYNTHESIZED_WIRE_7;


keypad	b2v_inst14(
	.canMove(SYNTHESIZED_WIRE_8),
	.CLK(clk),
	.RST(SYNTHESIZED_WIRE_31),
	.data_out(key),
	.next(SYNTHESIZED_WIRE_34),
	.now(SYNTHESIZED_WIRE_15));


Led	b2v_inst15(
	.moving(SYNTHESIZED_WIRE_30),
	.Green1(green1),
	.Green2(green2),
	.Green3(green3),
	.Green4(green4),
	.Red1(red1),
	.Red2(red2),
	.Red3(red3),
	.Red4(red4));



motorMove	b2v_inst17(
	.rst(rst),
	.way(SYNTHESIZED_WIRE_32),
	.clk(clk),
	.stop(SYNTHESIZED_WIRE_12),
	.Motor_A(motor_a),
	.Motor_B(motor_b),
	.MotorAA(motor_aa),
	.Motor_BB(motor_bb));

assign	SYNTHESIZED_WIRE_12 =  ~SYNTHESIZED_WIRE_30;


b2seg_bus	b2v_inst19(
	.b_in(SYNTHESIZED_WIRE_33),
	.a(a),
	.b(b),
	.c(c),
	.d(d),
	.e(e),
	.f(f),
	.g(g));


sub	b2v_inst2(
	.A(SYNTHESIZED_WIRE_15),
	.B(SYNTHESIZED_WIRE_34),
	.sign(SYNTHESIZED_WIRE_32),
	.sub(result));


sound	b2v_inst20(
	.clk(clk),
	.rst_n(SYNTHESIZED_WIRE_31),
	.arrived(SYNTHESIZED_WIRE_29),
	.sound(sound));

assign	SYNTHESIZED_WIRE_27 = result[3] | result[1] | result[0] | result[2];

assign	SYNTHESIZED_WIRE_30 = after[3] | after[1] | after[0] | after[2];


moving	b2v_inst5(
	.rst(SYNTHESIZED_WIRE_31),
	.clk(SYNTHESIZED_WIRE_20),
	.same(SYNTHESIZED_WIRE_21),
	.way(SYNTHESIZED_WIRE_32),
	.next(SYNTHESIZED_WIRE_33));

assign	SYNTHESIZED_WIRE_31 =  ~rst;


trigger	b2v_inst7(
	.Din(SYNTHESIZED_WIRE_23),
	.CLK(clk),
	.rst_n(SYNTHESIZED_WIRE_31),
	.Dout(SYNTHESIZED_WIRE_29));


sub	b2v_inst8(
	.A(SYNTHESIZED_WIRE_33),
	.B(SYNTHESIZED_WIRE_34),
	
	.sub(after));

assign	SYNTHESIZED_WIRE_4 = SYNTHESIZED_WIRE_27 & SYNTHESIZED_WIRE_30;


endmodule
