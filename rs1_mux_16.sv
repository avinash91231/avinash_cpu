module rs1_mux16x1 (input1,rs1_regflag, rs1_output);
  
  input [3:0] input1;
  input [15:0] rs1_regflag;
  output reg [15:0] rs1_output;
  
  assign rs1_out = rs1_regflag[input1];
endmodule
