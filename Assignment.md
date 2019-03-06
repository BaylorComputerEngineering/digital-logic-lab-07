# Assignment for Lab 07

- Please read the [coding standard](coding_standard.md).
- Name the project as ```Lab07```


## Problems

### 1. Implement a module that calculates GCD value of two input numbers using behavioral modeling (4 pts)

- The [GCD algorithm](https://en.wikipedia.org/wiki/Greatest_common_divisor#Using_Euclid's_algorithm) is as follows:
  - gcd(a, a) = a
  - gcd(a, b) = gcd(a-b, b), if a > b
  - gcd(a, b) = gcd(a, b-a), if a < b

- Implement and test a module the computes the GCD value of two input numbers using build-in operators ```>```, ```<```, ```==``` for ```-```
    - Start with the following template, change as necessary:
    ```verilog
    module GCD #(parameter SIZE=4)
       (input clk, reset,
        input [SIZE-1:0] a, b,
        output [SIZE-1:0]]  out,
        output           done);
    
       always @(posedge clk, posedge reset)
         begin
            if (reset)
              begin
                 a_reg <=
                 b_reg <=
              end
            else
              begin
                 // fill
                 a_reg <=
                 b_reg <=
              end
         end
    
       always @*
         begin
            if (a_reg > b_reg)
              begin
    
              end
            else if (a_reg < b_reg)
              begin
    
              end
            else
              begin
    
              end
         end
    
       assign out =
       assign done =
    endmodule // GCD
    
    ```

- Note: When testing the module, you should choose a pair of values that can trigger a lot of changes for both a and b.
  You can derive a pair by running this GCD algorithm backward.

### 2. Modify the the GCD module from problem 1 so that its computing speed can be controlled by a input signal named ```tick``` (2 pts)
- Recommended change to the IO ports:

```verilog
module GCD #(parameter SIZE=4)
   (input clk, reset,
    input tick,
    input [SIZE-1:0] a, b,
    output [SIZE-1:0]]  out,
    output           done);


endmodule // GCD
```

### 3. Implement and test a 8-bit GCD module, i.e. a and b are fixed 8-bit inputs, using the comparator and adder-subtractor we have implemented from previous labs. (4 pts)

- Start with the following template:

```verilog
module GCD_8-bit
   (input clk, reset,
    input tick,
    input  [7:0] a, b,
    output [7:0] out,
    output       done);

endmodule // GCD_8-bit
```

