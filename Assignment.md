# Assignment for Lab 07 Registers

## Introduction

This goal of this assignment is to help you get more familier with registers and how to use them.

Please read the [coding standard](coding_standard.md).

## Problems
- For all the simulations, you should use a oscillator with 10ns period (5ns hi, 5ns lo).
- Block diagrams can be embedded in this doc.

### 1. What is the difference in behavior between latch and flip-flop based on the modules and test cases we have developed in lab? **(1 pt)**

### 2. Using the ```d_flip_flop``` we built in class and a multiplexer to implement a ```REG``` module that when ```en = 1'b1``` it will write and hold on to ```in``` value on positive edge of ```clk```; otherwise it's content will not change. ```out``` will always output it's current value. Start with the **(2 pts)**
- Name this file as ```reg.v```
- Start with the following template:
  ```verilog
  module REG #(parameter N=8)
     (input clk, en, 
      input [N-1:0] in,
      input [N-1:0] out);
      
  endmodule
  ```

### 3. Implement and test a N-bit 1-4 demux. **(2 pts)**
- Name this file as ```demux4.v```
  ```verilog
  module demux4 #(parameter N=4) 
     (input  [N-1:0] in,
      input  [1:0]   sel,
      output [N-1:0] out0, out1, out2, out3);
  
  endmodule
  ```
- **Hint**: You can implement it using ```case``` statement.

### 4. The following block diagram describes an implementation of register file that contains 4 registers (```REG```): **(3 pts)**

![](pics/regfile.png)

- Name this file as ```regfile4.v```
- Implenent the register file according to the block diagram and test its functions.
  ```verilog
  module regfile4 #(parameter N=8)
     (input          clk, wr_en,
      input [1:0]    rd_addr, wr_addr,
      input [N-1:0]  data_in,
      output [N-1:0] data_out);
  
  endmodule // regfile4
  ```


### 5. Build a register file contains 8 registers using 2 ```regfile4``` from problem 4. **(2 pts)**
- Name this file as ```regfile8.v```
- Start with the following template:

  ```verilog
  module regfile8 #(parameter N=8)
     (input          clk, wr_en,
      input [2:0]    rd_addr, wr_addr,
      input [N-1:0]  data_in,
      output [N-1:0] data_out);
  
  endmodule // regfile8
  ```

