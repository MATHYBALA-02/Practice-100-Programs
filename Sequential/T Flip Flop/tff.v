module tff(input reset, 
           input clk, 
           output reg q);
  always @(posedge clk) 
    begin
      if (reset)
        begin
          q<=1'b0; 
        end
      else 
        begin
          q<=~q;
        end
endmodule
