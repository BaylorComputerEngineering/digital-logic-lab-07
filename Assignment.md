# Assignment for Lab 07 Registers

## Introduction

This goal of this assignment is to help you get more familier with registers and how to use them.

Please read the [coding standard](coding_standard.md).

## Problems
- Name the project as "Lab07".
- For all the simulations, you should use a oscillator with 10ns period (5ns hi, 5ns lo).
- Block diagrams can be embedded in this doc.

### 1. What is the difference in behavior between latch and flip-flop based on the modules and test cases we have developed in lab? (2 pts)

### 2. Implement a test a 1:4 demux. (2 pts)
- Name this simulation set as "demux4\_test"
  ```verilog
  module demux4(input [1:0] sel,
                output out0, out1, out2, out3);
  
  endmodule
  ```

### 3. Implement and test a bank of 4 read/write addressable N-bit registers. (6pts)
- Specification:
  - Name this simulation set as "register\_bank4\_test"
  - You should use mux, demux and register modules we build so far to implement this module
    ```verilog
    module register_bank4 #(parameter N=8)
       (input rd_en, wr_en,
        input [1:0] rd_addr, wr_addr,
        input [N-1:0] data_in,
        output [N-1:0] data_out);
        
    endmodule
        
    ```
  - Behavior:
    - If ```rd_en = 1'b0```, ```data_out = {N{1'bz}}```, otherwise, ```data_out``` should have the content of the register specified by ```rd_addr```
    - If ```wr_en = 1'b0```, no write will go through.
    - Write has no effect on ```data_out```
- Draw a block diagram for this module using mux, demux, and register blocks. (3pts)
- Implement and test this module (3pts)
