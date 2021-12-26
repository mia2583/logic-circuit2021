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
// CREATED		"Thu Dec 23 12:36:43 2021"

module sound(
	arrived,
	rst_n,
	clk,
	sound
);


input wire	arrived;
input wire	rst_n;
input wire	clk;
output wire	sound;






clk_div	b2v_inst(
	.clk(clk),
	.rst_n(rst_n),
	.en(arrived),
	.div_clk(sound));
	defparam	b2v_inst.cnt_num = 2;


endmodule
