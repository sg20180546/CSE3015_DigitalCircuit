
module one_bit(a,b, c,eq,e,ineq) ;
input a,b;
output c,eq,e,ineq; 
wire c,eq,e,ineq;


assign c=~a&b;
assign e=a&~b;
assign eq=~(c|e);
assign ineq=~eq;
endmodule