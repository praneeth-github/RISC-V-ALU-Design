`timescale 1ns / 1ps
module ALU(
	input [63:0] A,
	input [63:0] B,
	input [3:0] OP,
	output [63:0] O,
	output Ovf,
	output Zero
	);
	
	wire [1:0] op;
	wire Ain,Bin,Cin;
	
	assign Ain = OP[3];
	assign Bin = OP[2];
	assign Cin = OP[2];
	assign op[0] = OP[0];
	assign op[1] = OP[1];
	
	genvar i;
	
	wire [64:0] w;
	wire [63:0] Set;
	wire [62:0] w2;
	wire [63:0] of;
	
	assign w[0] = Cin;
	
	wire Less;
	assign Less = 0;
	
	ALU1 top1(A[0],B[0],Ain,Bin,op,w[0],Set[63],w[1],O[0],Set[0],of[0]);
	
	generate
		for(i=1;i<64;i=i+1)
		begin : gen_loop
			ALU1 top1(A[i],B[i],Ain,Bin,op,w[i],Less,w[i+1],O[i],Set[i],of[i]);
		end
	endgenerate
	
	assign Ovf = of[63];
	
	
	OR or5(O[0],O[1],w2[0]);
	generate
		for(i=1;i<63;i=i+1)
		begin : gen_loop1
			OR or6(w2[i-1],O[i+1],w2[i]);
		end
	endgenerate
	assign Zero = ~w2[62];

endmodule
