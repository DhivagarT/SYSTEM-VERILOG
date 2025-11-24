// Find total number of 2 one's present in the 4 bit 
module gen_all_values;

  parameter int N = 4;
  logic [N-1:0] d;

  initial begin
    for (int i = 0; i < (1 << N); i++) begin
      d = i;                
//       $display("%04b", d);  //For counting overall values in the variable
      if($countones(d)==2)   //for counting 2 number of 1's in 4-bit
      $display("%04b",d);
    end
    $finish;
  end

endmodule


// OUTPUT FOR 2 NUMBER OF 1 IN D

// # KERNEL: 0011
// # KERNEL: 0101
// # KERNEL: 0110
// # KERNEL: 1001
// # KERNEL: 1010
// # KERNEL: 1100

// OUTPUT FOR OVERALL VALUES IN D

// # KERNEL: 0000
// # KERNEL: 0001
// # KERNEL: 0010
// # KERNEL: 0011
// # KERNEL: 0100
// # KERNEL: 0101
// # KERNEL: 0110
// # KERNEL: 0111
// # KERNEL: 1000
// # KERNEL: 1001
// # KERNEL: 1010
// # KERNEL: 1011
// # KERNEL: 1100
// # KERNEL: 1101
// # KERNEL: 1110
// # KERNEL: 1111
