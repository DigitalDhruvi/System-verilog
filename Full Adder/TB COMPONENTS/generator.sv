class generator;
transaction trans;
int count;
event ended;
mailbox gen2drv;

function new(mailbox gen2drv);
this.gen2drv = gen2drv;
endfunction

task main();
repeat(count) begin
	trans = new();
	if(!trans.randomize()) 
	$fatal("not randomized");
	else
	gen2drv.put(trans);
end
->ended;
endtask

endclass