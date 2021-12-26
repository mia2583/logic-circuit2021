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
// CREATED		"Thu Dec 23 13:41:16 2021"

module canMove2(
	star,
	sharp,
	clk,
	arrived,
	rst,
	move,
	count
);


input wire	star;
input wire	sharp;
input wire	clk;
input wire	arrived;
input wire	rst;
output wire	move;
output wire	[2:0] count;

wire	SYNTHESIZED_WIRE_0;
reg	DFF_inst15;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_9;
wire	SYNTHESIZED_WIRE_10;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_7;

assign	SYNTHESIZED_WIRE_6 = 1;



assign	SYNTHESIZED_WIRE_10 =  ~SYNTHESIZED_WIRE_0;

assign	SYNTHESIZED_WIRE_0 = star | arrived;

assign	move = DFF_inst15 | SYNTHESIZED_WIRE_1;


always@(posedge clk or negedge SYNTHESIZED_WIRE_9)
begin
if (!SYNTHESIZED_WIRE_9)
	begin
	DFF_inst15 <= 0;
	end
else
	begin
	DFF_inst15 <= sharp;
	end
end

assign	SYNTHESIZED_WIRE_9 =  ~rst;

assign	SYNTHESIZED_WIRE_1 = SYNTHESIZED_WIRE_10 & SYNTHESIZED_WIRE_4;


clk_div	b2v_inst3(
	.clk(clk),
	.rst_n(SYNTHESIZED_WIRE_9),
	.en(SYNTHESIZED_WIRE_6),
	.div_clk(SYNTHESIZED_WIRE_7));
	defparam	b2v_inst3.cnt_num = 1000;


timer	b2v_inst4(
	.clk(SYNTHESIZED_WIRE_7),
	.rst_n(rst),
	.timer(SYNTHESIZED_WIRE_10),
	.close(SYNTHESIZED_WIRE_4),
	.count(count));



endmodule
