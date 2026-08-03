//Accessign particular bits / bit slicing in packed arrays

module tb;
bit [15:0] oneD = 16'hABCD;                 // 1D packed
bit [3:0][15:0] twoD;                      // 2D packed
bit [1:0][3:0][7:0] threeD;               // 3D packed

initial begin
	twoD   = 64'hAAAA_BBBB_CCCC_DDDD;
	//threeD = 64'hCCCC_DDDD_EEEE_FFFF;
	threeD = 64'hAAAA_BBBB_CCCC_DDDD_EEEE_FFFFF;  
    
	// 1D slicing
	$display("oneD = %h", oneD);
	$display("5th bit (oneD[4]) = %b", oneD[4]);         // single bit
	$display("Upper byte = %h", oneD[15:8]);             // slice

	// 2D slicing
	$display("\ntwoD = %h", twoD);
	$display("twoD[0] = %h", twoD[0]);                   // 16-bit chunk
	$display("twoD[1][7:4] = %h", twoD[1][7:4]);         // nibble
	$display("twoD[3:2] = %h", twoD[3:2]);               // 32-bit slice

	// 3D slicing
	$display("\nthreeD = %h", threeD);
	$display("threeD[0] = %h", threeD[0]);               // 2D slice
	$display("threeD[1][2] = %h", threeD[1][2]);         // 16-bit
	$display("threeD[2][3][7:0] = %h", threeD[2][3][7:0]); // byte
end
endmodule
