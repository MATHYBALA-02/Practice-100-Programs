module tff_tb();
  reg t;
  reg clk;
  reg rst;
  wire q;
  integer i;
 
  tff uut(
    .t(t),
    .clk(clk),
    .rst(rst),
    .q(q))
  always clk=~clk;
  initial 
    begin
      {rst,clk,t}<=0;
      $monitor("t=%0t,rst=%0b,T=%0d,q=%d",$time,rst,t,q);
      repeat(2)@posedge clk);
      rst<=1;
      for(i=0;i<20;i++)
        reg [4:0] d1y=$random;
      #(d1y) t<=random;
    end
  end
endmodule
