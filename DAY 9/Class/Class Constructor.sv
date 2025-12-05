class Netflix; //Base Class
 
   int remote;       /*
   int Tv;            Class Properties
   string Movies;    */
  
  function void a(); //Class Method
    remote=1;
    Tv=1;
    Movies="Yes";
    if(remote==Tv)
      $display("Play Stranger Things");
    else
      $display("OFF");
  endfunction
endclass

module B;
initial begin
  Netflix N; //Handle or instance
  N=new();   //Constructor
  N.a();     // Calling Function
  $display("remote=%0d Tv=%0d Movies=%0s",N.remote,N.Tv,N.Movies);
end
endmodule


// OUTPUT
// # KERNEL: Play Stranger Things
// # KERNEL: remote=1 Tv=1 Movies=Yes
