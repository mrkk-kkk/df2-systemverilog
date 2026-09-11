module rip_adder_4bit(input  logic [3:0] a,
                      input  logic [3:0] b,
                      input  logic cin,
                      output logic cout, 
                      output logic [3:0] sum);
  wire C1,C2,C3; 
  
  full_adder U0 (.sum(sum[0]), .a(a[0]), .b(b[0]), .cout(C1), .cin(cin));
  full_adder U1 (.sum(sum[1]), .a(a[1]), .b(b[1]), .cout(C2), .cin(C1));
  full_adder U2 (.sum(sum[2]), .a(a[2]), .b(b[2]), .cout(C3), .cin(C2));
  full_adder U3 (.sum(sum[3]), .a(a[3]), .b(b[3]), .cout(cout), .cin(C3));
  
endmodule