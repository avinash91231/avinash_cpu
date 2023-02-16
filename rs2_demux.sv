module rs2_demux(opcode, rs2_in, input2);
  
  parameter N=16;
  input [N-1:0] rs2_in;
  output reg [N-1:0]input2;
  input [3:0] opcode;
  always@(opcode)begin
    
    case (opcode) 
      4'b0000 :  begin 
        input2 = rs2_in;
      end
      
      4'b0001 : begin 
        input2 = rs2_in;
      end
      
      4'b0010 : begin 
        input2 = rs2_in;
      end 
        4'b0011 :begin 
          input2 = rs2_in;
        end
      4'b0100 : begin 
        input2 = rs2_in;
      end
      default : begin 
        input2=0;
        
      end
    endcase
  end
  
endmodule
