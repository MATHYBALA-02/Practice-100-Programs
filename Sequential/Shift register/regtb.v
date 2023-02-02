module shiftreg_tb;
  reg d=0;
  reg clk=1;
  wire [3:0] q;
  wire q0,q1,q2,q3;
  assign q0=q[0];
  assign q1=q[1];
  assign q2=q[2];
  assign q3=q[3];
  shift SHIFT(.clk(clk),.d(d),.q(q));
  initial 
    begin
      $dumpfile("dump.vcd");
      $dumpvars();
      $display("\t\t\t\ttime\tclk\tD\tQ");
      $monitor("%d\t%b\t%b\t%d",$time,clk,D,Q);
    #11 D=1;    
    #10 D=0;    
    #40 D=1;    
    #10 D=0;    
    #10 D=1;    
    #10 D=0;    
    end
  always
    #5 clk = ~clk;   
  initial
    #200 $finish;     
endmodule
