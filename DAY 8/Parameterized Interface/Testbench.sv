`include "interface.sv"
`include "counter.sv"

module tb;

  // Instantiate the interface
  count_if intf();

  // Instantiate the counter module and connect to the DUT modport
  counter dut(intf.dut);

  // Clock generation: create a periodic clock with 4ns period (toggle every 2ns)
  initial begin
    intf.clk = 0;   // Initialize clock to 0
    forever #2 intf.clk = ~intf.clk; // Toggle clock forever
  end

  // Reset and simulation control
  initial begin
    intf.rst = 1;    // Apply reset at start
    #3 intf.rst = 0; // Release reset after 3ns

    // Monitor signals and print changes to console
    $monitor("@=%0t clk=%b rst=%b count=%0d", $time, intf.clk, intf.rst, intf.count);

    #20;             // Run simulation for 20ns after reset
    $finish;         // End simulation
  end

endmodule
