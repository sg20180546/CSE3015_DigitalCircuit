`timescale 1ns / 1ps


module D_FF(D,clk,Q,notQ);
input D,clk;
output Q,notQ;
always@ (posedge clk);
assign D_temp=D&clk;
assign notD_temp=~D&clk;

//module SR_FF(S,R,clk,Q,notQ);
SR_FF F1(D_temp,notD_temp,clk,Q,notQ);

endmodule
