module block_4bit (A, B, C, S);
input [3:0] A, B;
output [3:0] S;
output C;
wire [2:0] Cint; 
   full_adder full_adder_1_inst (.a(A[0]), .b(B[0]), .s(S[0]), .c(1'b0), .cout(Cint[0]));
   full_adder full_adder_2_inst (.a(A[1]), .b(B[1]), .s(S[1]), .c(Cint[0]), .cout(Cint[1]));
   full_adder full_adder_3_inst (.a(A[2]), .b(B[2]), .s(S[2]), .c(Cint[1]), .cout(Cint[2]));
   full_adder full_adder_4_inst (.a(A[3]), .b(B[3]), .s(S[3]), .c(Cint[2]), .cout(C));
endmodule
