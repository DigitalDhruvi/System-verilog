
//Assigning unpacked to packed
module tb;
bit [3:0][4:0]parr;
bit uarr[3][3];
initial begin
	uarr[0][0]=1;
	parr[0][0]=uarr[0][0];
	$display("value of packed is %0d",parr[0][0]);
end
endmodule

