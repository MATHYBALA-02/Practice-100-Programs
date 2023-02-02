module halfadder (S, C, x, y);
   input x, y;
   output S, C;
   xor U1(S, x, y);
   and U2(C, x, y);
endmodule
