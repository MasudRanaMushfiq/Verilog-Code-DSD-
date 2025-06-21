module asynCounter(q,clock,clear,j,k);
	output [3:0]q;
	input clock,clear;
	input j , k;
	wire [3:0] qbar;

	JK j1(j,k,clear,clock,q[0],qbar[0]);
	JK j2(j,k,clear,q[0],q[1],qbar[1]);
	JK j3(j,k,clear,q[1],q[2],qbar[2]);
	JK j4(j,k,clear,q[2],q[3],qbar[3]);

endmodule

module stimulus();
	reg clock,clear,j,k;
	wire[3:0] q;
	asynCounter  s1(q,clock,clear,j,k);
	initial
	clock = 1'b0;	
	always
	#5 clock = ~clock;
	
	initial 
	begin 
		j = 1'b1;
		k = 1'b1;
		clear = 1'b0;
		#10 clear = 1'b1;	
		#160 clear = 1'b0;		
	end
endmodule