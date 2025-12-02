//Fork join
module fork_join;
  
  initial begin
    fork begin
      $display("@=%0t Start",$time);
      #2;
      $display("@=%0t After Two Delay",$time);
      #1;
      $display("@=%0t Going to End",$time);
    end
    join
    $display("@=%0t End",$time);
  end
endmodule

// OUTPUT
// # KERNEL: @=0 Start
// # KERNEL: @=2 After Two Delay
// # KERNEL: @=3 Going to End
// # KERNEL: @=3 End
