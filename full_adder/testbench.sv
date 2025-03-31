module tb;

  logic A,B,Cin,Cout,Sum;
  
  full_adder uut (.A(A),.B(B),.Cin(Cin),.Cout(Cout),.Sum(Sum));
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(0,A,B,Cin,Cout,Sum);
    
    A = 0 ; B = 1; Cin = 1;
    
    #5 A = 1 ; B = 1 ; Cin = 1;
  end
  
endmodule
