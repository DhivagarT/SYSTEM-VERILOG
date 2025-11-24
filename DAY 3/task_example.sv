// Write a task to send 8-bit data with delay.
module task_example;

  task example(input logic [7:0] a, output logic [7:0] out);
    #5;
    out = a;
  endtask

  initial begin
    logic [7:0] d;
    logic [7:0] out;

    d = 8'd6;      
    example(d, out);// calling task
    #6;                  
    $display("Time = %0t, input = %0d, output = %0d", $time, d, out);
    #20;
    $finish;
  end

endmodule

// OUTPUT

// # KERNEL: Time = 11, input = 6, output = 6

