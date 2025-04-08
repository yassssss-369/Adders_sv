module tb();

logic [3:0] a,b,s;
logic cin,cout;

4_bit_cla dut(
    .a(a),
    .b(b),
    .cin(cin),
    .s(s),
    .cout(cout)
);

initial begin
  a = 3'b101;
  b = 3'b011;
  cin = 1'b0;

  #10

  a= 3'b111;
  b = 3'b111;
  cin = 1'b1;
  
end

initial begin
  $dumpvars(0,tb);
  $dumpfile("tb.vcd");
end

endmodule
