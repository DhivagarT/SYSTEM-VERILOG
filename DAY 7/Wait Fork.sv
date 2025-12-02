// wait fork //used to convert fork join_any to fork join
module process_4;
  initial begin
    $display("@=%0t Start Execution",$time);
    fork
      begin
        $display("@=%0t Execute x",$time);
        #2;
        $display("@=%0t Execute y",$time);
      end
      begin
        #1;
        $display("@=%0t Exectue A",$time);
      #2;
        $display("@=%0t Exectue B",$time);
      #1;
        $display("@=%0t Exectue C",$time);
    end
    join_any;
    
      wait fork;
        $display("@=%0t Stop_Execution",$time);
  end
endmodule

// OUTPUT
        
// # KERNEL: @=0 Start Execution
// # KERNEL: @=0 Execute x
// # KERNEL: @=1 Exectue A
// # KERNEL: @=2 Execute y
// # KERNEL: @=3 Exectue B
// # KERNEL: @=4 Exectue C
// # KERNEL: @=4 Stop_Execution
