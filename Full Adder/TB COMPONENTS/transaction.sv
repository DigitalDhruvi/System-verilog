class transaction;
rand logic [2:0]a,b;
rand logic c_in;
logic [3:0]out;
function void display(string s);
      $display("%s\n a=%0d\n b=%0d\n c_in=%0d\n out=%0d",s,
                a,b,c_in,out);
endfunction
endclass