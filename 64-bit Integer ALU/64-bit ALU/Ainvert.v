`timescale 1ns / 1ps
module Ainvert(A,A1,Ain,A2);
	input A,A1;
	input Ain;
	output A2;
	
	assign A2 = Ain? A1:A;


endmodule
