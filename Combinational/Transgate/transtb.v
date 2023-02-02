module transgatetb;
	wire y;
	reg a,control;
	transgate transgate(y,control,a);
	initial begin
		$display ("RESULT\ta\ty");

		a = 0; control = 0; # 50; 
		if ( y === 1'bz ) 
			$display ("PASS  \t%d\t%d",a,y);
		else
			$display ("FAIL  \t%d\t%d",a,y);
		control = 1; # 50; 
		control = 0; # 50; 
		control = 1; # 50; 
		control = 0; # 50; 

		a = 0; control = 1; # 50; 
		if ( y === 0 ) 
			$display ("PASS  \t%d\t%d",a,y);
		else
			$display ("FAIL  \t%d\t%d",a,y);

		a = 1; control = 0; # 50; 
		if ( y === 1'bz ) // Test for inversion
			$display ("PASS  \t%d\t%d",a,y);
		else
			$display ("FAIL  \t%d\t%d",a,y);
		control = 1; # 50; 
		control = 0; # 50; 
		control = 1; # 50; 
		control = 0; # 50; 

		a = 1; control = 1; # 50; 
		if ( y === 1 ) 
			$display ("PASS  \t%d\t%d",a,y);
		else
			$display ("FAIL  \t%d\t%d",a,y);
  end
  initial begin 
    $dumpfile("transgatetb.vcd"); $dumpvars;
  end
endmodule
