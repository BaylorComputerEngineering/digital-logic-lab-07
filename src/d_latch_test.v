module d_latch_test;

   reg                d, en;
   wire               q, not_q;

   d_latch D(.d(d), .en(en), .q(q), .not_q(not_q));

   initial
     begin
        $display("en D | Q Q'");
        $display("--------------");
        $monitor("%b  %b | %b %b", en, d, q, not_q);
        {en, d} = 2'b1_0; #5;
        {en, d} = 2'b1_1; #5;
        {en, d} = 2'b1_0; #5;
        {en, d} = 2'b1_1; #5;
        {en, d} = 2'b0_1; #5;
        {en, d} = 2'b0_0; #5;
        {en, d} = 2'b0_1; #5;
        {en, d} = 2'b1_0; #5;
        {en, d} = 2'b1_1; #5;
        {en, d} = 2'b1_0; #5;
        {en, d} = 2'b1_1; #5;
        $finish;
     end
endmodule // d_latch
