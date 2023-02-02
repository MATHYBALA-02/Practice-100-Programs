module bcd_adder_tb;
reg [3:0] in1, in2;
wire [3:0] s;
wire c;
  bcd_adder bcd_adder_inst (.A(in1), .B(in2), .C(c), .S(s));
input [7:0] A, B, S;
input Ci, Co;
   begin
      $display ("A = %b, B = %b, Ci = %b, S = %b, Cout = %b", A, B, Ci, S, Co);
   end
endtask */
initial
    begin
      in1=4'd5; in2=4'd6; #10;
      in1=4'd1; in2=4'd6; #10;
      in1=4'd5; in2=4'd2; #10;
      in1=4'd5; in2=4'd7; #10;
      in1=4'd3; in2=4'd8; #10;
      in1=4'd0; in2=4'd6; #10;
      in1=4'd9; in2=4'd6; #10;
      in1=4'b0100; in2=4'b0110; #10;
    end
endmodule
