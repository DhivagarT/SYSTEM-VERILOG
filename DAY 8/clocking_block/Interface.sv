interface intr;
    logic clk, rst;
    logic a, x;

    // Clocking block: TB drives 'a', samples 'x'
    clocking cb @(posedge clk);
        output a;  // driven by testbench
        input  x;  // sampled from DUT
    endclocking
endinterface
