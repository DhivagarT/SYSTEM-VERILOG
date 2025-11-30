// using fork join parallel execution of two task
module two_tasks_parallel;

  int out1, out2;

  task task1(output int r1);
    #3;
    r1 = 10 + 5;
    $display("Time=%0t | Task1 Output = %0d", $time, r1);
  endtask

  task task2(output int r2);
    #5;
    r2 = 7 * 3;
    $display("Time=%0t | Task2 Output = %0d", $time, r2);
  endtask

  initial begin
    $display("Starting parallel tasks...");
    fork
      task1(out1);
      task2(out2);
    join
    $display("Both tasks completed.");
    $display("Final Results → Task1=%0d  Task2=%0d", out1, out2);
    #20 $finish;
  end

endmodule

// OUTPUT
// # Starting parallel tasks...
// # Time=3 | Task1 Output = 15
// # Time=5 | Task2 Output = 21
// # Both tasks completed.
// # Final Results ? Task1=15  Task2=21
