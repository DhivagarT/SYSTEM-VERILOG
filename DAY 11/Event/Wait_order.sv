//IPC
//Event - Wait_order
module exp;
  event e1, e2, e3;
  
  initial begin
    fork
      // Process 1: Trigger e1 at 1ns
      begin
        #1 ->e1;
        $display($time, "\tEVENT 1 TRIGGERED (Scheduled for NBA)");
      end
    
      // Process 2: Trigger e2 and e3 at 2ns
      begin
        #4 ->e2;
        $display($time, "\tEVENT 2 TRIGGERED (Scheduled for NBA)");
      end
      begin
        #3 ->e3;
        $display($time, "\tEVENT 3 TRIGGERED (Scheduled for NBA)");
      end
   
      // Process 3: The Monitor
      begin  
        $display($time, "\tMONITOR: Waiting for e1 -> e2 -> e3...");
        wait_order(e1, e3, e2) begin
          $display($time, "\tSUCCESS: Events captured in order.");
        end else begin
          $display($time, "\tFAILURE: Events out of order.");
        end
      end
    join
  end
endmodule
    
//   OUTPUT
// # KERNEL:                    0	MONITOR: Waiting for e1 -> e2 -> e3...
// # KERNEL:                    1	EVENT 1 TRIGGERED (Scheduled for NBA)
// # KERNEL:                    3	EVENT 3 TRIGGERED (Scheduled for NBA)
// # KERNEL:                    4	EVENT 2 TRIGGERED (Scheduled for NBA)
// # KERNEL:                    4	SUCCESS: Events captured in order.
