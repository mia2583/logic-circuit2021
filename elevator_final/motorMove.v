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
// CREATED		"Wed Dec 22 17:39:35 2021"

module motorMove(
	way,
	rst,
	clk,
	stop,
	Motor_A,
	Motor_B,
	MotorAA,
	Motor_BB
);


input wire	way;
input wire	rst;
input wire	clk;
input wire	stop;
output wire	Motor_A;
output wire	Motor_B;
output wire	MotorAA;
output wire	Motor_BB;

wire	SYNTHESIZED_WIRE_22;
wire	SYNTHESIZED_WIRE_23;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_24;
wire	SYNTHESIZED_WIRE_25;
wire	SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_8;
wire	SYNTHESIZED_WIRE_11;
wire	SYNTHESIZED_WIRE_17;
wire	SYNTHESIZED_WIRE_18;
wire	SYNTHESIZED_WIRE_20;

assign	SYNTHESIZED_WIRE_6 = 1;



assign	SYNTHESIZED_WIRE_2 =  ~SYNTHESIZED_WIRE_22;

assign	SYNTHESIZED_WIRE_3 =  ~SYNTHESIZED_WIRE_23;

assign	SYNTHESIZED_WIRE_24 =  ~stop;

assign	Motor_A = SYNTHESIZED_WIRE_2 & SYNTHESIZED_WIRE_3 & SYNTHESIZED_WIRE_24;


clk_div	b2v_inst12(
	.clk(clk),
	.rst_n(SYNTHESIZED_WIRE_25),
	.en(SYNTHESIZED_WIRE_6),
	.div_clk(SYNTHESIZED_WIRE_20));
	defparam	b2v_inst12.cnt_num = 100;

assign	Motor_B = SYNTHESIZED_WIRE_22 & SYNTHESIZED_WIRE_8 & SYNTHESIZED_WIRE_24;

assign	MotorAA = SYNTHESIZED_WIRE_23 & SYNTHESIZED_WIRE_11 & SYNTHESIZED_WIRE_24;

assign	Motor_BB = SYNTHESIZED_WIRE_22 & SYNTHESIZED_WIRE_23 & SYNTHESIZED_WIRE_24;

assign	SYNTHESIZED_WIRE_8 =  ~SYNTHESIZED_WIRE_23;

assign	SYNTHESIZED_WIRE_22 = way ^ SYNTHESIZED_WIRE_17;

assign	SYNTHESIZED_WIRE_23 = way ^ SYNTHESIZED_WIRE_18;

assign	SYNTHESIZED_WIRE_11 =  ~SYNTHESIZED_WIRE_22;



count_4	b2v_inst51(
	.clk(SYNTHESIZED_WIRE_20),
	.rst_n(SYNTHESIZED_WIRE_25),
	.Q0(SYNTHESIZED_WIRE_17),
	.Q1(SYNTHESIZED_WIRE_18));

assign	SYNTHESIZED_WIRE_25 =  ~rst;


endmodule
