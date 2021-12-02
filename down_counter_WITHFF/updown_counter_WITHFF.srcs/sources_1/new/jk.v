`timescale 1ns / 1ps


module T_FF(T,clock,q,notq);
input T,clock;
output q,notq;
wire y;


D_FF(~q,clock,y,notq);

assign q=y;
assign notq=~y;

endmodule
