`timescale 1ns / 1ps

module CU(
input[5:0] F,
input[1:0] op,
output[3:0] o
);

wire w2,w0;

AND and1(op[1],F[1],w2);
OR or1(op[0],w2,o[2]);

OR or2(~op[1],~F[2],o[1]);

OR or3(F[3],F[0],w0);
AND and2(w0,op[1],o[0]);

AND and3(op[0],~op[0],o[3]);






endmodule
