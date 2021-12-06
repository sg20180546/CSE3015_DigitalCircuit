`timescale 1ns / 1ps

module ring_counter(clock, reset,  y0,y1,y2,y3);
input clock,reset;
output y0,y1,y2,y3;
wire [3:0] tempIn;
reg [3:0] tempOut;
wire [3:0] notq;

initial tempOut=4'b1000;
always @(posedge (clock)) begin
       if(reset)
          tempOut<=4'b0000;
       else if(~reset&~tempOut)
            tempOut<=4'b1000;
       else
              tempOut[2]<=tempOut[3];
              tempOut[1]<=tempOut[2];
              tempOut[0]<=tempOut[1];
              tempOut[3]<=tempOut[0];
end
//assign tempIn[0]= tempOut[3]&~reset;
//assign tempIn[1]= tempOut[0]&~reset;
//assign tempIn[2]= tempOut[1]&~reset;
//assign tempIn[3]= tempOut[2]&~reset;

//D_FF_1 d1(tempIn[0],clock,tempOut[0],notq[0],tempOut);
//D_FF_0 d2(tempIn[1],clock,tempOut[1],notq[1],tempOut);
//D_FF_0 d3(tempIn[2],clock,tempOut[2],notq[2],tempOut);
//D_FF_0 d4(tempIn[3],clock,tempOut[3],notq[3],tempOut);

assign y3=tempOut[3];
assign y2=tempOut[2];
assign y1=tempOut[1];
assign y0=tempOut[0];

endmodule