module adder(input [7:0]in1,	
input [7:0]in2,
input bit reset,
input bit clk,
output reg[8:0]out);
always@(posedge clk or posedge reset) begin
if (reset)
out <= 0;
else 
out <= in1 + in2;
end
endmodule