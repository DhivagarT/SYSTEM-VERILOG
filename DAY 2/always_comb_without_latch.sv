// always_comb without using latches
module comb_example(
  input logic [3:0]a,
  input logic rst,
  output logic [3:0]y);
  
  always_comb begin
    if(rst)
      y=a;
    else
      y=0;
  end
endmodule

  
    
  
