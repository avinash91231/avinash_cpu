module sub(input1, input2, sub, bin, sub, bo);
  parameter N=16;
  input [N-1:0] input1, input2;
  input bin;
  output reg [N-1:0] sub;
  output reg b0;
  wire [N:0]b;
  genvar i;
  
  generate 
    assign b[0] = bin;
    for (i=0 ; i<N-1; i++)begin
      
      fullsub f0(.input1(input1[i]),.input2(input2[i]),.bin(b[i]),.sub(sub[i]),.bo(b[i+1]));
      
    end
    
    assign bo=b[N];
  endgenerate
  
endmodule 

//////////////////// full substractor //////////////////// 

module fullsub (input1, input2, sub, bin, sub, bo)
  input input1, input2, bin;
  output reg sub, bo;
  wire b,b1,sub1
  half_sub h1 (.input1(input1),.input2(input2),.bo(b),. sub(sub1));
  half_sub h2 h2(.input1(sub1),.input2(bin),.bo(b1),.sub(sub));
  or bout(bo,b1,b);
  
  ///////////////////////half_sub//////////////
  
  module half_sub(input input1, input2, output reg sub, bo);
    assign sub = inp1 ^ inp2;
    assign bo = ~inp1 & inp2;
  endmodule
