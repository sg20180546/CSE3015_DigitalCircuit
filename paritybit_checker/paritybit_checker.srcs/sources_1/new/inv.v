module parity_bit_checker(a,b,c,d,p,out) ;
input a,b,c,d,p;
wire a,b,c,d,p;
wire w1,w2,w3,w4,w5,w6,w7,w8,w9,w10,w11,w12,w13,w14,w15,w16;
output out;

and(w1,~a,~b,~c,~d,p);
and(w2,~a,~b,~c,d,~p);
and(w3,~a,~b,c,~d,~p);
and(w4,~a,~b,c,d,p);
and(w5,~a,b,~c,~d,~p);
and(w6,~a,b,~c,d,p);
and(w7,~a,b,c,~d,p);
and(w8,~a,b,c,d,~p);
and(w9,a,~b,~c,~d,~p);
and(w10,a,~b,~c,d,p);
and(w11,a,~b,c,~d,p);
and(w12,a,~b,c,d,~p);
and(w13,a,b,~c,~d,p);
and(w14,a,b,~c,d,~p);
and(w15,a,b,c,~d,~p);
and(w16,a,b,c,d,p);





or(out,w1,w2,w3,w4,w5,w6,w7,w8);

endmodule