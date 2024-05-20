// Copyright (C) 2022  Intel Corporation. All rights reserved.
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

// *****************************************************************************
// This file contains a Verilog test bench template that is freely editable to  
// suit user's needs .Comments are provided in each section to help the user    
// fill out necessary details.                                                  
// *****************************************************************************
// Generated on "05/20/2024 02:02:00"
                                                                                
// Verilog Test Bench template for design : float_sequence
// 
// Simulation tool : ModelSim (Verilog)
// 

`timescale 1 ns/ 1 ps
module float_sequence_vlg_tst();
// constants                                           
// general purpose registers
reg eachvec;
// test vector input registers
reg [31:0] A;
reg clk;
reg last;
reg valid;
// wires                                               
wire [31:0]  s_data;
wire s_valid;

// assign statements (if any)                          
float_sequence dub (
// port map - connection between master ports and signals/registers   
	.A(A),
	.clk(clk),
	.last(last),
	.s_data(s_data),
	.s_valid(s_valid),
	.valid(valid)
);
	initial                                                
		begin                                                  
		// code that executes only once                        
		// insert code here --> begin  
			clk = 0;
			A = 32'h4201_51EC; //32,33
			valid = 1'b0;
			last = 1'b0;
			#10;
			valid = 1'b1;
			#10;
			A = 32'h4242_147B; //48,52
			#10;
			A = 32'h3F40_0000; //0,75
			#10;
			A = 32'h3F3A_E148; //0,73
			#10;
			A = 32'h3F3A_E140; 
			#10;
			A = 32'h3F3A_E118; 
			#10;
			A = 32'h3F3A_E048; 
			#10;
			A = 32'h3F3A_0148; 
			#10;
			A = 32'h3E94_7AE1; //0,29
			last = 1'b1;
			#10; 
		// --> end                                             
		$display("Running testbench");                       
		end 
	initial
		$monitor("clk=%b A=%h last=%b valid=%b s_data=%h s_valid=%b", clk, A, last, valid, s_data, s_valid)
	initial
		$dumpvars
always                                                 
// optional sensitivity list                           
// @(event1 or event2 or .... eventn)                  
begin                                                  
// code executes for every event on sensitivity list   
// insert code here --> begin                          
    #5  clk =  ! clk;                                                   
@eachvec;                                              
// --> end                                             
end                                                    
endmodule

