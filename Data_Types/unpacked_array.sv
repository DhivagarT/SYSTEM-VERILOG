// unpacked array
module unpacked_array;
  logic a=1;                            // unpacked 
  logic b[2]='{1,2};                    //1D unpacked
  logic c[2][3]='{'{1,2,3},'{4,5,6}};   //2D unpacked
  
  initial begin
    
    $monitor("a=%0d b=%0p c=%0p",a,b,c);
    end
    endmodule
