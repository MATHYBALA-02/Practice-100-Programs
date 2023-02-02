module TestModule;
  reg [3:0] a,b;
  reg cin;
  wire [3:0] sum;
  wire cout;
4bitAdder uut (
.a(a),
.b(b),
.cin(cin),
.sum(sum),
.cout(cout)
);
initial begin
  a = 0;
  b = 0;
  cin = 0;
#100;

a = 2;
b = 3;
cin = 1;


#100
end
endmodule
