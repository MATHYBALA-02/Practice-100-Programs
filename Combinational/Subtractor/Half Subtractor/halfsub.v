module hsub(diff,borrow,a,b);
  output diff, borrow;
  input a, b;
  assign diff = a xor b; 
  assign borrow = a' & b; 
endmodule
