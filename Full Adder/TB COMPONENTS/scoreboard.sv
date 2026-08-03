class scoreboard;

mailbox mon2sb;
int count_sb=0;

function new(mailbox mon2sb);
this.mon2sb=mon2sb;
endfunction

task main();
forever begin
transaction trans;
mon2sb.get(trans);
if ((trans.a + trans.b + trans.c_in)==trans.out) begin
$display("==================");
$display("Result is expected");
$display("==================");
end
else
$display("error");

count_sb++;
trans.display("from scoreboard");
$display("===================");
end
endtask
endclass