`timescale 1ns / 1ps

module tb;
reg ud,clk,res;
wire [3:0] num;

//module updown(up,clk,reset, y [3:0])
updown uc(ud,clk,res,num);
initial begin
    clk=0;
    ud=1;
    res=1;
end
always #25 clk=~clk;

initial begin
    #600
    ud=0;
    #200
    res=0;
    #200
    $finish;
end
endmodule