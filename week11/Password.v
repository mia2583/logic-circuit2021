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
// CREATED		"Fri Nov 05 17:49:52 2021"

module Password(
	Reg_1,
	Reg_2,
	Reg_3,
	Reg_4,
	Correct
);


input wire	[3:0] Reg_1;
input wire	[3:0] Reg_2;
input wire	[3:0] Reg_3;
input wire	[3:0] Reg_4;
output wire	Correct;

wire	[3:0] First;
wire	[3:0] Four;
wire	[3:0] Second;
wire	[3:0] Three;
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
wire	SYNTHESIZED_WIRE_13;




assign	SYNTHESIZED_WIRE_4 = First[0] & SYNTHESIZED_WIRE_0 & Three[0] & SYNTHESIZED_WIRE_1;

assign	SYNTHESIZED_WIRE_7 = SYNTHESIZED_WIRE_2 & Second[3] & Three[3] & SYNTHESIZED_WIRE_3;

assign	SYNTHESIZED_WIRE_0 =  ~Second[0];

assign	SYNTHESIZED_WIRE_1 =  ~Four[0];

assign	SYNTHESIZED_WIRE_8 =  ~Second[1];

assign	SYNTHESIZED_WIRE_9 =  ~Three[1];

assign	SYNTHESIZED_WIRE_10 =  ~First[2];

assign	SYNTHESIZED_WIRE_11 =  ~Second[2];

assign	SYNTHESIZED_WIRE_12 =  ~Three[2];

assign	SYNTHESIZED_WIRE_13 =  ~Four[2];

assign	SYNTHESIZED_WIRE_2 =  ~First[3];

assign	SYNTHESIZED_WIRE_3 =  ~Four[3];

assign	Correct = SYNTHESIZED_WIRE_4 & SYNTHESIZED_WIRE_5 & SYNTHESIZED_WIRE_6 & SYNTHESIZED_WIRE_7;

assign	SYNTHESIZED_WIRE_5 = First[1] & SYNTHESIZED_WIRE_8 & SYNTHESIZED_WIRE_9 & Four[1];

assign	SYNTHESIZED_WIRE_6 = SYNTHESIZED_WIRE_10 & SYNTHESIZED_WIRE_11 & SYNTHESIZED_WIRE_12 & SYNTHESIZED_WIRE_13;

assign	First = Reg_1;
assign	Second = Reg_2;
assign	Three = Reg_3;
assign	Four = Reg_4;

endmodule
