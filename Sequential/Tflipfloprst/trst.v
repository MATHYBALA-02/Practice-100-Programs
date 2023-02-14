module tff(clk,rst,t,q)
  input clk;
  input rst;
  input t;
  output reg q;
  always@(posedge clk)
    begin
      if(!rst)
        begin
          q<=0;
        end
      else 
        if(t)
          begin
            q=~q;
          end
      else
        begin
          q<=q;
        end
    end
endmodule
