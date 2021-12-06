`timescale 1ns / 1ps


module test_bench;
reg in,clk,res;
wire [3:0] y;

shift_register u_inv(in,clk,res,y[0],y[1],y[2],y[3]);

initial begin
    in=1;
    res=0;
    clk=0;
end
always #25 clk=~clk;

initial begin
        #101 in=0;
        #151 in=1;
        #151 in=0;
        #400;
        $finish;
end
endmodule

