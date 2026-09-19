module mult4x4 (input  logic [3:0] A,
                input  logic [3:0] B,
                output logic [7:0] product);

 
  logic [3:0] lines [3:0];
  logic [3:0] rows  [2:0];
  logic [4:0] C 	  [2:0];
  
  for(genvar i = 0; i < 4 ; i++) begin   
    for(genvar j = 0; j < 4 ; j++) begin
      
      assign lines[i][j] = A[j] & B[i];
        
    end
  end
  
  assign product[0] = lines[0][0];
  
  for(genvar i = 0; i < 3 ; i++) begin
    
    assign C[i][0] = 1'b0;
    
    for(genvar j = 0; j < 4 ; j++) begin
    
      full_adder fa(.sum(rows[i][j]), 		
                    .a(lines[i][j+1]), 
                    .b(lines[i+1][j]), 
                    .cin(C[i][j]), 
                    .cout(C[i][j+1]));
  
    end
  end
  
endmodule
