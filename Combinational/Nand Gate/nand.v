module nandgate(
  output reg y
  input a,b);
  always@(a and b)
    begin
      if(a==1'b1&b==1'b1)
        begin
          y=1'b0;
        end
      else
        begin
          y=i'b1;
        end
    end
endmodule
