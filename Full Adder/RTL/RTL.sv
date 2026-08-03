module full_adder(
   input  logic [2:0] a,b,
   input  logic c_in,
   input  logic clock,
   output logic [3:0] out
);

logic [2:0] sum;
logic carry;

always @(posedge clock) begin
   {carry,sum} = a+b+c_in;
   out <= {carry,sum};
end

endmodule