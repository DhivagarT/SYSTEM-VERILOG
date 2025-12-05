class Home;
  int fan;
  int fridge;
  int Tv;
  
  function void Appliance(int fan,int fridge,int Tv);
    fan=1;
    fridge=1;
    Tv=0;
    this.fan=fan;
    this.fridge=fridge;
    this.Tv=Tv;
  
    $display("FAN=%0d FRIDGE=%0d TV=%0d",fan,fridge,Tv);
   // $display("FAN=%0d FRIDGE=%0d TV=%0d",this.fan,this.fridge,this.Tv);
  endfunction
endclass

module a;
  
initial begin
  Home h;
  h=new();
  
  h.Appliance(0,0,0);
 
  //$display(h.Appliance);
end
endmodule

// OUTPUT
// # KERNEL: FAN=1 FRIDGE=1 TV=0
