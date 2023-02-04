module dffatb;
  reg clk;
  reg reset;
  reg enable;
  reg d;
  wire q;
  wire qb;
  dffa DFF(.clk(clk),.enable(enable),.reset(reset),.d(d),.q(q),.qb(qb));
  initial 
    begin
      $dumpfile("dump.vcd");
      $dumpvars(1);
      $display("reset flop");
      clk=0;
      reset=1;
      enable=1;
      d=1'b1;
      @(posedge clk);
      @(posedge clk);
      @(posedge clk);
      @(posedge clk);
      $display("toggle clk");
      clk=1;
      #300 $finish;
    end
  always #5 clk=~clk;
  always #5 enable=~enable;
  always #5 reset=~reset;
endmodule
