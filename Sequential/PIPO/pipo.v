module pipo(inputseq, answer,reset, clock);
   input [31:0] input;
   input        reset,clock;
   output reg [31:0] answer; 
   always @ (reset)
     begin
        if(!reset)
          begin
             answer[31:0]<=1'b0;
          end
     end
   always @ (posedge clock)
     begin
        answer[31:1]<=input_seq[30:0];  
     end
endmodule
