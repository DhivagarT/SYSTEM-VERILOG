`include "interface.sv"
`include "test.sv"
module testbench;
    intr intrf();        // interface instance
    d_ff dut(intrf);     // DUT instance

    initial begin
        intrf.clk = 0;
        forever #2 intrf.clk = ~intrf.clk;
    end

    initial begin
        $monitor("t=%0t clk=%b rst=%b a=%b x=%b",
                  $time, intrf.clk, intrf.rst, intrf.a, intrf.x);

        intrf.rst = 1;
        #5 intrf.rst = 0;

      repeat(2) begin
            @intrf.cb;
            intrf.cb.a <= $random;
        end

        #10;
        $finish;
    end
endmodule
