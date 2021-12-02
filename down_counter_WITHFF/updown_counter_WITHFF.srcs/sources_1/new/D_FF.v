`timescale 1ns / 1ps

module SR_FF(S,R,clock,Q,notQ);
input S,R,clock;
output Q,notQ;
wire Q_int,notQ_int;
reg v;
initial v=0;

assign #1 Q_int=~(R|notQ_int);
assign #1 notQ_int=~(S|Q_int);

always @(posedge (clock))begin
    v<=Q_int;
end

assign Q=v;
assign notQ=~v;

endmodule