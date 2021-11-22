`timescale 1ns / 1ps


module SR_FF_NAND(S,R,clk,Q,notQ);
input S,R,clk;
output Q,notQ;
always@ (posedge clk);
assign S_temp=S&clk;
assign R_temp=R&clk;
//module SR_Latch(S,R,Q,notQ);
SR_Latch_NAND L1(S_temp,R_temp,Q,notQ);

endmodule