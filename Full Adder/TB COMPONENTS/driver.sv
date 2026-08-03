class driver;
//interface is static and class driver is dynamic so we create a handle that points to the real interface instance
virtual add_if vif;
//creating mailbox handle 
mailbox gen2drv;
//counting number of transactions
int count_drv=0;
function new(virtual add_if vif,mailbox gen2drv);
this.vif = vif;
this.gen2drv = gen2drv;
endfunction 

//if you have a reset signal then you can create a task
//task reset;
//wait(vif.reset);
//$dsiplay("driver reset started");
//a<=0; b<=0; c<=0;
//wait(!vif.reset);
//$display("driver reset ended");
//endtask 

//task to drive transaction packet to virtual interface
task main();
forever begin //Verification environments are usually always alive until test ends.
	transaction trans; //points to transaction received form mailbox
	gen2drv.get(trans); //Mailbox copies handle into local variable
	@(posedge vif.clock); //wait for clock before driving dut
	vif.a<=trans.a;
	vif.b<=trans.b;
	vif.c_in<=trans.c_in;
	@(posedge vif.clock)
	trans.out<=vif.out;
	@(posedge vif.clock)
	//$display("from driver");
	$display("====================");
	trans.display("from driver");
	count_drv++;
	end
endtask
endclass