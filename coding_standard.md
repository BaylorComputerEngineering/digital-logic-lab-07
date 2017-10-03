# Coding Standard for ELC2173

This is the coding standard for programming Verilog code in ELC2173 Digital Logic Lab. 
Apart from correctness of your code, I will also grade you based on this code standard. 
Violations will result in deduction of points to your assignment.

## Assignment submission structure
- **src** : All verilog file (\*.v) must be stored in assignment repo's src folder. If it's not there, create one.
- **sim** : All simulation waveform configuration file (\*.wcfg) must be stored in assignment repo's "sim" folder. If it's not there, create one.
- **constrs** : All constraint files must be stored in "constrs" folder. If it's not there, create one.
- **pics** : All additional pictures should be stored in "pics" folder, if it's not there, create one.
- There should only be one xpr file in each assignment, the name usually is specified in the assignment.
- The only xpr file should be placed in assignment repo's base directory.

## Naming convention
- Each assignment's project name would be specified in the project name. Use that and don't use anything else.
- There should be **no space** in any simulation set's name.
  - This is for the case where you want to create your own simulation set to test something else.
- The name of simulation set required for the assignment would be specified in each assignment. Use that and don't use anything else.
- wire, reg, input, output
  - All lower case
  - can have '_'
- parameter, localparam 
  - all upper case
  - can have '_'
- Every file should named as the module name.
  - For example, if a file contains a module called fulladder, it should be named fulladder.v
- If a test module should be named as <module to be tested>_test
  - For example, if a test module is to test fulladder, the module name should be fulladder_test

## Code structure
- Instantiation
  - **Use** named connection when instantiate a module, and **do not use** ordered connection.
    - Port Order Connections:
      module\_name instance\_name instance\_array\_range (signal, signal, ...);
    - Port Name Connections:
      module\_name instance\_name instance\_array\_range( .port\_name(signal), .port\_name(signal), ... );
    - With exception of primitive instances, of course. There is no named connection available for them.
  - **Use** in-line explicit parameter pedefinition, and **do not use** in-line implicit parameter redefinition
    - In-line Implicit Parameter Redefinition:
      module\_name #(value,value, ...) instance\_name (signal, ... );
    - In-line Explicit Parameter Redefinition:
      module\_name #(.parameter\_name(value), .parameter\_name(value), ...) instance\_name (signal, ... );
- Code block indentation
  There must be indentation for each code blocks:

  This is a bad indentation
  ![bad indentation](pics/indentation_bad.png)
  
  This is a good indentation
  ![good indentation](pics/indentation_good.png)
  

