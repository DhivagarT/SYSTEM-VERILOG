module d_ff(intr intrf);
    // D-Flip-Flop: sample 'a' into 'x' on rising edge of clk
    always_ff @(posedge intrf.clk) begin
        if (intrf.rst)
            intrf.x <= 1'b0;   // non-blocking
        else
            intrf.x <= intrf.a;
    end
endmodule
