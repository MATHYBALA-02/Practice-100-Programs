module bicount_tb;
  reg clk, reset,
  reg en, load, up_downb, 
  reg [7:0] d, 
  wire [7:0] q,
  wire [7:0] qnext,
initial 
  begin
    $dumpfile("dump.vcd");
    $dumpvars();
  end
  initial
    begin
      if(load)
        q_next<=d;
    end
endmodule
