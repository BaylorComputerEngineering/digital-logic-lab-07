# Assignment for Lab 07 Registers

## Introduction

This goal of this assignment is to help you get more familier with registers and how to use them.

Please read the [coding standard](coding_standard.md).

## Problems
- Name the project as "Lab07_assignment".
- For all the simulations, you should use a oscillator with 10ns period (5ns hi, 5ns lo).
- Block diagrams can be embedded in this doc.

### 1. What is the difference in behavior between latch and flip-flop based on the modules and test cases we have developed in lab? (1pt)

### 2. Implement and test a module that accepts a N-bit number as input, outputs a 1-bit number that indicates true/false and the N-bit number's absolute value. (2 pts)
- Name this simualtion set as "magnitude_test"

### 3. Implement and test a N-bit delay counter (3 pts)
- Name this simulation set as "delay\_counter\_test".
- Instead of increment or decrement every cycle, this module increment or decrement every N cycles.
- **Inputs**:
  - clk, reset,
  - limit: count limit
  - delay: specify number of cycles of delay
- **Output**:
  - out; counter output
- **Parameters**:
  - REG_SIZE: counter register size
  - DELAY_SIZE: delay register size
- Draw a block diagram for this counter.


### 4. Implement and test a triangle wave generator (4 pts)
- Name this simulation set as "triangle\_wave\_test".
- You must use the comparator you made from last week's assignment. 
- You must use the adder/subtractor we built in previous lab for increment or decrement.
- **inputs**:
  - clk, reset
  - delay: specify the delay cycles for each increment or decrement.
  - max, min: specify the maximum and minimum values of the triangle wave, number is in 2's compliment format)
- **outputs**:
  - out
- **parameters**
  - REG_SIZE : specify the counter register size
  - DELAY_SIZE : specify the delay register size
  - CMP_SIZE: default to a desired size that is supported by your comparator. If the input is less than the CMP\_SIZE, append with 0s. For example, ```{{CMP_SIZE{1'b0}}, a}```
- You need to have 3 test cases.
  - **case 1**: max is a positive number and min is a negative number
  - **case 2**: both max and min are positive number
  - **case 3**: both max and min are negative number
- Three test case must be in the same test module. Try to follow the following procedure:
  1. reset and set the inputs for case 1.
  2. delay enough cycles that the module can generate at least 3 periods of triangle waves.
  3. reset and set the inputs for case 2.
  4. delay enough cycles that the module can generate at least 3 periods of triangle waves.
  5. reset and set the inputs for case 3.
  6. delay enough cycles that the module can generate at least 3 periods of triangle waves.
  7. finish.
- Draw a block diagram for this triangle wave generator.
- Hint: you need to have a register to indicate wheather you are doing increment or decrement. Based on the value of that register, you can choose different set of inputs to comparator and adder/subtractor.





