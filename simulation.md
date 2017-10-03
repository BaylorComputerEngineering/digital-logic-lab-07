# Vivado Simulation Guide

This doc should get you started with running simulation for lab assignments. For more detailed simulation information please refer to
[this document](https://www.xilinx.com/support/documentation/sw_manuals/xilinx2017_2/ug900-vivado-logic-simulation.pdf).


## Run Simulation

After fixing all the syntax error, you can run current active simulation set by
click on "Run Simulation" listed in "Flow Navagator".

![Run Simulation](pics/simulation/simulation_launch.png)

and here is the default layout:

![default_layout](pics/simulation/simulation_default_layout.png)

Click on "zoom fit" to have the best view of your timing diagram

![zoom_fit](pics/simulation/zoom_fit_marked.png)

You can drag an object from the "Objects" window to the the timing diagram to see its behavior.

![drag object](pics/simulation/simulation_drag1.png)

New signal's timing was not recorded during previous run. So if want to see how certain internal signal behave, click on restart

![simulation restart](pics/simulation/simulation_restart.png)

As you can see, restart will set all signals go back to initial state. Now you can press the "Run All" button, to generate all the timing graph.

![simulation run all](pics/simulation/simulation_run_all2.png)

After making desired changes, make sure you save it. So that when you relaunch the simulation, you don't have to do this adjustment again.
Looking at internal signals' behavior is very beneficial during debugging.



