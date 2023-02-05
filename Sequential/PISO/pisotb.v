module tb_piso();
  
  reg clk, rst, load;
  reg [7:0] datain;
  
  wire dataout;
  
  piso u1 (load, clk, rst, datain, dataout);
  
  always #1 clk = ~clk;
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0);
  end
  
  initial begin
    clk = 0; rst = 0; load = 0; datain = 8'h00;
    
    #3 rst = 1;
    
    #2 load = 1; datain = 8'd15;
    
    #2 load = 0;
    
    #18 $stop;    
  end  
endmodule
