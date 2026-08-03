
//Assigning packed to unpacked
module tb;
bit [2:0]arr[4:0][3:0][7:0];
initial begin
	//arr[4][3][7] = 8'hAA; //will not work
	foreach(arr[4][3][i]) begin
		arr[4][3][i]=i;
		$display("array is arr[4][3][%0d] = %0d",i,arr[4][3][i]);
	end
end
endmodule

