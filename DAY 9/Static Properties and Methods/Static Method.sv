//Static Methods and Non-Static Methid

class demo;
  static string a; //static variable
  static int b;    //static variable
  int c;           //non-static variable
  
  //Static Method to set Value
  static function void setf1(string val_a,int val_b);
    a=val_a;
    b=val_b;
  endfunction
  
  //Static Method to Display Value
  static function void getf1();
    $display("A=%0s B=%0d",a,b);
  endfunction
  
  //Non-static method to set Value
  function void setf2(int c);
    this.c=c;
  endfunction
  
  //Non-static method to Display Value
  function void getf2();
    $display("C=%0d",c);
  endfunction
endclass
  
  module exp;
    demo d;   //Handle For Non-static
    
    initial begin   //no handle and object created because static depends on class
      demo::setf1("TOTAL BOX",2);  //demo::setf1 - Keyword
      demo::getf1();
      demo::setf1("TOTAL ELEMENT",1);
      demo::getf1();
      
      //Non-Static Declaration
      d=new();    //Object creation
      d.setf2(10); //Value Decleration
      d.getf2();  //display value
    end
  endmodule

// OUTPUT
// # KERNEL: A=TOTAL BOX B=2
// # KERNEL: A=TOTAL ELEMENT B=1
// # KERNEL: C=10
