module decoder_tb;
  reg [1:0] x; 
  wire [3:0] y; 
  reg enable;
  decoder DECODER(x,enable,y);
  initial 
    begin
      x = 2'b00; 
      enable = 1'b0; 
          #10 
      enable = 1'b1; 
          #10; 
      x = 2'b01; 
      #10;  
    x = 2'b10; 
    #10;        
    x = 2'b11; 
    #10; 
    enable = 1'b0; 
    #10; 
    end 
  initial
    begin
      $dumpvars(0,decoder);
      $dumpfile("dump.vcd");
    end
endmodule
