`timescale 1ns / 1ps

module shift_register(in, clock, reset,  y0,y1,y2,y3);
input in,clock,reset;
output y0,y1,y2,y3;
wire [3:0] tempIn;
wire [2:0] tempOut;
wire [3:0] notq;


assign tempIn[0]= in&reset;
assign tempIn[1]= tempOut[0]&reset;
assign tempIn[2]= tempOut[1]&reset;
assign tempIn[3]= tempOut[2]&reset;

D_FF d1(tempIn[0],clock,tempOut[0],notq[0]);
D_FF d2(tempIn[1],clock,tempOut[1],notq[1]);
D_FF d3(tempIn[2],clock,tempOut[2],notq[2]);
D_FF d4(tempIn[3],clock,y0,notq[3]);

assign y3=tempOut[0];
assign y2=tempOut[1];
assign y1=tempOut[2];
//assign y=tempOut;
endmodule
