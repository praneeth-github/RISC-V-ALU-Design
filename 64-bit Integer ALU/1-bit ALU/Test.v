`timescale 1ns / 1ps



module Test_v;

	// Inputs
	reg A;
	reg B;
	reg Ain;
	reg Bin;
	reg [1:0] Op;
	reg Cin;
	reg Less;

	// Outputs
	wire Cout;
	wire O;
	wire Set;
	wire Ovf;

	// Instantiate the Unit Under Test (UUT)
	ALU uut (
		.A(A), 
		.B(B), 
		.Ain(Ain), 
		.Bin(Bin), 
		.Op(Op), 
		.Cin(Cin), 
		.Less(Less), 
		.Cout(Cout), 
		.O(O), 
		.Set(Set), 
		.Ovf(Ovf)
	);

	initial begin
		// Initialize Inputs
		A = 1;
		B = 1;
		Ain = 0;
		Bin = 0;
		Op = 2;
		Cin = 0;
		Less = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

