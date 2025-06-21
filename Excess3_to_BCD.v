module Excess3_to_BCD(A,B,C,D,W,X,Y,Z);
	output A,B,C,D;
	input W,X,Y,Z;
	not(D,Z);
	xor(C,Y,Z);
	and (m,Y,Z);
	xnor(B,X,m);
	or(n,m,X);
	and(A,W,n);
endmodule
