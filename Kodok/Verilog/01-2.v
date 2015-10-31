primitive kimenet1(q1, a, b, c)
	output q1;
	input a, b, c;

	table
	//a b c q1
	0 0 0 : 1;
	0 0 1 : 1;
	0 1 0 : 1;
	0 1 1 : 0;
	1 0 0 : 0;
	1 0 1 : 0;
	1 1 0 : 1;
	1 1 1 : 1;
	endtable
endprimitive

primitive kimenet2(q2, a, b, c)
	output q2;
	input a, b, c;

	table
	//a b c q2
	0 0 0 : 0;
	0 0 1 : 0;
	0 1 0 : 0;
	0 1 1 : 1;
	1 0 0 : 1;
	1 0 1 : 1;
	1 1 0 : 1;
	1 1 1 : 1;
	endtable
endprimitive

module vezerles(a, b, c, q1, q2)
	input a, b, c;
	output q1, q2;
	
	kimenet1(q1, a, b, c);
	kimenet2(q2, a, b, c);

endmodule;