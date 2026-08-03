class environment;
generator gen;
driver drv;
monitor mon;
mailbox mon2sb;
mailbox gen2drv;
scoreboard sb;
virtual add_if vif;

function new(virtual add_if vif);
this.vif=vif;
gen2drv=new();
mon2sb=new();
gen=new(gen2drv);
drv=new(vif,gen2drv);
mon=new(vif,mon2sb);
sb=new(mon2sb);
endfunction

task pre_test();
vif.a<=0;
vif.b<=0;
vif.c_in<=0;
endtask

task test();
fork
	gen.main();
	drv.main();
	mon.main();
	sb.main();
join_any
endtask

task post_test();
wait(gen.ended.triggered);
wait(gen.count==drv.count_drv);
wait(gen.count==sb.count_sb);

endtask

task run();
pre_test();
test();
post_test();
$finish;
endtask

endclass