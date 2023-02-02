module hadd_tb;
  reg a,b;
  wire s,c;
  hadd HADD(s,c,a,b);
  initial 
    begin
      $dumpfile("dump.vcd");
      $dumpvars(1);
    end
  initial
    begin
      a=0;b=0;
      #5; a=0;b=1;
      #5; a=1;b=0;
      #5;a=1;b=1;
    end
endmodule
