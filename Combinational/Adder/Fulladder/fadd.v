module fadd(sum,carry,a,b,c);
  output sum, carry;
  input a, b,c;
  assign sum = (a ^ b)^c;
  assign carry = a & b | (a^b)&c; 
endmodule
