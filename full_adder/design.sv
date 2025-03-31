module full_adder(input A,B,Cin,
                  output Sum,Cout
                 );
  
  assign Sum = A ^ B ^Cin;
  assign Cout = (A&B) | (A & Cin) | (Cin & B);
  
endmodule
