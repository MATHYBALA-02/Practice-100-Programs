module transgate(y,control,a);
	output y;
	input a,control;
	wire cbar;
	assign cbar = ~control;
	nmos n1(y,a,control);
	pmos p1(y,a,cbar);
endmodule
