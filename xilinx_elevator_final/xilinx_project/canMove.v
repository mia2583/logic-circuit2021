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
// CREATED		"Wed Dec 22 17:48:54 2021"

module canMove(
	star,
	sharp,
	clk,
	rst_n,
	arrived,
	move,
	count
);


input wire	star;
input wire	sharp;
input wire	clk;
input wire	rst_n;
input wire	arrived;
output wire	move;
output wire	[2:0] count;

wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
reg	DFF_inst15;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_9;
wire	SYNTHESIZED_WIRE_7;




assign	SYNTHESIZED_WIRE_9 =  ~SYNTHESIZED_WIRE_0;

assign	SYNTHESIZED_WIRE_0 = star | arrived;

assign	move = SYNTHESIZED_WIRE_1 | SYNTHESIZED_WIRE_2;

assign	SYNTHESIZED_WIRE_3 =  ~DFF_inst15;


timer	b2v_inst13(
	.clk(clk),
	.rst_n(rst_n),
	.timer(SYNTHESIZED_WIRE_3),
	.close(SYNTHESIZED_WIRE_4)
	);

assign	SYNTHESIZED_WIRE_1 =  ~SYNTHESIZED_WIRE_4;


always@(posedge clk or negedge SYNTHESIZED_WIRE_5)
begin
if (!SYNTHESIZED_WIRE_5)
	begin
	DFF_inst15 <= 0;
	end
else
	begin
	DFF_inst15 <= sharp;
	end
end

assign	SYNTHESIZED_WIRE_5 =  ~rst_n;

assign	SYNTHESIZED_WIRE_2 = SYNTHESIZED_WIRE_9 & SYNTHESIZED_WIRE_7;


timer	b2v_inst4(
	.clk(clk),
	.rst_n(rst_n),
	.timer(SYNTHESIZED_WIRE_9),
	.close(SYNTHESIZED_WIRE_7),
	.count(count));


endmodule
