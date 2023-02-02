module TestModule;
  reg [3:0] a,b;
  reg cin;
  wire [3:0] diff;
  wire borrow;
4bitSubtractor uut (
  .a(a),
  .b(b),
  .bin(bin),
  .diff(diff),
  .borrow(borrow));
initial begin
  a = 0;
  b = 0;
  bin = 0;
#100;

a = 2;
b = 3;
bin = 1;


#100
end
endmodule
