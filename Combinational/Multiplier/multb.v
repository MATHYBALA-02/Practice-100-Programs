module mulha_tb;
  reg A0, A1, B0, B1;   
	wire C0, C1, C2, C3;      
  multiplier uut (A0, A1, B0, B1, C0, C1, C2, C3); 
  initial 
           begin
             $dumpfile("mulha_tb.vcd");  
             $dumpvars(1, test);  
             $monitor("%b %b %b %b %b %b %b %b", A0, A1, B0, B1, C0, C1, C2, C3);
             for(int i = 0; i < 16; i = i + 1) 
               begin
                 {A0, A1, B0, B1} = i;
                 #10; 
               end
              #10 $finish;
           end
endmodule
