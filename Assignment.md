# Assignment for Lab 07 Registers

## Introduction

This goal of this assignment is to help you get more familier with registers and how to use them.

Please read the [coding standard](coding_standard.md).

## Problems
- Name the project as "Lab07_assignment".
- For all the simulations, you should use a oscillator with 10ns period (5ns hi, 5ns lo).
- Block diagrams can be embedded in this doc.

### 1. What is the difference in behavior between latch and flip-flop based on the modules and test cases we have developed in lab? (2 pts)

### 2. Implement and test a module that accepts a N-bit number as input (N is up to 64), outputs a 1-bit number that indicates true/false and the N-bit number's absolute value. (2 pts)
- Name this simualtion set as "magnitude\_test"
- You should use comparator from lab06 assignment in this module.
- Hint: the two inputs to the comparator should be like this:
  ```verilog
  {(64-N){1'b0}, a}
  ```
  This way, you can make sure your inputs are 64-bit.

### 3. Implement and test a N-bit counter with configurable count limit (3 pts)
- Name this simulation set as "custom\_counter\_test"
- Instead of keep incrementing forever, this counter will automatically reset when the __count__ reaches __limit__
- Use the comparator we built from last lab for comparison test
- **Inputs**
  - clk, reset
  - default: N-bit input, reset will set the counter to ```default```
  - limit : should be the same size as the counter register. When counter reaches limit, it will reset to ```default``` value.
- **Outputs**
  - count: N-bit output, current counter value
  - tick: 1-bit, high when counter reaches limit, otherwise stays low.
- **Parameters**
  - SIZE: specify the size of counter register
- Draw a block diagram for this limited counter

### 4. Implement and test a N-bit delay counter (3 pts)
- Name this simulation set as "delay\_counter\_test".
- Instead of increment or decrement every cycle, this module increment or decrement every N cycles.
- **Inputs**:
  - clk, reset,
  - default: N-bit input, reset will set the counter to ```default```
  - limit : should be the same size as the counter register. When counter reaches limit, it will reset to ```default``` value.
  - delay: specify number of cycles of delay
- **Output**:
  - count: current counter value
  - tick: 1-bit, high when counter reaches limit, otherwise stays low.
- **Parameters**:
  - REG_SIZE: counter register size
  - DELAY_SIZE: delay register size
- Draw a block diagram for this counter.
- Hint: You can use the counter from problem 3 for delay.
