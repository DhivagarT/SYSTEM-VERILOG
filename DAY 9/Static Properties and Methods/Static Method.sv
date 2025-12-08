//static Methods
class demo;
  static string a;   //Static Variable
  static int b;      //Static Variable
//  int c;           //Non-Static Variable
  
  //Static Method to set Value
  static function void setf1(string val_a,int val_b);
    a=val_a;
    b=val_b;
//  c=2; not declared inside function because it is non-static  
  endfunction
  
  //Static Method to Display Value
  static function void getf1();
    $display("A=%0s B=%0d",a,b);
  endfunction
endclass
  
  module exp;
    initial begin   //no handle and object created because static depends on class
      demo::setf1("TOTAL BOX",2);  //demo::setf1 - Keyword
      demo::getf1();
      demo::setf1("TOTAL ELEMENT",1);
      demo::getf1();
    end
  endmodule

// OUTPUT
// # KERNEL: A=TOTAL BOX B=2
// # KERNEL: A=TOTAL ELEMENT B=1
