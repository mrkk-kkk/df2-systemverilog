module full_adder(input  logic a,
                  input  logic b,
                  input  logic cin,
                  output logic cout, 
                  output logic sum );
    
  logic xor1,and1,and2;
  
  assign xor1 = a ^ b;
  assign and1 = a & b;
  assign and2 = xor1 & cin;
  
  assign cout = and1 | and2;
  assign sum  = xor1 ^ cin;
  
endmodule
