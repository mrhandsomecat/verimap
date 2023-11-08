module empty (i, z);
  input i;
  output z;
  BUF2 inst_z (.A(i), .Q(z));
endmodule

module spinv0 (i, z);
  input i;
  output z;
  BUF2 inst_z (.A(i), .Q(z));
endmodule

module spinv1 (i, z);
  input i;
  output z;
  BUF2 inst_z (.A(i), .Q(z));
endmodule

module spinv2 (i, z);
  input i;
  output z;
  BUF2 inst_z (.A(i), .Q(z));
endmodule

module spinv3 (i, z);
  input i;
  output z;
  BUF2 inst_z (.A(i), .Q(z));
endmodule

module spinv4 (i, z);
  input i;
  output z;
  BUF4 inst_z (.A(i), .Q(z));
endmodule

module spinv6 (i, z);
  input i;
  output z;
  BUF6 inst_z (.A(i), .Q(z));
endmodule

module spinv8 (i, z);
  input i;
  output z;
  BUF8 inst_z (.A(i), .Q(z));
endmodule
