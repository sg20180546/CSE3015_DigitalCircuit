`timescale 1ns/1ps

module SR_Latch(S,R,Q,notQ);
input S,R;
output Q,notQ;
wire Q_int,notQ_int;


assign #1 Q_int=~(R,notQ_int);
assign #1 notQ_int=~(S|Q_int);
assign Q=Q_int;
assign notQ=notQ_int;

endmodule



module counter_2bit(clock,reset,[1:0] y);
reg [1:0] v;
initial v=0;

always @(posedge clock ) begin
    if(~reset) begin
        v<=0
    end else begin
        v<=v+1;
    end
end
assign y=v;

endmodule