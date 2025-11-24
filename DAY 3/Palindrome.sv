// Palindrome array
module palindrome_check;

  int a[];        
  bit is_pal = 1; 

  initial begin
    a = '{1, 2, 3, 2, 1};   // example array

    for (int i = 0; i < a.size()/2; i++) begin //for array , len()/2 for string
      if (a[i] != a[a.size()-1-i]) begin       // for array , len() for string
        is_pal = 0;
        break;
      end
    end

    if (is_pal)
      $display("Array is PALINDROME");
    else
      $display("Array is NOT palindrome");

    $finish;
  end

endmodule

// OUTPUT

// # KERNEL: Array is PALINDROME
