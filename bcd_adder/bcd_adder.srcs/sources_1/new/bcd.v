`timescale 1ns / 1ps
//wire [3:0] aa, [3:0] bb ,cin;
module bcd(input [3:0] A, input [3:0] B ,input cin, output [3:0] S,output cout);

wire [3:0] tempS;
wire a1,a2,o1,tempC;
wire [3:0] tempB2;

//module bit4_full_adder(input [3:0] A, input [3:0] B ,input cin, output [3:0] S,output cout);
bit4_full_adder b1(A[3:0], B[3:0],cin,tempS,tempC);
assign a1=(tempS[3]&tempS[2]);
assign a2=(tempS[3]&tempS[1]);
assign cout=(tempC|a1|a2);
assign tempB2[3]=0;
assign tempB2[2]=cout;
assign tempB2[1]=cout;
assign tempB2[0]=0;

bit4_full_adder b2(tempB2,tempS,0,S,0);


endmodule