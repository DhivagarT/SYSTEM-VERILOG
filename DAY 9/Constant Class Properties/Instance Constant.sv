//Instance Constant
class parent;
  string a;
  const string b; //constant global variable
  
  function new();  //new()-constructor
    a="ONE";
    b="TWO";
  endfunction
  
  function void y();
    $display("A=%0s B=%0s",a,b);
  endfunction
  
  //   function new();       //This is not allowed because only once the const variable is declared
//     a="FREE";
//     b="THREE";
//   endfunction
  
//   function void y();
//     $display("A=%0s b=%0s",a,b);
//   endfunction
endclass

module ex;
  parent p;
  
  initial begin
    p=new();  //creating memory or object
    p.y();    //calling function
  end
endmodule

// OUTPUT
// # KERNEL: A=ONE B=TWO
