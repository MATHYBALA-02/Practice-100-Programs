module edge_detector_tb;
  
  reg clk, rst, din;
  wire rising_edge, falling_edge, either_edge;
  
  falling_edge dut (clk,
                      rst,
                      din,
                     
                      falling_edge
                     );
  
  initial
    begin
      clk = 0;
      forever
        #20 clk = !clk;
    end
  
  task RST;
    begin
      rst = 1'b1;
      din = 'h0;
    $display ("\n\nSKL\n\n");
      #60;
      rst = 1'b0;
    end
  endtask
  
  task DIN (input i);
    begin
      //@(negedge clk);
      din = i;
    end
  endtask
  
  initial
    begin
      RST;
      #10;
    end
  initial
    begin
      $dumpfile("dump.vcd"); $dumpvars;
    end
  initial
    #2800 $finish;
endmodule
