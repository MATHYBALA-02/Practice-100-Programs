module demux_tb;
  reg e1;sel0,sel1,sel2;
  wire s0,s1,s2,s3,s4,s5,s6,s7;
  demux DEMUX(s0,s1,s2,s3,s4,s5,s6,s7,e1,sel0,sel1,sel2);
  initial
    begin
      $dumpfile("out.vcd");
      $dumpvars(1,test_demux);
      $monitor("s0 s1 s2 s3 s4 s5 s6 s7 ==> %b %b %b %b %b %b %b",s0,s1,s2,s3,s4,s5,s6,s7);
    end
  initial 
    begin
      for(i=0;i<16;i++)
        begin
          {e1,sel0,sel1,sel2}=i;
          #25;
        end
    end
endmodule                          
