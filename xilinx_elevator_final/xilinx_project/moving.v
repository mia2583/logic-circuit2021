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
// CREATED		"Wed Dec 22 16:07:46 2021"

module moving(
	rst,
	clk,
	same,
	way,
	next
);


input wire	rst;
input wire	clk;
input wire	same;
input wire	way;
output wire	[3:0] next;






stop	b2v_inst4(
	.reset(rst),
	.clock(clk),
	.same(same),
	.way(way),
	.nextFloor(next));
	defparam	b2v_inst4.state1 = 0;
	defparam	b2v_inst4.state2 = 1;
	defparam	b2v_inst4.state3 = 2;
	defparam	b2v_inst4.state4 = 3;
	defparam	b2v_inst4.state5 = 8;
	defparam	b2v_inst4.state6 = 4;
	defparam	b2v_inst4.state7 = 5;
	defparam	b2v_inst4.state8 = 6;
	defparam	b2v_inst4.state9 = 7;


endmodule
