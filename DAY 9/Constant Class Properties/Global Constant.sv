//Global Constant
class parent;
  string a;
  const string b="TWO"; //constant global variable
  
  function new();  //new()-constructor
    a="ONE";
  endfunction
  
  function void y();
    $display("A=%0s b=%0s",a,b);
  endfunction
endclass

module ex;
  parent p;
  
  initial begin
    p=new();  //creating memory or object
    p.y();    //calling function
  end
endmodule

// OUTPUT
// # KERNEL: A=ONE b=TWO
