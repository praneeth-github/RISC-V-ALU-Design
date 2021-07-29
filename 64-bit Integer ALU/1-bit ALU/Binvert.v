`timescale 1ns / 1ps
module Binvert(B,B1,Bin,B2);
	input B,B1;
	input Bin;
	output B2;
	
	assign B2 = Bin? B1:B;


endmodule
