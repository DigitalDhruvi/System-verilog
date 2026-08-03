//Packed arrays 
//single dimension arrays

module tb;
bit [3:0]my_array; 	// A vector or 1D packed array
initial begin
	// 1. Assign a value to the vector
	my_array = 13;
	// 2. Iterate through each bit of the vector and print value
	for (int i = 0; i < $size(my_array); i++) begin
		$display ("my_array[%0d] = %b", i, my_array[i]);
	end
end
endmodule

//packed multidimension arrays

//2D array
module tb;
bit [3:0][7:0]my_array;
initial begin
	my_array = 32'hABCD_ACDB;
	for(int i = 0; i < $size(my_array); i++) begin
		$display("my_array[%0d] = %h", i, my_array[i]);
	end
end
endmodule

//packed 3D array 

module tb;
bit [2:0][3:0][7:0]my_array;
initial begin
	my_array[0] = 32'hAAAA_AAAA;
	my_array[1] = 32'hBBBB_BBBB;
	//my_array[2] = 32'hCCCC_CCCC;
	my_array[2][1][0] = 1'b1;
	$display("my_array[0][0][7] is %0d",my_array[0][0][7]);
	$display("my_array[0][0][6] is %0d",my_array[0][0][6]);
	
	$display("my_array[0][0][6] and my_array[0][0][7] is %0b",my_array[0][0][7:6]);
	for(int i = 0; i < $size(my_array); i++) begin
		$display("my_array[%0d] = %h",i,my_array[i]);
	end
end
endmodule

