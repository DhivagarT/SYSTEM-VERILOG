//TESTBENCH

`include "interface.sv"
`include "half_adder.sv"

module tb;

  // Create interface instance
  ha_if intf();

  // Instantiate DUT using DUT modport
  half_adder dut(intf.DUT_mp);

  initial begin
    $display(" a b | sum carry");
    $display("-------------");

    // Drive inputs using TB modport
    intf.TB_mp.a = 0; intf.TB_mp.b = 0; #10;
    $display(" %0b %0b |  %0b   %0b", intf.TB_mp.a, intf.TB_mp.b, intf.TB_mp.sum, intf.TB_mp.carry);

    intf.TB_mp.a = 0; intf.TB_mp.b = 1; #10;
    $display(" %0b %0b |  %0b   %0b", intf.TB_mp.a, intf.TB_mp.b, intf.TB_mp.sum, intf.TB_mp.carry);

    intf.TB_mp.a = 1; intf.TB_mp.b = 0; #10;
    $display(" %0b %0b |  %0b   %0b", intf.TB_mp.a, intf.TB_mp.b, intf.TB_mp.sum, intf.TB_mp.carry);

    intf.TB_mp.a = 1; intf.TB_mp.b = 1; #10;
    $display(" %0b %0b |  %0b   %0b", intf.TB_mp.a, intf.TB_mp.b, intf.TB_mp.sum, intf.TB_mp.carry);

    $finish;
  end

endmodule
