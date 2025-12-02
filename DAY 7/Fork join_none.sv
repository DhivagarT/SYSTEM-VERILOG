// Fork join_none
module process_3;
  
  initial begin
    $display("@=%0t start",$time);
    fork 
      begin
        $display("@=%0t Execute A",$time);
        $display("@=%0t Execute B",$time);
        $display("@=%0t Execute C",$time);
      end
      begin
        #1;
        $display("@=%0t A Executed",$time);
        #2;
        $display("@=%0t B Executed",$time);
        #1;
        $display("@=%0t C Executed",$time);
      end
    join_none
    $display("@=%0t End",$time);
  end
endmodule

// OUTPUT
// # KERNEL: @=0 start
// # KERNEL: @=0 End
// # KERNEL: @=0 Execute A
// # KERNEL: @=0 Execute B
// # KERNEL: @=0 Execute C
// # KERNEL: @=1 A Executed
// # KERNEL: @=3 B Executed
// # KERNEL: @=4 C Executed
