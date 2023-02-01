module jkff(
  input j,k,reset,clk;
  output reg q;
  output qnot);
assign qnot=~q;
  always @(posedge clk)
    if (reset)
      begin
        q<=1'b0;
        end
  else
    begin
      case ({j, k})
        2'b00: q<=q;
        2'b01: q<=1'b0;
        2'b10: q<=1'b1;
        2'b11: q<=~q;
      endcase
endmodule
