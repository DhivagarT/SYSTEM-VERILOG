// disable fork

module process_4;
  
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
    disable fork;
  end
endmodule

// OUTPUT
// # KERNEL: @=0 start
// # KERNEL: @=0 End     
