module udcount;
  #(parameter WIDTH = 4)
  ( 
  input clk,rstn,load_en,down,
  input wire [WIDTH-1:0]load,
  output rollover,
  output reg [WIDTH-1:0]	count);
  always @ (posedge clk or negedge rstn) 
    begin
      if (!rstn)
        begin
          count <= 0;
        end
    else 
      begin
        if (load_en)
          begin
            count <= load;
          end
      else 
        begin
          if (down)
            begin
              count <= count - 1;
            end
      	else
          begin
            count <= count + 1;
          end
      end
  end
  assign rollover = &count;
endmodule
