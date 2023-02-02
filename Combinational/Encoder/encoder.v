module encoder(
  input d0,d1,d2,d3;
  output a,b);
  assign a=d1|d3;
  assign b=d2|d3;
endmodule
