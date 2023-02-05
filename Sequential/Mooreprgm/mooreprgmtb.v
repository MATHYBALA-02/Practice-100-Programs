module tb_fsm;
  logic reset;
  logic clk;
  logic X;
  logic Z;
  fsm dutfsm(.*);
  task automatic my_task();
    logic [4:0] val = 5'b01101;
    $display("Hello from my task\n");
    for (int i = 0; i < $size(val); ++i)
      begin
        #10 X = val[i];
        //$display ("%t X is 0x%x, Z is 0x%x\n", $time, X, Z);
      end
    #10;
    $display ("Final Z is 0x%x\n", Z);
  endtask
  always begin
    #5 clk = ~clk;
  end
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars();
    
    //$monitor("%t 0x%x, 0x%x", $time, X, Z);
    X = 0;
    clk = 0;
    reset = 0;
    #1 reset = 1;
    #2 reset = 0;
    my_task();
    //#1 X=1;
    //#10 X = 0;
    //#10 X = 1;
    //#10 X = 1;
    //#10 X = 0;
    //#5; 
    //if(Z==1'b1) begin
     // $display("at time %t Z is 1\n",$time);
    //end
    #10; $finish;
    end
endmodule
