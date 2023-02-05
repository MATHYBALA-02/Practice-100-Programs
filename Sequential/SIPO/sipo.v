module sipo (input load, clk, rst,
               input datain,
               output [7:0] dataout);
  reg [7:0] datareg;
  always @ (posedge clk or negedge rst) 
    begin
    if (~rst)
      datareg <= 8'h00; 
    else if (load)
      datareg <= {datain, datareg[7:1]};
    end
  assign dataout = datareg;
endmodule
