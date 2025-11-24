//Write a program to count even and odd numbers using foreach.
module odd_even;
  int a[]='{1,2,3,4,5};
  int even_count=0;
  int odd_count=0;
  
  initial begin
    foreach(a[i])
      if(a[i]%2==0)
        even_count++;
    else
      odd_count++;
  end
  initial begin
    $display("value of a=%0p",a);
    $display("even_count=%0d",even_count);
    $display("odd_count=%0d",odd_count);
  end
endmodule

// OUTPUT
// # KERNEL: value of a=1 2 3 4 5
// # KERNEL: even_count=2
// # KERNEL: odd_count=3
