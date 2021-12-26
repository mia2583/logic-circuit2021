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
// CREATED		"Fri Dec 24 17:17:28 2021"

module fourSecond(
	fourSecond,
	close
);


input wire	[2:0] fourSecond;
output wire	close;

wire	[2:0] four;
wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;




assign	SYNTHESIZED_WIRE_0 =  ~four[1];

assign	SYNTHESIZED_WIRE_1 =  ~four[0];

assign	close = four[2] & SYNTHESIZED_WIRE_0 & SYNTHESIZED_WIRE_1;

assign	four = fourSecond;

endmodule
