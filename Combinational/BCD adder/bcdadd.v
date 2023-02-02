module bcd_adder (A, B, S, C);
input [3:0] A, B;
output [3:0] S;
output C;
wire [3:0] sum_int, b_int;
wire z;

  block_4bit blk_4bit_1_inst (.A(A), .B(B), .S(sum_int), .C(carry_int));
  block_4bit blk_4bit_2_inst (.A(sum_int), .B(b_int), .S(S), .C(C));
  assign z = sum_int[3] & (sum_int[2] | sum_int[1]) | carry_int;
  assign b_int = {1'b0,z,z,1'b0};
  assign C = z;
 
endmodule
