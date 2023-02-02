module invtb;
  reg a;
  wire y;
  inv inv(y,a);
  initial 
    begin
      $dumpfile("invtb.vcd");
      $dumpvars(1,invtb.v)
    end
  initial
    begin
      $display ("RESULT\ta\ty");
    a = 1; # 100; 
		if ( y == 0 ) 
			$display ("  PASS  \t%d\t%d",a,y);
		else
			$display ("  FAIL \t%d\t%d",a,y);

		a = 0; # 100; 
		if ( y == 1 ) 
			$display ("  PASS  \t%d\t%d",a,y);
		else
			$display ("  FAIL  \t%d\t%d",a,y);
    end
endmodule
