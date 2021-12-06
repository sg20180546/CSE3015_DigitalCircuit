`timescale 1ns / 1ps


module D_FF_0(d,clock,q,notq,tempOut);
input d,clock,tempOut;
output q,notq;
reg v;
initial v=0;
always @(posedge (clock)) begin
            v<=d;
end
assign q=v;
assign notq=~v;

endmodule