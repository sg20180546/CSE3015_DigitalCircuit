`timescale 1ns / 1ps


module test_bench;
reg clk,res;
wire [3:0] y;

ring_counter u_inv(clk,res,y[0],y[1],y[2],y[3]);

initial begin
    res=1;
    clk=0;
end
always #25 clk=~clk;

initial begin
        #1000;
        $finish;
end
endmodule
