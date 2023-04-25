module regfile(input clk,
   input [3:0] input1,
   input [3:0] input2,
   input [3:0] rd,
   input [15:0] wdata,
   input wen,
   output reg [15:0] rdata_1,
   output reg [15:0] rdata_2);

reg [15:0] regfile [0:15];

   always @(posedge clk) begin
      if (wen) begin
         regfile[rd] <= wdata;
      end
   end

  assign rdata_1 = regfile[input1];
  assign rdata_2 = regfile[input2];

endmodule
