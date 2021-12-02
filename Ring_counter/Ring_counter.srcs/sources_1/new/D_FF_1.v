`timescale 1ns / 1ps


module D_FF_1(d,clock,q,notq);
input d,clock;
output q,notq;
reg v;
initial v=1;
always @(posedge (clock)) begin
    v<=d;
end
assign q=v;
assign notq=~v;

endmodule