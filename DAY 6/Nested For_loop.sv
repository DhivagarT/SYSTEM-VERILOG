// Print a 3×3 matrix using nested loops
module matrix_print;

  int a = 1;

  initial begin
    for(int i = 0; i < 3; i++) begin
      for(int j = 0; j < 3; j++) begin
        $write("%0d ", a);
        a++;
      end
      $display("");  // new line after each row
    end
  end

endmodule

// OUTPUT
// # KERNEL: 1 2 3 
// # KERNEL: 4 5 6 
// # KERNEL: 7 8 9 
