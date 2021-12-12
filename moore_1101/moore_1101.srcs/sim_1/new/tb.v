`timescale 1ns / 1ps


module test_bench;
reg xx,clk,res;
wire [2:0] QQ;
wire z;
//module sequnce(x,clock,reset,q1,q0, z);
moore_1101 u_inv(xx,clk,res,QQ[2],QQ[1],QQ[0],z);

initial begin
    xx=0;
    res=0;
    clk=0;
end
always #50 clk=~clk;

initial begin
        #50 xx=1;
        #50
        #50 xx=1;
        #50
        #50 xx=0;
        #50
        #50 xx=1;
//        #100 res=1;
        #300;
        $finish;
end
endmodule
