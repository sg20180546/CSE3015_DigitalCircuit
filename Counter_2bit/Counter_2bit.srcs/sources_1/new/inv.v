`timescale 1ns / 1ps

module counter_2bit(
input clock,reset,output [1:0] y);
reg [1:0] v;
initial v=0;

always @ (posedge(clock)) begin
    if(~reset)
        v<=0;
    else
        v<=v+1;
end
assign y=v;

endmodule