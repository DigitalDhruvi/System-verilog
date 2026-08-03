
module enum_datatype;
  enum {a=2,b=5,c,d,e} enum_variable; // a=2 b=3 c=4 and so on are enum constants
  initial begin
    $display("Name of first constant = %s",enum_variable.first.name);
    $display("Value of first constant = %d",enum_variable.first);
    $display("Value of last constant = %d",enum_variable.last);
    $display("Total number of constant = %d",enum_variable.num);
    
    enum_variable = e; //initializing enum_variable for using built in methods such as next and previous
    $display("Value of next constant = %d",enum_variable.next); 
    //or next(1) is same  
    //displays value of a as it is circular in nature
    $display("Value of prev constant = %d",enum_variable.prev);
    $display("Value of next constant = %d",enum_variable.next(3));
  end
endmodule
