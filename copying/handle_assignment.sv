//Handle assignment 
class world;
	bit a=0;
endclass

module learn;
//handles created but points to null
world h1;
world h2; 

initial begin
	//Value of a when object has not been created or the handle points to null
	if (h1 == null)
		$display("value of a is null");
	else 
		$display("object has been created");
//creating an object
h1 = new(); //handle points to an object
h1.a=1;
$display("updated value of a is %0d",h1.a);
//creating a new handle and copying properties of first handle into it
//points to null
h2=new();
h2=h1;
$display("value of a stored in h2 is ",h2.a);

end
endmodule

//Functions or tasks cannot be copied like in deep copy
class address;
string city;
endclass

class employee;
string name;
address addr;
endclass

module tb;
employee h1, h2;

initial begin
	// Create first employee
	h1 = new();
	h1.name = "";

	// Create address object
	h1.addr = new();
	h1.addr.city = "Delhi";

	// Handle assignment
	h2 = h1;

	// Modify using h2
	h2.name = "Rahul";
	h2.addr.city = "Bangalore";

	// Display using h1
	$display("Name = %s", h1.name);
	$display("City = %s", h1.addr.city);
end
endmodule