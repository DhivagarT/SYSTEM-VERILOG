//Non-Blocking Event trigger
module exp;
  event e1;
  
  initial begin
    $display("%0t BLOCKING EVENT",$time);
    ->>e1;      //Non-Blocking Trigger
    $display("%0t EVENT 1 TRIGGERED",$time);
  end
  initial begin
    $display("%0t WAITING FOR CAPTURING",$time);
    wait(e1.triggered);
    $display("%0t WAIT CONDITION EXECUTED",$time);
  end
  initial begin
    $display("%0t WAITING FOR TRIGGERING",$time);
    @(e1.triggered);
    $display("%0t @ CONDITION EXECUTED",$time);
  end
endmodule

// OUTPUT

// 0 BLOCKING EVENT
// 0 EVENT 1 TRIGGERED
// 0 WAITING FOR CAPTURING
// 0 WAIT CONDITION EXECUTED
// 0 WAITING FOR TRIGGERING
