//bresk,continue,return
module loop_control;

  int a[];

  initial begin
    a = new[10];

    foreach (a[i])
      a[i] = i;

    $display("\n--- ARRAY BEFORE LOOP ---");
    foreach (a[i])
      $display("a[%0d] = %0d", i, a[i]);

    $display("\n--- LOOP PROCESSING ---");
    foreach (a[i]) begin

      if (a[i] == 9) begin
        $display("BREAK at index %0d", i);
        break;
      end

      if (a[i] == 2) begin
        $display("CONTINUE at index %0d", i);
        continue;
      end
      if (a[i] >= 4 && a[i] <= 6) begin
        $display("SKIP range 4-6 index %0d", i);
        continue;
      end
      $display("Normal iteration i=%0d, value=%0d", i, a[i]);
    end
    $display("\n--- ARRAY AFTER LOOP ---");
    foreach (a[i])
      $display("a[%0d] = %0d", i, a[i]);
  end

  initial begin
    example_return();
  end

  task example_return();
    $display("\n--- RETURN EXAMPLE ---");
    for (int j = 0; j < 10; j++) begin
      if (j == 3) begin
        $display("RETURN at j=%0d", j);
        return;
      end
      $display("j = %0d", j);
    end
    $display("This will not print due to return");
  endtask

endmodule

// OUTPUT
// # KERNEL: --- ARRAY BEFORE LOOP ---
// # KERNEL: a[0] = 0
// # KERNEL: a[1] = 1
// # KERNEL: a[2] = 2
// # KERNEL: a[3] = 3
// # KERNEL: a[4] = 4
// # KERNEL: a[5] = 5
// # KERNEL: a[6] = 6
// # KERNEL: a[7] = 7
// # KERNEL: a[8] = 8
// # KERNEL: a[9] = 9
// # KERNEL: 
// # KERNEL: --- LOOP PROCESSING ---
// # KERNEL: Normal iteration i=0, value=0
// # KERNEL: Normal iteration i=1, value=1
// # KERNEL: CONTINUE at index 2
// # KERNEL: Normal iteration i=3, value=3
// # KERNEL: SKIP range 4-6 index 4
// # KERNEL: SKIP range 4-6 index 5
// # KERNEL: SKIP range 4-6 index 6
// # KERNEL: Normal iteration i=7, value=7
// # KERNEL: Normal iteration i=8, value=8
// # KERNEL: BREAK at index 9
// # KERNEL: 
// # KERNEL: --- ARRAY AFTER LOOP ---
// # KERNEL: a[0] = 0
// # KERNEL: a[1] = 1
// # KERNEL: a[2] = 2
// # KERNEL: a[3] = 3
// # KERNEL: a[4] = 4
// # KERNEL: a[5] = 5
// # KERNEL: a[6] = 6
// # KERNEL: a[7] = 7
// # KERNEL: a[8] = 8
// # KERNEL: a[9] = 9
// # KERNEL: 
// # KERNEL: --- RETURN EXAMPLE ---
// # KERNEL: j = 0
// # KERNEL: j = 1
// # KERNEL: j = 2
// # KERNEL: RETURN at j=3
