`timescale 1ns / 1ps


module updown(up,clk,reset, y [3:0],a,b,c,d,e,f,g,pt);
input up,clk,reset;
output [3:0] y;
output a,b,c,d,e,f,g,pt;
reg [3:0] v;
initial v=0;
always @ (posedge (clk)) begin
    if(reset)
        v<=0;
    else if(up)
        v<=v+1;
    else
        v<=v-1;
end
assign y=v;

segment_7_display s7(v[3],v[2],v[1],v[0],a,b,c,d,e,f,g,pt) ;

endmodule
