module Demux(s0,s1,s2,s3,s4,s5,s6,s7,e1,sel0,sel1,sel2);
  input e1,sel0,sel1,sel2;
  output reg [7:0] s0,s1,s2,s3,s4,s5,s6,s7;
  always @(e1,sel0,sel1,sel2)
    begin
      case({sel0,sel1,sel2})
        3'b000: s0 = e1;        
        3'b001: s1 = e1;                
        3'b010: s2 = e1;                
        3'b011: s3 = e1;                  
        3'b100: s4 = e1;                
        3'b101: s5 = e1;                
        3'b110: s6 = e1;                 
        3'b111: s7 = e1;        
       endcase   
    end
   endmodule
