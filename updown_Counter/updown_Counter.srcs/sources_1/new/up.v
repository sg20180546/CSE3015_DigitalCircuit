`timescale 1ns / 1ps


module updown(up,clk,reset, y [3:0]);
input up,clk,reset;
output [3:0] y;
reg [3:0] v;
initial v=0;
always @ (posedge (clk)) begin
    if(~reset)
        v<=0;
    else if(up)
        v<=v+1;
    else
        v<=v-1;
end
assign y=v;
endmodule
