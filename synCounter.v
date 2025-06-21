module synCounter(q,clock,clear,j,k);
	output [3:0]q;
	input clock,clear;
	input j , k;
	wire [3:0] qbar;
	wire x , y;

	JK j1(j,       k, clear, clock, q[0], qbar[0]);
	JK j2(q[0], q[0], clear, clock, q[1], qbar[1]);
	and(x, q[0], q[1]);
	JK j3(x,       x, clear, clock, q[2], qbar[2]);
	and(y, x, q[2]); 
	JK j4(y,       y, clear, clock, q[3], qbar[3]);
endmodule 
