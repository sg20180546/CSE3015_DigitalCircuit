`timescale 1ps/1ps

module decade_counter(clock,reset,[3:0] y);
input clock,reset;
output y;

reg [3:0] v;
initial begin
    v=0;
end

always @(posedge clock) begin
    if(~reset) begin
        v<=0;
    end else if(v==9) begin
        v<=0
    end else begin
        v<=v+1;
    end
end
assign y=v;

endmodule