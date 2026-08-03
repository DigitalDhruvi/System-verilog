`include "package.sv"
import pkg::*;
program test(add_if vif);
environment env;
initial begin
env=new(vif);
env.gen.count=10;
env.run();
end
endprogram