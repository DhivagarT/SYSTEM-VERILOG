// Write a for-loop to print numbers from 1 to 20.
module for_loop;
  int a=1;
  int i;
  initial begin
    for(i=1;i<21;i++)
      $display("A=%0d",i);
  end
  
endmodule

// OUTPUT
// # KERNEL: A=1
// # KERNEL: A=2
// # KERNEL: A=3
// # KERNEL: A=4
// # KERNEL: A=5
// # KERNEL: A=6
// # KERNEL: A=7
// # KERNEL: A=8
// # KERNEL: A=9
// # KERNEL: A=10
// # KERNEL: A=11
// # KERNEL: A=12
// # KERNEL: A=13
// # KERNEL: A=14
// # KERNEL: A=15
// # KERNEL: A=16
// # KERNEL: A=17
// # KERNEL: A=18
// # KERNEL: A=19
// # KERNEL: A=20
