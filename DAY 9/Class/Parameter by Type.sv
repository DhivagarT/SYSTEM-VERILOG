//Parameterized Type decleration
class one#(parameter a,type b=string);  //syntax for parameter type
  bit[a-1:0]x;
  b y;
  function new();
    x=12;
    y="HELLO";
  endfunction
  
  function void display();
    $display("X=%0d y=%0s",x,y);
  endfunction
endclass


module exp;
  one #(3)o;  //assigning parameter value
  initial begin
    o=new();
    o.display(); 
  end
endmodule

// OUTPUT
// # KERNEL: X=4 y=HELLO
