//Unpacked arrays

//1D arrays
module tb;
bit data[2:0]; //data is of 1 bit (0,1)
bit [1:0]data_2[2:0]; //data is of 2 bits (0,1,2,3)
initial begin
data[0] = 0;
data[1] = 1;
data[2] = 0;

data_2[0] = 3;
data_2[1] = 2;
data_2[2] = 0;
$display($size(data_2));
$display($size(data));
	for (int i = 0; i < $size(data); i++) begin
		$display("data at %0b position is %d",i,data[i]);
	end
end
endmodule

//2D arrays
module tb;
byte my_data [2][4]; // 2 rows, 4 cols

initial begin
	// Assign random values to each slot of the stack
	for(int i = 0; i < 2; i++) begin
	for(int j = 0; j < 4; j++) begin
		my_data[i][j] = $random;
		//$display ("my_data[%0d][%0d] = %0d", i, j, my_data[i][j]);
		$display($size(my_data));
	end
	end
	// Print contents of the stack
	$display ("my_data = %p", my_data);
end
endmodule

//3D array 
module tb;
int my_data[1:0][3:0][1:0]; //[rows][coloumns][internal horizontal slicing of each smallest unit]
initial begin
my_data = '{
		'{ '{1,2},
		   '{3,4},
		   '{5,6},
		   '{7,8} } ,

		'{ '{9,10},
		   '{11,12},
		   '{13,14},
		   '{15,16} } };
$display ("my_data = %p", my_data);
end
endmodule

