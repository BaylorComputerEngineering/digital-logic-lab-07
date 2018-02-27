module d_flip_flop_test;

   reg d, en;
   wire q;

   d_flip_flop FF(.en(en), .d(d), .q(q));

   initial
     begin
        $display("en d | Q");
        $display("--------------");
        $monitor("%b  %b | %b", en, d, q);
        {en, d} = 2'b0_1; #5;
        {en, d} = 2'b1_1; #5;
        {en, d} = 2'b0_1; #5;
        {en, d} = 2'b0_0; #5;
        {en, d} = 2'b1_0; #5;
        {en, d} = 2'b1_1; #5;
        {en, d} = 2'b1_0; #5;
        {en, d} = 2'b0_0; #5;
        {en, d} = 2'b1_1; #5;
        {en, d} = 2'b0_1; #5;
        {en, d} = 2'b0_0; #5;
        {en, d} = 2'b1_0; #5;
        {en, d} = 2'b0_0; #5;
        $finish;
     end

endmodule // d_flip_flop_test
