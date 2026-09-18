module adder_sub #(parameter WIDTH = 8)
                  (input  logic [WIDTH-1:0] a,
                   input  logic [WIDTH-1:0] b,
                   input  logic sub,
                   output logic cout, 
                   output logic [WIDTH-1:0] result);
  
  logic [WIDTH:0] C;
 
  assign C[0] = sub;
  
  for(genvar i = 0; i < WIDTH; i++) begin: full_adders
      
    logic bxor;
    assign bxor = b[i] ^ sub;
      
    full_adder fa(.sum(result[i]), 
                  .a(a[i]), 
                  .b(bxor), 
                  .cin(C[i]), 
                  .cout(C[i+1])); 
  end  
  
  assign cout = C[WIDTH];
  
endmodule
