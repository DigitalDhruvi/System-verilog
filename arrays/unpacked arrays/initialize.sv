module tb;
bit [1:0]arr[0:2][1:4];
initial begin
	arr = '{3{'{2{1,2}}}};
	foreach(arr[i,j])
		$display("arr[%0d][%0d]=%0d",i,j,arr[i][j]);
end
endmodule
