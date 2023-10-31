module simple_logic ( out, a, b, c, d, );
  input a, b, c, d;
  output out;
  wire   temp1, temp2;

  OR2 C9 ( .A(a), .B(b), .Q(temp1) );
  OR2 C10 ( .A(c), .B(d), .Q(temp2) );
  AND2 C11 ( .A(temp1), .B(temp2), .Q(out) );
endmodule