`timescale 1ns / 1ps

module moore_1101(x,clock,reset,q2,q1,q0, z);
input x,clock,reset;
output q2,q1,q0,z;

reg [2:0] q;
reg [2:0] notq;
reg zz;
initial begin
    q=0;
    notq=0;
    zz=0;
end
wire D2;
wire D1;
wire D0;
assign D2=x&~q[2]&q[1]&q[0];
assign D1=(x&q[2]&~q[1]&~q[0])|(x&~q[2]&~q[1]&q[0])|(~q[2]&q[1]&~q[0]);
assign D0=x&~q[2]&~q[0];
always @(posedge (clock)) begin
    q[2]<=D2&~reset;
    q[1]<=D1&~reset;
    q[0]<=D0&~reset;
    zz<=q[2]&~q[1]&~q[0]&~reset;
end

assign q2=q[2];
assign q1=q[1];
assign q0=q[0];
assign z=q2&~q1&~q0&~reset;

endmodule