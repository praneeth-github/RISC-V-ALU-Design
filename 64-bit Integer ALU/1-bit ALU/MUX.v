`timescale 1ns / 1ps
module MUX(O1,O2,O3,Less,Op,O);
	input O1,O2,O3,Less;
	input [1:0] Op;
	output O;
	
	reg tmp;
	
	
	always @(*)
   begin
		case(Op)
			2'b00:
				tmp = O1;
			2'b01:
				tmp = O2;
			2'b10:
				tmp = O3;
			2'b11:
				tmp = Less;
		endcase
	end
	
	assign O = tmp;

endmodule