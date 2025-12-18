//Semaphore 
module exp;
  semaphore sem=new(10);            //initial key=10
  
  initial begin
    $display("SEMAPHORE EXECUTION        [%0t]",$time);
    sem.get(7);                                  //initial key=>10-7 = 3
    $display("7 KEYS GOT FROM THE HOTEL  [%0t]",$time);
    #4;
    sem.put(2);                                  //initial key=>3+2 = 5
    $display("2 KEYS RETURN TO THE HOTEL [%0t]",$time);
    #5;
    sem.put(5);                                //initial key=> 5+5 = 10
    $display("5 KEYS RETURN TO HOTEL AT 9 DELAY  [%0t]",$time);
  end
  initial begin
    #2;
    sem.get(7);                                 //initial key=> at 0 delay 5-7 =-2 
    $display("7 KEYS GOT FROM THE HOTEL AT DELAY [%0t]",$time);//after the put at 9 delay 10-7=3
    #10;
    sem.put(2);
    $display("ADDING NEW VALUE  [%0t]",$time);
  end
  
endmodule

// OUTPUT
// SEMAPHORE EXECUTION        [0]
// 7 KEYS GOT FROM THE HOTEL  [0]
// 2 KEYS RETURN TO THE HOTEL [4]
// 5 KEYS RETURN TO HOTEL AT 9 DELAY     [9]
// 7 KEYS GOT FROM THE HOTEL AT DELAY   [9]
// ADDING NEW VALUE  [19]

