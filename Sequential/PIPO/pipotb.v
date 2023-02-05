module test;

  reg [31:0] inputseq;
  wire [31:0] answer; // it must be wire for testbench
  reg reset;
  reg clock;

  pipo pipo(inputseq, answer, reset, clock);
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars();
  end
  initial begin
    clock = 0;
    reset = 0;
    #10 reset = 1;
    $display("answer:%h", answer);
    inputseq = 32'h7FFFFFFF;
    #50 $display("answer:%h", answer);
    $finish();
  end
  always #10 clock = ~clock;
endmodule
