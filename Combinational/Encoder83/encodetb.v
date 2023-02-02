module TestModule;
  reg d0,d1,d2,d3,d4,d5,d6,d7;
  wire a,b,c;
  Encoder uut (
.d0(d0),
.d1(d1),
.d2(d2),
.d3(d3),
.d4(d4),
.d5(d5),
.d6(d6),
.d7(d7),
.a(a),
.b(b),
.c(c)
);
  initial 
    begin
      d0 = 0;
d1 = 0;
d2 = 0;
d3 = 0;
d4 = 0;
d5 = 0;
d6 = 0;
d7 = 0;

#100;

d0 = 0;
d1 = 0;
d2 = 0;
d3 = 1;
d4 = 0;
d5 = 0;
d6 = 0;
d7 = 0;
// Wait 100 ns for global reset to finish
#100;
// Add stimulus here
end
endmodule
