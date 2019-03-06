module always_test #()
   ();

   reg [3:0] a, b, c, d;

   initial
     begin
        {a, b, c, d} = {4'h1, 4'h2, 4'h4, 4'h8}; #10;
        a = d;
        b = a;
        c = b;
        d = c;
        #20;
        {a, b, c, d} = {4'h1, 4'h2, 4'h4, 4'h8}; #10;
        a <= d;
        b <= a;
        c <= b;
        d <= c;
        #20;
        $finish;
     end

endmodule // always_test
