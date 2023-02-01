module srff(
	output reg q,
	output qbar,
	input clk, rst,
  input [1:0] sr);
assign qbar = ~q;
  always @(posedge clk)
    begin
      if (rst)
        begin
          q <= 0;
        end
		else
			case(sr)
				2'b00: q <= q;
				2'b01: q <= 0;
				2'b10: q <= 1;
				2'b11: q <= 1'bx;
			endcase
	end
endmodule
