`timescale 1ns / 1ps


module D_latch(input D,output Q,output notQ);
SR_Latch S1(D,~D,Q,notQ);
endmodule
