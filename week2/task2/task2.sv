module register4bit (input  logic clk,
                     input  logic reset,
                     input  logic enable,
                     input  logic [3:0] D,
                     output logic [3:0] Q);
   
  always_ff @(posedge clk) 
  begin: register  
   if (reset)
      Q <= 4'b0000;
   else
   if (enable)
      Q <= D;
  end
  
endmodule
