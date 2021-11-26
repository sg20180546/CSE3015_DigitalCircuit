`timescale 1ns / 1ps

module decade_counter_2421(input clock,reset,output [3:0] y);
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
bcd_convertor bc1(v[3],v[2],v[1],v[0],y[3],y[2],y[1],y[0]);
//assign y=v;
endmodule
