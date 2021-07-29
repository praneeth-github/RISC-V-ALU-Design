`timescale 1ns / 1ps

module Test_v;

	// Inputs
	reg [63:0] A;
	reg [63:0] B;
	reg [3:0] OP;

	// Outputs
	wire [63:0] O;
	wire Ovf;
	wire Zero;

	// Instantiate the Unit Under Test (UUT)
	ALU uut (
		.A(A), 
		.B(B), 
		.OP(OP), 
		.O(O), 
		.Ovf(Ovf), 
		.Zero(Zero)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		B = 0;
		OP = 0;

		// Wait 100 ns for global reset to finish
		#100;
		A = 7;
		B = 5;
		OP = 4'b0010;
        
		// Add stimulus here

	end
      
endmodule

