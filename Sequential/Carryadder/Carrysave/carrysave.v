module carry_save_adder(a,b,c,d, sum,cout);
  input [3:0] a, b,c,d;
output [4:0] sum;
output cout;
wire [3:0] s0,s1;
  wire [3:0] c0, c1;
//1st Statge
full_adder fa0( .a(a[0]), .b(b[0]), .cin(c[0]), .sum(s0[0]), .cout(c0[0]));
full_adder fa1( .a(a[1]), .b(b[1]), .cin(c[1]), .sum(s0[1]), .cout(c0[1]));
full_adder fa2( .a(a[2]), .b(b[2]), .cin(c[2]), .sum(s0[2]), .cout(c0[2]));
full_adder fa3( .a(a[3]), .b(b[3]), .cin(c[3]), .sum(s0[3]), .cout(c0[3]));
//2nd Stage
full_adder fa4( .a(d[0]), .b(s0[0]), .cin(1'b0), .sum(sum[0]), .cout(c1[0]));
full_adder fa5( .a(d[1]), .b(s0[1]), .cin(c0[0]), .sum(s1[0]), .cout(c1[1]));
full_adder fa6( .a(d[2]), .b(s0[2]), .cin(c0[1]), .sum(s1[1]), .cout(c1[2]));
full_adder fa7( .a(d[3]), .b(s0[3]), .cin(c0[2]), .sum(s1[2]), .cout(c1[3]));
 ripple_carry_4_bit rca1 (.a(c1[3:0]),.b({c0[3],s1[2:0]}), .cin(1'b0),.sum(sum[4:1]), .cout(cout));
endmodule
