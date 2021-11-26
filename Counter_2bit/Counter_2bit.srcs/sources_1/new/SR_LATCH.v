`timescale 1ns / 1ps

module SR_Latch(S,R,Q,notQ);
input S,R;
output Q,notQ;
wire Q_int,notQ_int;

assign #1 Q_int=~(R|notQ_int);
assign #1 notQ_int=~(S|Q_int);
assign Q=Q_int;
assign notQ=notQ_int;
endmodule