//Wait_Order-class
class exp;
  event e1;
  event e2;
  
  task ev1;
    
    #2 $display($time,"\tEVENT 1 EXECUTED");
    ->e1;
    
    #4 $display($time,"\tEVENT 2 EXECUTED");
    ->e2;
    
  endtask
endclass
  
  module ep;
     exp e=new();
    
    initial begin  
     e.ev1();
    end
    
    initial begin
      wait_order(e.e1,e.e2)
      $display($time,"\tWAIT ORDERED");
      else
        $display($time,"\tCONDITION FAILS");
    end
  endmodule

// OUTPUT
// # KERNEL:                    2	EVENT 1 EXECUTED
// # KERNEL:                    6	EVENT 2 EXECUTED
// # KERNEL:                    6	WAIT ORDERED
