module fsm(input logic X, 
           input logic reset,
           input logic clk,
           output logic Z
          );
  enum logic [2:0] {S0,S1,S2,S3,S4,S5} State, Next;
  always @(posedge clk or posedge reset)
    begin
      if ( reset==1'b1 )
        begin
          State <= S0;
        end
      else 
        begin
         State <= Next;
        end
    end
always_comb begin: set_next_state
  Next = State; //default value
    unique case ( State )
      S0: if (X==1'b1) 
           Next = S1;
          else
            Next = S0;
      S1: if (X==1'b0) 
              Next = S2;
          else if (X==1'b1)
              Next = S1;
      S2: if (X==1'b1) 
              Next = S3;
           else if (X==1'b0)
              Next = S0;
      S3: if (X==1'b1) 
              Next = S4;
           else if (X==1'b0)
              Next = S2;
      S4: if (X==1'b0) 
              Next = S5;
          else if (X==1'b1)
              Next = S1;
      S5: if (X==1'b0) 
              Next = S0;
          else if (X==1'b1)
              Next = S3;
    endcase
  end: set_next_state
  always_comb begin: set_output
    unique case ( State ) 
      S0,S1,S2,S3,S4: Z = 0;
      S5: Z = 1;
      default:
        Z = 1'bX;
      endcase
    set_output
endmodule
