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
// CREATED		"Wed Dec 22 17:50:28 2021"

module sub(
	A,
	B,
	sign,
	sub
);


input wire	[3:0] A;
input wire	[3:0] B;
output wire	sign;
output wire	[3:0] sub;

wire	[3:0] sminus;
wire	[3:0] splus;
wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_30;
wire	SYNTHESIZED_WIRE_31;
wire	SYNTHESIZED_WIRE_8;
wire	SYNTHESIZED_WIRE_9;
wire	SYNTHESIZED_WIRE_11;
wire	SYNTHESIZED_WIRE_12;
wire	SYNTHESIZED_WIRE_14;
wire	SYNTHESIZED_WIRE_15;
wire	SYNTHESIZED_WIRE_17;
wire	SYNTHESIZED_WIRE_18;
wire	SYNTHESIZED_WIRE_21;
wire	SYNTHESIZED_WIRE_22;
wire	SYNTHESIZED_WIRE_23;
wire	SYNTHESIZED_WIRE_24;
wire	SYNTHESIZED_WIRE_25;
wire	SYNTHESIZED_WIRE_28;
wire	SYNTHESIZED_WIRE_29;

assign	sign = SYNTHESIZED_WIRE_8;
assign	SYNTHESIZED_WIRE_30 = 1;
assign	SYNTHESIZED_WIRE_31 = 0;




FA	b2v_inst(
	.A(A[3]),
	.B(SYNTHESIZED_WIRE_0),
	.Cin(SYNTHESIZED_WIRE_1),
	.S(splus[3]),
	.Cout(SYNTHESIZED_WIRE_29));

assign	SYNTHESIZED_WIRE_0 = SYNTHESIZED_WIRE_30 ^ B[3];

assign	SYNTHESIZED_WIRE_21 = SYNTHESIZED_WIRE_30 ^ B[2];

assign	SYNTHESIZED_WIRE_23 = B[1] ^ SYNTHESIZED_WIRE_30;

assign	SYNTHESIZED_WIRE_25 = B[0] ^ SYNTHESIZED_WIRE_30;

assign	SYNTHESIZED_WIRE_28 = SYNTHESIZED_WIRE_31 ^ SYNTHESIZED_WIRE_30;


mx_4bit_2x1	b2v_inst15(
	.ce(SYNTHESIZED_WIRE_8),
	.s0(splus),
	.s1(sminus),
	.m_out(sub));

assign	SYNTHESIZED_WIRE_9 =  ~splus[3];

assign	SYNTHESIZED_WIRE_15 =  ~splus[1];

assign	SYNTHESIZED_WIRE_18 =  ~splus[0];

assign	SYNTHESIZED_WIRE_12 =  ~splus[2];


FA	b2v_inst21(
	.A(SYNTHESIZED_WIRE_9),
	.B(SYNTHESIZED_WIRE_31),
	.Cin(SYNTHESIZED_WIRE_11),
	.S(sminus[3])
	);


FA	b2v_inst22(
	.A(SYNTHESIZED_WIRE_12),
	.B(SYNTHESIZED_WIRE_31),
	.Cin(SYNTHESIZED_WIRE_14),
	.S(sminus[2]),
	.Cout(SYNTHESIZED_WIRE_11));


FA	b2v_inst23(
	.A(SYNTHESIZED_WIRE_15),
	.B(SYNTHESIZED_WIRE_31),
	.Cin(SYNTHESIZED_WIRE_17),
	.S(sminus[1]),
	.Cout(SYNTHESIZED_WIRE_14));


FA	b2v_inst24(
	.A(SYNTHESIZED_WIRE_18),
	.B(SYNTHESIZED_WIRE_30),
	.Cin(SYNTHESIZED_WIRE_31),
	.S(sminus[0]),
	.Cout(SYNTHESIZED_WIRE_17));


FA	b2v_inst3(
	.A(A[2]),
	.B(SYNTHESIZED_WIRE_21),
	.Cin(SYNTHESIZED_WIRE_22),
	.S(splus[2]),
	.Cout(SYNTHESIZED_WIRE_1));


FA	b2v_inst4(
	.A(A[1]),
	.B(SYNTHESIZED_WIRE_23),
	.Cin(SYNTHESIZED_WIRE_24),
	.S(splus[1]),
	.Cout(SYNTHESIZED_WIRE_22));


FA	b2v_inst5(
	.A(A[0]),
	.B(SYNTHESIZED_WIRE_25),
	.Cin(SYNTHESIZED_WIRE_30),
	.S(splus[0]),
	.Cout(SYNTHESIZED_WIRE_24));




FA	b2v_inst8(
	.A(SYNTHESIZED_WIRE_31),
	.B(SYNTHESIZED_WIRE_28),
	.Cin(SYNTHESIZED_WIRE_29),
	.S(SYNTHESIZED_WIRE_8)
	);


endmodule
