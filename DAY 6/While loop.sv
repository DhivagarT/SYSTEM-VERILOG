// Use a while-loop to print numbers from 10 down to 1.
module while_loop;
  int a=10;
  
  initial begin  
    while(a>=1)begin
      $display("A =%0d",a);
      a=a-1;
      #1;
    end
  end
endmodule

// OUTPUT
// # KERNEL: A =10
// # KERNEL: A =9
// # KERNEL: A =8
// # KERNEL: A =7
// # KERNEL: A =6
// # KERNEL: A =5
// # KERNEL: A =4
// # KERNEL: A =3
// # KERNEL: A =2
// # KERNEL: A =1
