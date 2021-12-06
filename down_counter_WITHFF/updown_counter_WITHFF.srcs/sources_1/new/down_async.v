`timescale 1ns / 1ps

module down_async(clock, y [3:0]);
input clock;
output [3:0] y;
wire [3:0] notq;
wire [3:0] q;
T_FF_1 t1(1,clock,q[0],notq[0]);
T_FF_1 t2(1,notq[0],q[1],notq[1]);
T_FF_1 t3(1,notq[1],q[2],notq[2]);
T_FF_1 t4(1,notq[2],q[3],notq[3]);

assign y=notq;
endmodule
