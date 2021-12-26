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
// CREATED		"Wed Oct 27 22:14:10 2021"

module week9_2(
	CLK,
	RST,
	data_out,
	out1,
	out2
);


input wire	CLK;
input wire	RST;
input wire	[9:0] data_out;
output wire	[3:0] out1;
output wire	[3:0] out2;

wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_6;
wire	[3:0] SYNTHESIZED_WIRE_2;
wire	[3:0] SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_5;

assign	out1 = SYNTHESIZED_WIRE_4;



assign	SYNTHESIZED_WIRE_0 = data_out[9] | data_out[7] | data_out[8] | data_out[6] | data_out[4] | data_out[5] | data_out[3] | data_out[0];

assign	SYNTHESIZED_WIRE_5 = data_out[1] | SYNTHESIZED_WIRE_0 | data_out[2];


decimal_to_binary	b2v_inst6(
	.Keypad(data_out),
	.bin(SYNTHESIZED_WIRE_2));


four_bit_register	b2v_inst7(
	.Ce(SYNTHESIZED_WIRE_6),
	.CLK(CLK),
	.RST_N(RST),
	.Din(SYNTHESIZED_WIRE_2),
	.Dout(SYNTHESIZED_WIRE_4));


four_bit_register	b2v_inst8(
	.Ce(SYNTHESIZED_WIRE_6),
	.CLK(CLK),
	.RST_N(RST),
	.Din(SYNTHESIZED_WIRE_4),
	.Dout(out2));


trigger	b2v_inst9(
	.Din(SYNTHESIZED_WIRE_5),
	.CLK(CLK),
	.RST(RST),
	.Dout(SYNTHESIZED_WIRE_6));


endmodule
