`include "code.sv"
`include "test.sv"
module top;
bit clock;
always #5 clock = ~clock;
add_if vif(clock);
test t1(vif);
full_adder duv(.clock(vif.clock),.a(vif.a),.b(vif.b),.c_in(vif.c_in),.out(vif.out));
initial begin 
$dumpfile("dump.vcd"); 
$dumpvars;
end
endmodule