// Implement case, casex, casez and show differences.
module case_demo;

  logic [2:0] a[] = '{ 3'b100,3'b101,3'b1x1,3'b1z1,3'b1z0,3'b1x0 };
  logic [2:0] val;

  initial begin

    $display("\n----- INPUT VALUES -----");
    foreach(a[i])
      $display("a[%0d] = %b", i, a[i]);

    foreach(a[i]) begin
      val = a[i];
      $display("\n-----------------------------");
      $display("Testing value = %b", val);

      case (val)
        3'b100 : $display("case:matched 100");
        3'b1x1 : $display("case:matched literal 1x1");
        default: $display("case:NO MATCH");
      endcase

      casex (val)
        3'b100 : $display("casex: matched 100");
        3'b1x1 : $display("casex:matched 1x1 (X = don't-care)");
        3'b1z1 : $display("casex:matched 1z1 (Z = don't-care)");
        default: $display("casex:NO MATCH");
      endcase

      casez (val)
        3'b100 : $display("casez:matched 100");
        3'b1?1 : $display("casez:matched 1?1 (? = don't-care)");
        3'b1z1 : $display("casez:matched literal 1z1");
        default: $display("casez:NO MATCH");
      endcase

    end
  end

endmodule
