module mult4x4 (input  logic [3:0] A,
                input  logic [3:0] B,
                output logic [7:0] product);

 
  logic [3:0] lines [3:0];
  logic [3:0] rows  [3:0];
  
  for(genvar i = 0; i < 4 ; i++) begin: n_line   
    for(genvar j = 0; j < 4 ; j++) begin: n_row   
      
      assign lines[i][j] = A[j] & B[i];
        
    end
  end
  
  
  

endmodule
