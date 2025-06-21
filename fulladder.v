module fulladder(S, Cout, A, B, Cin);
	input A, B, Cin;
	output S, Cout;
	halfadder ha1(m, n, A, B);
	halfadder ha2(S, k, m, Cin);
	or (Cout, n, k);
endmodule

module rippleadder(S, Cout, A, B, Cin);
	input [3:0] A, B;
	input Cin;
	output [3:0] S;
	output Cout;
	fulladder fa1(S[0], c,    A[0], B[0], Cin);
	fulladder fa2(S[1], b,    A[1], B[1], c);
	fulladder fa3(S[2], a,    A[2], B[2], b);
	fulladder fa4(S[3], Cout, A[3], B[3], a);	
endmodule
