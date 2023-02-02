module encoder_tb;
  reg D0,D1,D2,D3;
  wire A,B;
  encoder m1(.d0(D0),.d1(D1),.d2(D2),.d3(D3),.a(A),.b(B));
  initial
    begin
      $dumpfile("test.vcd");
      $dumpvars;
    #10000 $finish;
  end
  initial 
    begin
      D0='b0;
      D1='b0;
      D2='b0;
      D3='b0;
    #15 $finish;
    end
  always #8 d0=~d0;
  always #6 d1=~d1;
  always #4 d2=~d2;
  always #2 d3=~d3;
  always@(a,b)
    $display("time=%0t Input values: \t d0=%b d1=%b d2=%b d=%b \t outputs a=%b b=%b ",$time,d0,d1,d2,d3,a,b);
endmodule
