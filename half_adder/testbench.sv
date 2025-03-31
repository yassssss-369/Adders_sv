module tb;
  logic a,b,c,sum;
  
  half_adder uut(a , b, c,sum); 
  
  initial begin 
    $dumpfile("dump.vcd"); $dumpvars(0,tb);
    a = 1;
    b = 1;
    
    #5 a = 0;
    #5 b = 1;
  end
endmodule
