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
// CREATED		"Wed Dec 22 17:48:18 2021"

module timer(
	clk,
	timer,
	rst_n,
	close,
	count
);


input wire	clk;
input wire	timer;
input wire	rst_n;
output wire	close;
output wire	[2:0] count;

wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	[2:0] SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;

assign	count = SYNTHESIZED_WIRE_2;




countFour	b2v_inst(
	.clk(clk),
	.rst(SYNTHESIZED_WIRE_0),
	.CNT5(SYNTHESIZED_WIRE_2));

assign	close = SYNTHESIZED_WIRE_1 & timer;

assign	SYNTHESIZED_WIRE_3 =  ~rst_n;


fourSecond	b2v_inst3(
	.fiveSecond(SYNTHESIZED_WIRE_2),
	.close(SYNTHESIZED_WIRE_1));

assign	SYNTHESIZED_WIRE_0 = SYNTHESIZED_WIRE_3 & timer;


endmodule
