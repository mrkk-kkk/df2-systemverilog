module counter3bit (input  logic clk,
                    input  logic reset,
                    input  logic enable,
                    output logic [2:0] count);
   
  always_ff @(posedge clk) 
  begin: counter  
   if (reset)
      count <= 3'b000;
   else
   if (enable)
      count <= count + 3'b001;
  end
  
endmodule
