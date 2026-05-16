//strings and alias
module string_demo;

  string str = "HeLLo123";
  alias s = str;
  initial begin

    $display("Lower = %s", s.tolower());
    $display("Upper = %s", s.toupper());
    $display("Length = %0d", s.len());
    $display("Substr = %s", s.substr(1,4));
      
    s.putc(3,"z");
    $display("Modified = %s",s);
    $display("Character at index 3 = %0s",s.getc(3));
    //int num = "123".atoi();
    //$display("String to int = %0d", num);
  end
endmodule