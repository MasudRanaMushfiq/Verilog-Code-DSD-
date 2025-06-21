module add_subtract(S, Cout, A, B, Cin);
	input [3:0] A, B;
	input Cin;
	output [3:0] S;
	output Cout;
	
	xor (d3, B[3], Cin);
	xor (d2, B[2], Cin);
	xor (d1, B[1], Cin);
	xor (d0, B[0], Cin);
	fulladder fa1(S[0], c,    A[0], d0, Cin);
	fulladder fa2(S[1], b,    A[1], d1, c);
	fulladder fa3(S[2], a,    A[2], d2, b);
	fulladder fa4(S[3], Cout, A[3], d3, a);	
		
endmodule

module testAddSub();
	reg [3:0] A, B;
	reg Cin;
	wire Cout;
	wire [3:0] S;
	add_subtract as(S, Cout, A, B, Cin);
	initial
	begin
	A = 4'b0001; B = 4'b0101; Cin = 1'b0;
	#100
	A = 4'b0011; B = 4'b0011; Cin = 1'b0;
	#100
	A = 4'b0101; B = 4'b0101; Cin = 1'b1;
	end
endmodule