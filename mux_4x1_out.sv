module Output(sum, mul_o, sub,rslt, result);
  parameter N=16;
  input [N-1:0] sum, mul_o, sub,rslt;
  input [3:0]num;
  output reg [N-1:0] result;
  always@(*)begin
    
    case (num)
      4'b0000: result=sum;
      4'b0001: result=sub;
      4'b0010: result=mul_o;
      4'b0100: reult=rslt;
    default : begin
      result = 0;
      
    end 
    endcase
  end 
endmodule
