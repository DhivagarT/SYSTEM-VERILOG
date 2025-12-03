//INTERFACE

interface ha_if;

  // Signals
  logic a, b;
  logic sum, carry;

  // Modports
  modport DUT_mp (input a, b, output sum, carry);  // DUT sees inputs & outputs
  modport TB_mp  (output a, b, input sum, carry);  // TB drives inputs, reads outputs

endinterface
