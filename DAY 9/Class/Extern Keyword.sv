class one;
  int x,y;
  
  extern function void done(int x,int y);  //extern for function done
    extern function int add();             //extern for function add
endclass
    
      function void one::done(int x,int y);  //scope resolution 
        this.x=x;
        this.y=y;
      endfunction
      
      function int one::add();  //scope resolutioon for addition function
        
        return x+y;
      endfunction
      
      module test;
      initial begin
        one a=new();     //class instance 
        a.done(1,2);     //value assigning
       
        $display("Output=%0d",a.add());
      end
      endmodule
      
//         OUTPUT
// # KERNEL: Output=3
