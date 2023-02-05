module MealyTb;
  wire dataout;
  reg clock, reset, datain;
  jfsmMealyWithOverlap jfsmM(dataout, clock, reset, datain);
  initial 
    begin
      $dumpfile("dump.vcd");
      $dumpvars();
    end
  initial begin
    reset = 1; datain = 0; 
    clock = 1; #5; clock = 0; #5;
    reset = 0;
    clock = 1; #5; clock = 0; #5;
    $display("Starting input sequence");
    datain = 1; clock = 1; #5; clock = 0; #5;
    datain = 1; clock = 1; #5; clock = 0; #5;
    datain = 1; clock = 1; #5; clock = 0; #5;
    datain = 0; clock = 1; #5; clock = 0; #5;
    datain = 1; clock = 1; #5; clock = 0; #5;
    if ( dataout === 1 )
      $display("PASS %b", dataout);
    else
      $display("FAIL %b", dataout);
    datain = 1; clock = 1; #5; clock = 0; #5;
    datain = 1; clock = 1; #5; clock = 0; #5;
    datain = 0; clock = 1; #5; clock = 0; #5;
    datain = 1; clock = 1; #5; clock = 0; #5;
    if ( dataout === 1 )
      $display("PASS %b", dataout);
    else
      $display("FAIL %b", dataout);
    datain = 0; clock = 1; #5; clock = 0; #5;
    datain = 0; clock = 1; #5; clock = 0; #5;
    if ( dataout === 0 )
      $display("PASS %b", dataout);
    else
      $display("FAIL %b", dataout);
  end
endmodule
