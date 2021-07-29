`timescale 1ns / 1ps
module FullAdder(
	input A,B,
	input Cin,
	output O3,
	output Cout
	);
	
	assign O3 = (~A & ~B & Cin) | (~A & B & ~Cin) | (A & ~B & ~Cin) | (A & B & Cin);
	assign Cout = (A | Cin) & (B | Cin) & (A | B);

endmodule
