module half_adder(input a ,b,
                  output c,
                  output sum
                 );
  
  assign c = a & b;
  assign sum = a ^ b;
  endmodule
