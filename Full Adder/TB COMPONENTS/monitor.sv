class monitor;
virtual add_if vif;
mailbox mon2sb;

function new(virtual add_if vif,mailbox mon2sb);
this.vif=vif;
this.mon2sb=mon2sb;
endfunction

task main();
forever begin
	transaction trans;
	trans=new();
	@(negedge vif.clock)
	//#1;
	trans.a <= vif.a;
	trans.b <= vif.b;
	trans.c_in <= vif.c_in;
	@(negedge vif.clock)
	trans.out <= vif.out;
	@(negedge vif.clock)
	mon2sb.put(trans);
	//$display("from monitor");
	trans.display("from monitor");
	end
endtask
endclass