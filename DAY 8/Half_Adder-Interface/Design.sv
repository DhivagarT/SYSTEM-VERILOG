//DESIGN FILE
module half_adder(ha_if.DUT_mp intf);  // Use DUT modport
  assign intf.sum   = intf.a ^ intf.b;
  assign intf.carry = intf.a & intf.b;
endmodule
