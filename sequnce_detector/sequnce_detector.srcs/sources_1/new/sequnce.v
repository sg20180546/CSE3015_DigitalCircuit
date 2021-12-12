`timescale 1ns / 1ps

module sequnce(x,clock,reset,q1,q0, z);
input x,clock,reset;
output q1,q0,z;

reg [1:0] q;
reg [1:0] notq;
reg zz;
initial begin
    q=0;
    notq=0;
end
wire D1;
wire D0;
assign D1=(q[1]&~q[0])|(x&~q[1]&q[0]);
assign D0=(x&~q[1]&~q[0])|(x&q[1]&q[0])|(~x&q[1]&~q[0]);

always @(posedge (clock)) begin
    q[1]<=D1&~reset;
    q[0]<=D0&~reset;
    zz<=x&q[1]&q[0]&~reset;
end

assign q1=q[1];
assign q0=q[0];
assign z=zz;

endmodule