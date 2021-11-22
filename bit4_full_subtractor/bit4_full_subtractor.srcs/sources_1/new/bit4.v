`timescale 1ns / 1ps

module bit4_full_subtractor(input [3:0] A, input [3:0] B, input bin,output [3:0] D, output bout) ;


wire b1,b2,b3;

full_subtractor f1(A[0],B[0],bin,D[0],b1);
full_subtractor f2(A[1],B[1],b1,D[1],b2);
full_subtractor f3(A[2],B[2],b2,D[2],b3);
full_subtractor f4(A[3],B[3],b3,D[3],bout);


endmodule
