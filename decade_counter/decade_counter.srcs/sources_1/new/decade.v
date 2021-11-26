`timescale 1ns / 1ps

module decade_counter(input clock,reset,output [3:0] y);
reg [3:0] v;
initial v=0;

always @ (posedge(clock)) begin
    if(~reset)
        v<=0;
     else if(v==9)
            v<=0;
     else
        v<=v+1;
end

assign y=v;
endmodule

