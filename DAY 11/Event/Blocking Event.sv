//Blocking Event trigger
module exp;
  event e1;
  
  initial begin
    $display($time,"\t BLOCKING EVENT");
    ->e1;                                        //BLCOKING EVENT TRIGGER
    $display($time,"\t EVENT 1 TRIGGERED");
  end
  initial begin
    $display($time,"\t WAITING FOR CAPTURING");
    wait(e1.triggered);
    $display($time,"\t WAIT CONDITION EXECUTED");
  end
  initial begin
    $display($time,"\t WAITING FOR TRIGGERING");
    @(e1.triggered);
    $dsiaply($time,"\t @ CONDITION EXECUTED");
  end
endmodule

// OUTPUT
// # KERNEL:                    0	 BLOCKING EVENT
// # KERNEL:                    0	 EVENT 1 TRIGGERED
// # KERNEL:                    0	 WAITING FOR CAPTURING
// # KERNEL:                    0	 WAIT CONDITION EXECUTED
// # KERNEL:                    0	 WAITING FOR TRIGGERING
