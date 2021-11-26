`timescale 1ns / 1ps

module tb;
reg xx;
reg res;
wire [1:0] num;

counter_2bit tb(xx,res,num);

initial begin
    xx=0;
    res=1;
end
always #50 xx=~xx;

initial begin
    #400
    res=0;
    #200
    $finish;
end
endmodule
