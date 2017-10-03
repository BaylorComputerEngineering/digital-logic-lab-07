module sr_latch_test;
   reg s, r;
   wire q, not_q;

   sr_latch sr(.s(s), .r(r), .q(q), .not_q(not_q));

   initial
     begin
        $display("S R | Q Q'");
        $display("-----------");
        $monitor("%b %b | %b %b", s, r, q, not_q);
        {s, r} = 2'b10; #5;
        {s, r} = 2'b11; #5;
        {s, r} = 2'b10; #5;
        {s, r} = 2'b11; #5;
        {s, r} = 2'b01; #5;
        {s, r} = 2'b11; #5;
        {s, r} = 2'b01; #5;
        {s, r} = 2'b11; #5;
        {s, r} = 2'b00; #5;
        $finish;
     end
endmodule // SR_latch_test
