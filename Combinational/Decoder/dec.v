module decoder(x, enable, y);
input [1:0] x; //this is my decoder input 
input enable;
output reg [3:0] y; 
always @(x, enable ) 
begin
  if(enable==0)
    begin
      y = 4'b1111;
    end
  else
    begin
      if (x == 2'b00)
        begin
          y=4'b0001;
        end
      if(x==2'b01)
        begin
          y=4'b0010;
        end
      if(x == 2'b10)
        begin
          y=4'b0100;
        end
      if(x ==2'b11)
        begin
          y=4'b1000;
        end
    end
endmodule
