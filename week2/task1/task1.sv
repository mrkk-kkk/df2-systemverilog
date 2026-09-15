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

module adder_sub #(parameter WIDTH = 8)
  				  (input  logic [WIDTH-1:0] a,
                   input  logic [WIDTH-1:0] b,
                   input  logic sub,
                   output logic cout, 
                   output logic [WIDTH-1:0] result);
  
  logic [WIDTH:0] C;
 
  assign C[0] = sub;
  
  genvar i;
  generate
    for(i = 0; i < WIDTH; i++) begin: full_adders
      
      logic bxor;
      assign bxor = b[i] ^ sub;
      
      full_adder fa(.sum(result[i]), 
                    .a(a[i]), 
                    .b(bxor), 
                    .cin(C[i]), 
                    .cout(C[i+1])); 
    end
        
  endgenerate
  
  assign cout = C[WIDTH];
  
endmodule