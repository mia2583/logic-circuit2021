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
// CREATED		"Fri Nov 05 15:45:45 2021"

module Piezo_module(
	Keypad8,
	Keypad7,
	Keypad9,
	Keypad6,
	Keypad0,
	Keypad1,
	Keypad2,
	Keypad3,
	Keypad4,
	Keypad5,
	rst,
	clk,
	Piezo
);


input wire	Keypad8;
input wire	Keypad7;
input wire	Keypad9;
input wire	Keypad6;
input wire	Keypad0;
input wire	Keypad1;
input wire	Keypad2;
input wire	Keypad3;
input wire	Keypad4;
input wire	Keypad5;
input wire	rst;
input wire	clk;
output wire	Piezo;

wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_7;
wire	SYNTHESIZED_WIRE_8;
wire	SYNTHESIZED_WIRE_9;
wire	SYNTHESIZED_WIRE_10;
wire	SYNTHESIZED_WIRE_11;
wire	SYNTHESIZED_WIRE_12;





clk_div	b2v_Do(
	.clk(clk),
	.rst(rst),
	.en(Keypad1),
	.div_clk(SYNTHESIZED_WIRE_12));
	defparam	b2v_Do.cnt_num = 3822;


clk_div	b2v_H_Do(
	.clk(clk),
	.rst(rst),
	.en(Keypad8),
	.div_clk(SYNTHESIZED_WIRE_3));
	defparam	b2v_H_Do.cnt_num = 1911;


clk_div	b2v_H_Me(
	.clk(clk),
	.rst(rst),
	.en(Keypad0),
	.div_clk(SYNTHESIZED_WIRE_9));
	defparam	b2v_H_Me.cnt_num = 1516;


clk_div	b2v_H_Re(
	.clk(clk),
	.rst(rst),
	.en(Keypad9),
	.div_clk(SYNTHESIZED_WIRE_4));
	defparam	b2v_H_Re.cnt_num = 1702;

assign	SYNTHESIZED_WIRE_6 = SYNTHESIZED_WIRE_0 | SYNTHESIZED_WIRE_1 | SYNTHESIZED_WIRE_2;

assign	SYNTHESIZED_WIRE_7 = SYNTHESIZED_WIRE_3 | SYNTHESIZED_WIRE_4 | SYNTHESIZED_WIRE_5;

assign	Piezo = SYNTHESIZED_WIRE_6 | SYNTHESIZED_WIRE_7 | SYNTHESIZED_WIRE_8;

assign	SYNTHESIZED_WIRE_8 = SYNTHESIZED_WIRE_9 | SYNTHESIZED_WIRE_10 | SYNTHESIZED_WIRE_11 | SYNTHESIZED_WIRE_12;


clk_div	b2v_Me(
	.clk(clk),
	.rst(rst),
	.en(Keypad3),
	.div_clk(SYNTHESIZED_WIRE_11));
	defparam	b2v_Me.cnt_num = 3033;


clk_div	b2v_Pa(
	.clk(clk),
	.rst(rst),
	.en(Keypad4),
	.div_clk(SYNTHESIZED_WIRE_2));
	defparam	b2v_Pa.cnt_num = 2863;


clk_div	b2v_Ra(
	.clk(clk),
	.rst(rst),
	.en(Keypad6),
	.div_clk(SYNTHESIZED_WIRE_1));
	defparam	b2v_Ra.cnt_num = 2272;


clk_div	b2v_Re(
	.clk(clk),
	.rst(rst),
	.en(Keypad2),
	.div_clk(SYNTHESIZED_WIRE_10));
	defparam	b2v_Re.cnt_num = 3405;


clk_div	b2v_Si(
	.clk(clk),
	.rst(rst),
	.en(Keypad7),
	.div_clk(SYNTHESIZED_WIRE_5));
	defparam	b2v_Si.cnt_num = 2024;


clk_div	b2v_Sol(
	.clk(clk),
	.rst(rst),
	.en(Keypad5),
	.div_clk(SYNTHESIZED_WIRE_0));
	defparam	b2v_Sol.cnt_num = 2551;


endmodule
