
//Deep copy 
class child;
	int child_data;
	function child copy(); //copy method ; child = class type ; copy = handle
		copy = new();          //object creation of the handle
		copy.child_data=this.child_data; 
	endfunction
endclass

class parent;
	int parent_data;
	child child_h;
	function parent copy();
		copy=new();
		copy.parent_data=this.parent_data;
		copy.child_h=this.child_h.copy;
	endfunction
endclass

module test;
	parent h1,h2;
	initial begin
		h1=new();
		h1.child_h=new();
		h1.parent_data=4;
		h1.child_h.child_data=5;
		h2=h1.copy;
		$display("value of parent data = %0d child data = %d",h1.parent_data,h1.child_h.child_data);
		//now lets try changing the value of properties and methods of copied part
		h2.parent_data=40;
		h2.child_h.child_data=50;
		$display("value of parent data(original=4) = %0d  child data(original=5) = %d",h2.parent_data,h2.child_h.child_data);
	end
endmodule