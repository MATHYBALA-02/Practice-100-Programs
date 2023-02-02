module sync_tb;
  reg clk;
  reg reset;
  wire [3:0] count;
  sync SYNC(clk,reset,count)
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars(1)
    end
  initial
    begin
      clk=0;
      reset=1;
      #125;
      reset=0;
      #4500;
      $finish
    end
  always #50 clk=~clk;
  always@(posedge clk)
    begin
      $display("value is %d",count);
    end
endmodule
