module fadd_tb;
  reg a,b,c;
  wire s,cout;
  fadd FADD(a,b,c,s,cout);
  initial
    begin
      $dumpfile("fadd_tb.vcd");
      $dumpvars(1,fadd);
      a=0;b=0;c=0;
      #20 a=1;b=1;
      #20 a=0;b=0;c=1;
      #20 a=0;c=1;
      #20 $finish;
    end
endmodule
