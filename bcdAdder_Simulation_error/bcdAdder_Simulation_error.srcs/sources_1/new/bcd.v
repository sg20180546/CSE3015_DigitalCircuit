`timescale 1ns / 1ps
//wire [3:0] aa, [3:0] bb ,cin;
//reg [3:0] S;
//reg cout;
module bcd_adder(input [3:0] A, input [3:0] B ,input cin, output [3:0] S,output cout);
wire xx;
wire [3:0] tempS;
wire a1,a2,o1,tempC;
wire [3:0] tempB2;

//module bit4_full_adder(input [3:0] A, input [3:0] B ,input cin, output [3:0] S,output cout);
bit4_full_adder b1(A[3:0], B[3:0],cin,tempS[3:0],tempC);

assign a1=(tempS[3]&tempS[2]);
assign a2=tempS[3]&tempS[1];
assign o1=tempC|a1|a2;

//full_
//module full_adder(a,b,carryin,sum,carryout) ;

wire c1,c2,c3,c4;
full_adder f1(0,tempS[0],0,S[0],c1);
full_adder f2(o1,tempS[1],c1,S[1],c2);
full_adder f3(o1,tempS[2],c2,S[2],c3);
full_adder f4(0,tempS[3],c3,S[3],c4);

assign cout=o1;

//assign tempB2[3]=0;
//assign tempB2[2]=cout;
//assign tempB2[1]=cout;
//assign tempB2[0]=0;

//module bit4_full_adder(input [3:0] A, input [3:0] B ,input cin, output [3:0] S,output cout);
//bit4_full_adder b2(tempB2[3:0],tempS[3:0],1'b0,S[3:0],xx);


endmodule
