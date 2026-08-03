//copy commands in sv

//shallow copy: only properties of the class are allocated new memory when copied

class subclass; //child class
	int sub_data;   //property of this sub class
endclass

class transcript; //parent class
	int data;         //property of this parent class
	subclass sub;     //calling child class
endclass 

module trans;     
	transcript t1,t2; //creating two handles t1 and t2

	initial begin
		t1=new();         //t1 handle points to an object
		t1.sub=new();     //child class object creation
		t1.data=4;        //assigning some value to data
		t1.sub.sub_data=6;//assigning some value child class property sub_data
		$display("value of t1 data = %0d t1 sub_data = %d",t1.data,t1.sub.sub_data);
		t2=new t1;        //creating a new object pointed by t2 and all of t1 is copied
		t2.data=40;       //assigning value to data of t2 will not affect property of t1 
		t2.sub.sub_data=60;//assigning value to a child class data will also affect child class sub_data of t1
		$display("value of t1 data = %0d t2 data = %d",t1.data,t2.data);
		$display("value of t1 sub_data = %0d t2 sub_data = %d",t1.sub.sub_data,t2.sub.sub_data);
		//same memory location for class type property hence t1 and t2 show same value
	end

endmodule

//shallow copy when class is inside a class

class outer;
	int data;
	class inner;
		int data_in;
	endclass
	inner i;
endclass

module tb;
	outer o1,o2;
	initial begin
		o1=new();
		o1.data=4;
		o1.i=new();
		o1.i.data_in=5;
		$display("value of o1 data = %0d o1 data_in = %d",o1.data,o1.i.data_in);
		o2=new o1;
		o2.data=40;
		o2.i.data_in=50;
		$display("value of o1 data = %0d o2 data = %d",o1.data,o2.data);
		$display("value of o1 data = %0d o2 data = %d",o1.i.data_in,o2.i.data_in);
	end
endmodule

