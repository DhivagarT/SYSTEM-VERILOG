// Write a repeat(5) loop to print the message “SYSTEMVERILOG”.
module repeat_loop;
  
  string a;
  initial begin
    
    repeat(5)begin
   a="SYSTEM VERILOG";
      $display(a);
    end
  end
endmodule

// OUTPUT
// # KERNEL: SYSTEM VERILOG
// # KERNEL: SYSTEM VERILOG
// # KERNEL: SYSTEM VERILOG
// # KERNEL: SYSTEM VERILOG
// # KERNEL: SYSTEM VERILOG
