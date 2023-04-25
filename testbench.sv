module tb;
  
  reg [15:0] input1;
  reg [15:0] input2;
  reg [3:0] op_code;
  reg cin, bin;
  wire [15:0]rslt;
  
  top t1(.op_code(op_code),.input1(input1),.cin(cin),.bin()bin,.input2(input2),.rslt(rslt));
  
  initial begin
    repeat(5) begin
      #1;
      input1=$urandom;
      input2=$urandom;
      op_code=$urandom_range(0,5);
      cin=0;
      bin=0;
      $monitor("input_1=%0d input_2=%0d  op_code=%0p result=%0p",input1,input2,op_code,rslt);

   end
      end
      
  
endmodule
  
