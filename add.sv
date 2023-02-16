module full_adder (input1, input2, cin, sum, cout);
  parameter N=16;
  input cin;
  input [N-1:0] input1, input2;
  wire [N:0]c;
  wire [N-1:0]sum1;
  output [N-1:0]sum;
  
  output cout;
  
  genvar i;
  generate (i=0;i<=N-1; i++)begin
    assign c[0]=cin;
    full_adder fa0(.input1(input1[i]),.input2(input2[i]),.cin(c[i]),.sum(sum1[i]),.cout(c[i+1]));
    assign cout = c[N];
  end
  endgenerate
  
endmodule

//////////////////////// Full adder/////////////////


module full_adder(input1,input2,cin,sum, cout);
input input1,input2,cin;
output sum, cout;
  wire x,y,z;
  half_adder h1(.input1(input1), .input2(input2), .sum(x), .cout(y));
  half_adder h2(.input1(x), .input2(cin), .sum(sum), .cout(z));
or or_1(cout,z,y);
endmodule


////////////////////////////half adder ///////////////////////

module half_adder (input1, input2, sum, cout);
  input input1, input2;
  output sum, cout;
  xor h1(sum, input1, input2);
  and h2(cout, input1, input2);
endmodule









