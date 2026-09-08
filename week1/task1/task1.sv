module gate_and (input logic a,b,
              output logic y);
  
  assign y = a & b;
  
endmodule

module gate_or (input logic a,b,
              output logic y);
  
  assign y = a | b;
  
endmodule