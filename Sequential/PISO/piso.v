module piso (input load, clk, rst,
             input [7:0] data_in,
             output reg data_out);
  reg [7:0] data_reg;
  always @ (posedge clk or negedge rst) 
    begin
      if (~rst)
        data_reg <= 8'h00;
      else begin
      if (load)
          {data_reg, data_out} <= {data_in, 1'b0};
      else
          {data_reg, data_out} <= {1'b0, data_reg[7:0]};
      end
    end
endmodule
