Overview
In this project, I designed and verified a simple loadable, enabled counter using SystemVerilog. The objective was to create a counter module that could be loaded with a specific value, enabled for counting, and reset asynchronously. The design and verification process utilized SystemVerilog's procedural constructs, along with a testbench for simulation.

Key Features: 
5-bit Loadable Counter: The counter could be loaded with a 5-bit data value.
Enable Control: The counter incremented its value when the enable signal was high.
Asynchronous Reset: The counter could be reset asynchronously using an active-low reset signal.
Rising Edge Clocking: The counter operated on the rising edge of the clock signal.

Design Specifications :
Inputs:
data: 5-bit input value to load into the counter.
load: Signal to load the counter with the data value.
enable: Signal to enable the counter for counting.
clk: Clock signal for synchronization.
rst_: Active-low asynchronous reset signal.
Output:
count: 5-bit output value of the counter.

Design Implementation:
The counter module was implemented in SystemVerilog and contained an always_ff procedural block that defined the behavior of the counter based on the input signals. The counter could be reset, loaded with a specific value, or incremented based on the control signals.

HDL Used : System Verilog 
Tools Used : Cadence XCELIUM
