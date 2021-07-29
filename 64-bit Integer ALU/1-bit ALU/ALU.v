`timescale 1ns / 1ps
module ALU(A,B,Ain,Bin,Op,Cin,Less,Cout,O,Set,Ovf);
	input A,B;
	input Ain,Bin;
	input [1:0] Op;
	input Cin;
	input Less;
	output Cout;
	output O;
	output Set;
	output Ovf;
	
	wire O1,O2,O3;
	
	wire A1;
	wire A2;
	assign A1=~A;
	Ainvert ain1(A,A1,Ain,A2);
	
	wire B1;
	wire B2;
	assign B1=~B;
	Binvert bin1(B,B1,Bin,B2);
	
	AND and1(A2,B2,O1);
	OR or1(A2,B2,O2);
	FullAdder fulladder1(A2,B2,Cin,O3,Cout);
	
	MUX mux1(O1,O2,O3,Less,Op,O);
	
	Overflow over1(Cin,Cout,Ovf);
	
	assign Set = O3;


endmodule