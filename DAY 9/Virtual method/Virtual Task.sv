//virtual task
class parent;
  string a;
  byte b;
  
  virtual task display();
    a="HEY GUYS";
    b=15;
    $display("A=%0s B=%0d",a,b);
  endtask
endclass

class child extends parent;
  string c;
  string d;
  
  task display();
    c="NO PARENT DISPLAY";
    d="ONLY CHILD";
    $display("C=%0s \nD=%0s",c,d);
  endtask
endclass

module exp;
  parent p;
  child c;
  initial begin
    c=new();
    p=new c;
    p.display();
  end
endmodule

// OUTPUT
// # KERNEL: C=NO PARENT DISPLAY 
// # KERNEL: D=ONLY CHILD
