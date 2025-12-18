//Semaphore - try_get()
module exp;
  semaphore sem=new(10);            //initial key=10
  
  initial begin
    $display("SEMAPHORE EXECUTION        [%0t]",$time);
    sem.get(7);                                  //initial key=>10-7 = 3
    $display("7 KEYS GOT FROM THE HOTEL  [%0t]",$time);
    #4;
    sem.put(2);                                  //initial key=>3+2 = 5
    $display("2 KEYS RETURN TO THE HOTEL [%0t]",$time);

  end
  initial begin
    #2;
    sem.try_get(7);                                 //initial key=> at 0 delay 5-7 =-2 
    $display("7 KEYS GOT FROM THE HOTEL AT DELAY [%0t]",$time);
    
    #10;                               //in try_get() if no key availabe it execute next line
    sem.put(2);                       //but in normal get() if no key available return 0 or don't 
    $display("ADDING NEW VALUE  [%0t]",$time); // execute the display.
  end
  
endmodule

// OUTPUT
// SEMAPHORE EXECUTION        [0]
// 7 KEYS GOT FROM THE HOTEL  [0]
// 7 KEYS GOT FROM THE HOTEL AT DELAY [2]
// 2 KEYS RETURN TO THE HOTEL [4]
// ADDING NEW VALUE  [12]
