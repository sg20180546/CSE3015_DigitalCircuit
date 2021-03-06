`timescale 1ns / 1ps

module T_FF_0(T,clock,Q,notQ);
input T,clock;
output Q,notQ;
wire Q_int,notQ_int;
reg v;
initial v=0;

always @(posedge (clock))begin
    if(T) begin
        v<=~v;
    end
end

assign Q=v;
assign notQ=~v;

endmodule