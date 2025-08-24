SystemVerilog is an extension of Verilog.
Verilog language stemmed primarily from two earlier languages,
1)HILO-2
2)Occam parallel-processing language


It was introduced by Gateway Design Autmation and is used for Verification. Testbench or Verification Environment is used to check the correctness of a DUT(Device Under Test) by generating the input signals for the device using testbench and then observing the output of the DUT. If the device's output is similar to the expected output, it is fault free, otherwise , the functional behaviour and implementation of the device needs to be checked again.



**WHY NEED FOR VERIFICATION?**

We need to verify the design to make sure that the design is an accurate representation of the specification without any bugs. Verification is carried out to ensure the correctness of design, to avoid surprises at a later time, to avoid a re-spin of the chip and to enter the market on time with good quality. We verify modules by driving different input patterns to check the behaviour. A correct input combination is applied to check the device's behaviour. this is done using **Testbench** or **Verification Environment**.



**WHY SYSTEM VERILOG OVER VERILOG?**

SystemVerilog is preferred over Verilog because it extends Verilog with powerful new features for design, verification, and productivity.
Some advantages-


1.Stronger Data Types & Better Modeling
New data types: logic, bit, enum, struct, union, string, queue, dynamic array.
Eliminates ambiguous reg vs. wire issues (logic replaces both in many cases).
Easier to model complex hardware like buses, packets, and protocols.

2.Object-Oriented Programming (OOP) for Verification
Supports classes, inheritance, polymorphism, encapsulation.
Enables UVM (Universal Verification Methodology), an industry standard for testbenches.
Makes writing reusable, modular, and scalable verification environments easier.

3.Backward Compatible with Verilog
Can still run old Verilog code in SystemVerilog projects.
Allows a gradual transition for teams upgrading from Verilog.

4.Assertions and Coverage
SystemVerilog Assertions (SVA): Built-in syntax for temporal assertions (protocol checks, timing constraints).
Functional Coverage: Measure how well tests cover the design functionality.
Reduces debug time by automatically detecting protocol violations.

5.New Always Block Variants
Verilog used the same always block for combinational, sequential and latches making code harder to read and debug.Verilog doesn’t warn you if:
Sensitivity list is incomplete.
You create unintended latches.This is a common source of hidden bugs.
Example-Forgetting to assign an output for all input conditions causes a latch

```
always @(a or b) begin
    if (a) y = b;  // Missing "else"
end
```
Synthesizer interprets this as: "Hold the last value of y when a is false" → Latch inferred.
Latches are often unwanted, lead to timing issues, and are hard to debug.
You mix blocking (=) and non-blocking (<=) assignments improperly.
SystemVerilog checks these automatically with specialized always blocks.

6.Industry Standard for Verification (UVM)
SystemVerilog is the base language for UVM (Universal Verification Methodology), the most widely used verification framework in chip design.UVM (Universal Verification Methodology) is a standardized verification methodology used across the semiconductor industry to verify complex digital designs, and SystemVerilog is its foundation.



**STEPS TO CHECK THE FUNCTIONALITY OF ANY MODULE**

Generate stimulus
Apply stimulus to the DUT
Capture the response
Check for the correctness

