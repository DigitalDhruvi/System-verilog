//typdef data type

module typedef_datatype;
  //creating unsigned int
  int b;
  alias integ = b;
  typedef bit [31:0] uint;
  uint a;
  initial begin
    uint = -12/3;
    integ = -12/3;
    $display("Value of uint = %d int = %d",uint,integ);
  end
endmodule

//typedef enum data type
module typedef_and_enum;
typedef enum {idle,set,ready,done} fsm_states;
fsm_states present_state;
fsm_states next_state;
fsm_states state = state.first;
initial begin
$display("%s : %d",state.name,state);
end
endmodule
