//Write an automatic function power(int base, int exp) that returns base^exp using a loop.
module power_while;

  function automatic int power(int base, int exp);
    int result = 1;
    int i = 0;
    while(i < exp) begin
      result = result * base;
      i = i + 1;
    end
    return result;
  endfunction

  initial begin
    $display("2^5 = %0d", power(2,5)); 
    $display("3^4 = %0d", power(3,4)); 
  end

endmodule

// OUTPUT

// # KERNEL: 2^5 = 32
// # KERNEL: 3^4 = 81
