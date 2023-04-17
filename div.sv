module div(input1, input2, rslt);
  parameter N=16;
  input [N-1:0] input1;
  input [N-1:0] input2;
  output reg [N-1:0] rslt=0;
  
  reg [N-1:0] x,y;
  reg [N:0] z;
  
  integer i;
  
  always@(input1 or input2)
    begin
      //initializing the variables
      x=input1;
      y=input2;
      z=0;
      
      for(i=0;i <N; i=i+1)begin
        z = {z[N-2:0],x[N-1]};
        x[N-1:1] = x[N-2:0];
          z = z-y;
        if(z[N-1] == 1) begin
          x[0] = 0;
          z = z+y; end
        
        else
          x[0] = 1;
      end
       rslt = x;
    end 
endmodule
      
