# Digital Logic Lab 06 - Verilog Intro 2

## References:
- [FPGA Prototyping By Verilog Examples: Xilinx Spartan-3 Version](https://www.amazon.com/FPGA-Prototyping-Verilog-Examples-Spartan-3/dp/0470185325/)
- [Quick Reference Guide](http://sutherland-hdl.com/pdfs/verilog_2001_ref_guide.pdf)

## What we covered last time
- [Operators](http://sutherland-hdl.com/pdfs/verilog_2001_ref_guide.pdf#page=33)
- [Module Definition](http://sutherland-hdl.com/pdfs/verilog_2001_ref_guide.pdf#page=12)
- [Module Instances](http://sutherland-hdl.com/pdfs/verilog_2001_ref_guide.pdf#page=21)
- [Primitive Instances](http://sutherland-hdl.com/pdfs/verilog_2001_ref_guide.pdf#page=23)
- [Vector Bit Select and Part Selects](http://sutherland-hdl.com/pdfs/verilog_2001_ref_guide.pdf#page=23)

## Topics for this lab

- ['always' Blocks](http://sutherland-hdl.com/pdfs/verilog_2001_ref_guide.pdf#page=25)
  ```verilog
  module halfadder(input a, b,
                   output reg s, c);
   always @*
     begin
        s = a ^ b;
        c = a | b;
     end
  endmodule
  ```

- [Blocking vs non-blocking assignment](http://sutherland-hdl.com/pdfs/verilog_2001_ref_guide.pdf#page=29)
- [Generate Block](http://sutherland-hdl.com/pdfs/verilog_2001_ref_guide.pdf#page=25)
- [Array of Instances](http://sutherland-hdl.com/pdfs/verilog_2001_ref_guide.pdf#page=22)
- [Parameter](http://sutherland-hdl.com/pdfs/verilog_2001_ref_guide.pdf#page=19)
  - parameter vs localparam
    - [Parameter declaration](http://sutherland-hdl.com/pdfs/verilog_2001_ref_guide.pdf#page=19) and [paramter redefinition](http://sutherland-hdl.com/pdfs/verilog_2001_ref_guide.pdf#page=21)
    - localparam: local constant

