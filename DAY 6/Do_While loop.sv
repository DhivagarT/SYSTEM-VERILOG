// Write a do-while loop to print the values 1, 2, 3, 4, 5.
module do_while;

  task automatic do_loop(int a);
    do begin
      $display("VALUE OF A = %0d", a);
      a = a + 1;
      #1;
    end while(a <= 5);
  endtask

  initial begin
    do_loop(1);
    $finish;
  end

endmodule

// OUTPUT
// # KERNEL: VALUE OF A = 1
// # KERNEL: VALUE OF A = 2
// # KERNEL: VALUE OF A = 3
// # KERNEL: VALUE OF A = 4
// # KERNEL: VALUE OF A = 5
