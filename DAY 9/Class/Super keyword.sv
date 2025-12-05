class Parent;
  string name;
  string age;
  
  function void details(string name,string age);
    this.name=name;
    this.age=age;
    
    $write("NAME= %0s \tAGE= %0s",this.name,this.age);
  endfunction
endclass

class Child extends Parent;      //extend parent class to child class
  int num;
  
  function void details(string name,string age,int num);
    super.details(name,age);    //works only in inheritance method (same like this key)
   this.num=num;
    
    $write("\tNUMBER= %0d",num);
  endfunction
endclass

module c;
  initial begin
    
    Child b;
    b=new();
  
    b.details("DHIVAGAR","21",1234);
  end
endmodule

// OUTPUT
// # KERNEL: NAME= DHIVAGAR 	AGE= 21	NUMBER= 1234
