module NOT_Gate_tb;
  reg A;
  wire Y;
  
  NOT_Gate inst(.A(A), .Y(Y));
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars;
    #1000 $finish;
  end
  
  initial begin
    A='b0;
    #50 $finish;
  end
  always #5 A=~A;
  always @(Y)
    $display("time=%Dt :A=%b\t output:Y=%b",$time,A,Y);
  
endmodule
