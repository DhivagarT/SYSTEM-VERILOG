// Create a class packet with private data fields addr, data, parity.
// Provide functions:
// set_fields()
// calc_parity()
// print_packet()

class packet;
  
  local int addr;
  local int data;
  local int parity;
  
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


module exp;
  packet p;
  
  initial begin

    p=new();
  
    p.set_fields(1,0);
    p.calc_parity();
    p.print_packet();
   
  end
endmodule

// OUTPUT
// # KERNEL: ADDR=1 DATA=0 PARITY=1 
  
