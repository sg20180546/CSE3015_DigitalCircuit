`timescale 1ns / 1ps


module SR_Latch_NAND(S,R,Q,notQ);
input S,R;
output Q,notQ;
wire Q_int,notQ_int;
assign #1 Q_int=~(~S&notQ_int);
assign #1 notQ_int=~(~R&Q_int);
assign Q=Q_int;
assign notQ=notQ_int;
endmodule
