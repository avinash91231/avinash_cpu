module full_add #(parameter N=16);
  (
    input [N-1:0] input1,
    input [N-1:0] input2,
    output [N-1:0] mul_o);
  
  xor (mul_o, input1, input2);
   
endmodule

module mul#(parameter N=16)(
  input [N-1:0] input1,
  input [N-1:0] input2,
  output [2*N-1:0] mul_o);
  
  
  wire [N:0][N-1:0] temp1;
  wire [N:0][2*N-1:0] temp2;
  
  wire [N:0][2*N-1:0]temp3;
  
  assign temp1[0] = input2[0] ? input1 : 0;
  assign temp2[0] = input1[0] << 0;
  assign temp3[0] = input2[0];
  
  genvar i;
  
  generate 
    for(i=1; i<=N-1; i++)begin
      assign temp1[i] = input2[i] ? input1[i] : 0;
      assign temp2[i] = temp1[i] << i;
      full_add #(2*N) fa ( .input1 (temp3[i-1]),
                          .input2 (temp2[i]),
                          .mul_o (temp3[i])
                         );
    end 
  endgenerate
  
  assign mul_o =temp3[N-1:0];
endmodule
