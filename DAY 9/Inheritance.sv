//Inheritance
class parent;     //Parent Class
  int a;
  string b;
  byte c;
  
  function new();    //Class Constructor
    a=1;
    b="HELLO GUY'S";
    c=15;
  endfunction
  
  function void display();  //Display Function
    $display("A=%0d \nB=%0s \nC=%0d",a,b,c);
  endfunction
  
endclass
 
class child extends parent;   //Child Class using Extends Keyword  
  string d;
  
  function new();   //Class Constructor
    d="GOOD MORNING";
  endfunction
  
  function void display();   //Display Function
    super.display();         //Calling parent Display Function
    $display("D=%0s",d);     //Display D value
  endfunction
  
endclass

module exp;
  child c;         //Creating Handle for Child class
  initial begin
    c=new();       //Creating object
    c.display();   //Calling child class Display Function
  end
endmodule

// OUTPUT
// # KERNEL: A=1 
// # KERNEL: B=HELLO GUY'S 
// # KERNEL: C=15
// # KERNEL: D=GOOD MORNING
