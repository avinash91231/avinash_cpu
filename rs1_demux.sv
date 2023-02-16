module rs1_demux(opcode, rs1_in, input1);
  
  parameter N=16;
  input [N-1:0] rs1_in;
  output reg [N-1:0]input1;
  input [3:0] opcode;
  always@(opcode)begin
    
    case (opcode) 
      4'b0000 :  begin 
        input1 = rs1_in;
      end
      
      4'b0001 : begin 
        input1 = rs1_in;
      end
      
      4'b0010 : begin 
        input1 = rs1_in;
      end 
        4'b0011 :begin 
          input1 = rs1_in;
        end
      4'b0100 : begin 
        input1 = rs1_in;
      end
      default : begin 
        input1=0;
        
      end
    endcase
  end
  
endmodule
