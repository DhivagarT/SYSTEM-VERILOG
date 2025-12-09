//Public Encapsulation

//Protected Encapsulation

// Create a class packet with public data fields addr, data, parity.
// Provide functions:
// set_fields()
// calc_parity()
// print_packet()

class packet;
  
   int addr;     // default condition is public 
   int data;
   int parity;
  
  function void set_fields(int a,int b);
    addr=a;
    data=b;
  endfunction

  function void calc_parity();
    parity=addr^data;
  endfunction
  
  virtual function void print_packet();
    $display("ADDR=%0d DATA=%0d PARITY=%0d ",addr,data,parity);
  endfunction
endclass

class child extends packet;
  function void print_packet();
    //super.print_packet();
    $display("ADDR=%0d DATA=%0d PARITY=%0d",addr,data,parity);
  endfunction
endclass

module exp;
  packet p;
 child c;
  initial begin
   c=new();
   p=new();
   p= c;
    c.addr=1;   //Direct assigning
    c.data=0;   //Direct assigning
    c.calc_parity();
    c.print_packet();
 
  end
endmodule

// OUTPUT
// # KERNEL: ADDR=1 DATA=0 PARITY=1
