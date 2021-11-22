`timescale 1ns / 1ps
//wire [3:0] aa, [3:0] bb ,cin;
module bit4_full_adder(input [3:0] A, input [3:0] B ,input cin, output [3:0] S,output cout);

wire c1,c2,c3;

full_adder f1(A[0],B[0],cin,S[0],c1);
full_adder f2(A[1],B[1],c1,S[1],c2);
full_adder f3(A[2],B[2],c2,S[2],c3);
full_adder f4(A[3],B[3],c3,S[3],cout);

endmodule
