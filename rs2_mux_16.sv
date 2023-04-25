module rs2_mux16x1 (input2, rs2_regflag, rs2_output);
  
  input [3:0] input2;
  input [15:0] rs2_regflag;
  output reg [15:0] rs2_output;
  
  assign rs2_out = rs2_regflag[input2];
endmodule 
