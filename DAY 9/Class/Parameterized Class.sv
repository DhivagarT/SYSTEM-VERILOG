//Parameterized class
class one#(parameter a,b);
  bit[a-1:0]x;
  bit[b-1:0]y;
  
  function new();
    x=12;
    y=59;
  endfunction
  function void display();
    $display("x=%0d y=%0d",x,y);
  endfunction
endclass

module exp;
  one #(4,3)o;
  initial begin
    o=new();
    o.display();
  end
endmodule

// OUTPUT
// # KERNEL: x=12 y=3
