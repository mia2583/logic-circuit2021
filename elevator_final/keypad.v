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
// CREATED		"Wed Dec 22 17:44:09 2021"

module keypad(
	CLK,
	RST,
	canMove,
	data_out,
	next,
	now
);


input wire	CLK;
input wire	RST;
input wire	canMove;
input wire	[9:0] data_out;
output wire	[3:0] next;
output wire	[3:0] now;

wire	SYNTHESIZED_WIRE_0;
wire	[3:0] SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_9;
wire	[3:0] SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_4;
wire	[3:0] SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_7;
wire	SYNTHESIZED_WIRE_8;

assign	next = SYNTHESIZED_WIRE_6;



assign	SYNTHESIZED_WIRE_8 = data_out[9] | data_out[7] | data_out[8] | data_out[6] | data_out[4] | data_out[5] | data_out[3] | data_out[2];


four_bit_reg_ce	b2v_inst1(
	.ce(SYNTHESIZED_WIRE_0),
	.clk(CLK),
	.rst_n(RST),
	.din(SYNTHESIZED_WIRE_1),
	.out(SYNTHESIZED_WIRE_3));


four_bit_reg_ce	b2v_inst2(
	.ce(SYNTHESIZED_WIRE_9),
	.clk(CLK),
	.rst_n(RST),
	.din(SYNTHESIZED_WIRE_3),
	.out(SYNTHESIZED_WIRE_6));

assign	SYNTHESIZED_WIRE_7 = canMove | data_out[0];


trigger	b2v_inst4(
	.Din(SYNTHESIZED_WIRE_4),
	.CLK(CLK),
	.rst_n(RST),
	.Dout(SYNTHESIZED_WIRE_0));


four_bit_reg_ce	b2v_inst5(
	.ce(SYNTHESIZED_WIRE_9),
	.clk(CLK),
	.rst_n(RST),
	.din(SYNTHESIZED_WIRE_6),
	.out(now));


trigger	b2v_inst6(
	.Din(SYNTHESIZED_WIRE_7),
	.CLK(CLK),
	.rst_n(RST),
	.Dout(SYNTHESIZED_WIRE_9));

assign	SYNTHESIZED_WIRE_4 = SYNTHESIZED_WIRE_8 | data_out[1];


decimal_to_binary	b2v_inst9(
	.Keypad(data_out),
	.bin(SYNTHESIZED_WIRE_1));


endmodule
