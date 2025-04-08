module carry_lookahead(input logic a,b,cin, output logic s, cout);
  logic g,p;
  assign g = a & b;
  assign p = a ^ b;
  assign s = p ^ cin;
  assign cout = g | (p & cin);

  endmodule

  module 4_bit_cla(input logic [3:0]a,b,
                   input logic cin,
                   output logic [3:0]s,
                   output logic cout);

    logic [2:0] c;
    carry_lookahead a1(.a(a[0]), .b(b[0]), .cin(cin),.s(s[0]),cout(c[0]));
    carry_lookahead a2(.a(a[1]), .b(b[1]), .cin(c[0]),.s(s[1]),cout(c[1]));
    carry_lookahead a3(.a(a[2]), .b(b[2]), .cin(c[1]),.s(s[2]),cout(c[2]));
    carry_lookahead a4(.a(a[3]), .b(b[3]), .cin(c[2]),.s(s[3]),cout(cout));
  endmodule
