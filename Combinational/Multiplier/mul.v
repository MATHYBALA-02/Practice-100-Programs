module multiplier(A0, A1, B0, B1, C0, C1, C2, C3);
   input A0, A1, B0, B1;
   output C0, C1, C2, C3;
  wire N0, N1, N2, N3;
  halfadder    HA0 (C3,C2,N0,N1); 
  halfadder    HA1 (C1,N1,N2,N3);
  and A0(N0, A1, B1);
  and A1(N2, A1, B0);
  and A2(N3, A0, B1);
  and A3(C0, A0, B0);
endmodule
