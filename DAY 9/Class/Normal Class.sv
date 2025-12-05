class Netflix;
  string subscribe;
  int Tv;
  
  task Condition();
   subscribe="YES";
    $display("Enjoy Netflix",subscribe);
  endtask
endclass

module check;
  initial begin
    Netflix N;
    if(N==null)
      $display("No Connection");
    else
      $display("Connected");
  end
endmodule

// OUTPUT
// # KERNEL: No Connection
