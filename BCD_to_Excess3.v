module BCD_to_Excess3(A,B,C,D,W,X,Y,Z);
	input A,B,C,D;
	output W,X,Y,Z;
	or(m,C,D);
	and (n,m,B);
	or (W,n,A);
	xor(X,m,B);
	xnor (Y,C,D);
	not(Z,D);
endmodule
