module shiftreg(
  input clk,D,
  output reg [3:0]Q=0); 
  always @(posedge clk) 
    begin
      Q[3]<=Q[2];
      Q[2]<=Q[1];
      Q[1]<=Q[0];
      Q[0]<=D;
    end
endmodule
