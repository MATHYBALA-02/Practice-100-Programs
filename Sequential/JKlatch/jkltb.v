module jk_latch_tb;
  reg j, k, clk;
  wire q;
jklatch dut (j, k, clk, q);
initial 
  begin
    $dumpfile("dump.vcd");
    $dumpvars();
  end
  initial begin
    j = 0; k = 0; clk = 0;
    #5 j = 1; k = 0; clk = 1;
    #5 j = 0; k = 1; clk = 1;
    #5 j = 1; k = 1; clk = 1;
    #5 clk = 0;
    #5 $finish;
  end
  always #5 clk = ~clk;
endmodule
