module magcomp_tb;
  reg A0, A1, B0, B1;   
	wire C0, C1, C2, C3;       
  magcomp MAGCOMP (A0, A1, B0, B1, C0, C1, C2, C3); 
  initial begin
             $dumpfile("magcomp_tb.vcd");  
             $dumpvars(1, test);  
             $monitor("%b %b %b %b %b %b %b %b", A0, A1, B0, B1, C0, C1, C2, C3);
             // this for loop auto inputs for me woooo 
             for(int i = 0; i < 16; i = i + 1) 
               begin
                {A0, A1, B0, B1} = i;
                #10; // 10 delay units
               end
               #10 $finish;
           end
endmodule
