`timescale 1ns / 1ps

module Test_v;

	// Inputs
	reg [5:0] F;
	reg [1:0] op;

	// Outputs
	wire [3:0] o;

	// Instantiate the Unit Under Test (UUT)
	CU uut (
		.F(F), 
		.op(op), 
		.o(o)
	);

	initial begin
		// Initialize Inputs
		F = 0;
		op = 0;

		// Wait 100 ns for global reset to finish
		#100;
		op = 2;
		F = 6'b111010;
        
		// Add stimulus here

	end
      
endmodule

