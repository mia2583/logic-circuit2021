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

// Generated by Quartus Prime Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition
// Created on Fri Nov 05 14:36:28 2021

// synthesis message_off 10175

`timescale 1ns/1ns

module CU (
    input reset, input clock, input [3:0] Din,
    output Dout);

    enum int unsigned { state1=0, state2=1, state3=2, state4=3, state5=4 } fstate, reg_fstate;

    always_ff @(posedge clock)
    begin
        if (clock) begin
            fstate <= reg_fstate;
        end
    end

    always_comb begin
        if (~reset) begin
            reg_fstate <= state1;
            Dout <= 1'b0;
        end
        else begin
            Dout <= 1'b0;
            case (fstate)
                state1: begin
                    if ((Din[3:0] == 4'b0011))
                        reg_fstate <= state2;
                    else if ((Din[3:0] != 4'b0011))
                        reg_fstate <= state1;
                    // Inserting 'else' block to prevent latch inference
                    else
                        reg_fstate <= state1;

                    Dout <= 1'b0;
                end
                state2: begin
                    if ((Din[3:0] != 4'b1000))
                        reg_fstate <= state1;
                    else if ((Din[3:0] == 4'b1000))
                        reg_fstate <= state3;
                    // Inserting 'else' block to prevent latch inference
                    else
                        reg_fstate <= state2;

                    Dout <= 1'b0;
                end
                state3: begin
                    if ((Din[3:0] != 4'b1001))
                        reg_fstate <= state1;
                    else if ((Din[3:0] == 4'b1001))
                        reg_fstate <= state4;
                    // Inserting 'else' block to prevent latch inference
                    else
                        reg_fstate <= state3;

                    Dout <= 1'b0;
                end
                state4: begin
                    if ((Din[3:0] != 4'b0010))
                        reg_fstate <= state1;
                    else if ((Din[3:0] == 4'b0010))
                        reg_fstate <= state5;
                    // Inserting 'else' block to prevent latch inference
                    else
                        reg_fstate <= state4;

                    Dout <= 1'b0;
                end
                state5: begin
                    if ((Din[3:0] != 4'b0011))
                        reg_fstate <= state1;
                    else if ((Din[3:0] == 4'b0011))
                        reg_fstate <= state2;
                    // Inserting 'else' block to prevent latch inference
                    else
                        reg_fstate <= state5;

                    Dout <= 1'b1;
                end
                default: begin
                    Dout <= 1'bx;
                    $display ("Reach undefined state");
                end
            endcase
        end
    end
endmodule // CU