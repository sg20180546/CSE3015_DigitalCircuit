`timescale 1ns / 1ps

module tb;
reg xx;
reg res;
wire [3:0] num;

decade_counter_2421 counter(xx,res,num);

initial begin
    xx=0;
    res=1;
end
always #25 xx=~xx;

initial begin
    #800
    res=0;
    #200
    $finish;
end
endmodule
