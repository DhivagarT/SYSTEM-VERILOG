//Merging Event
module merge_working;
  event e1, e2;

  initial begin
    #2 e2 = e1;   // At 2ns, e2 merges with e1
    #5 ->e1;      // At 5ns, we trigger e1
  end

  initial begin
    $display($time, "\tWaiting for E2...");
    wait(e1.triggered);        // Triggering e1 , e2 also triggered at same time
    $display($time, "\tE2 caught trigger! (Because it merged with E1)");
  end
endmodule

// OUTPUT
// # KERNEL:  0	Waiting for E2...
// # KERNEL:  7	E2 caught trigger! (Because it merged with E1)
