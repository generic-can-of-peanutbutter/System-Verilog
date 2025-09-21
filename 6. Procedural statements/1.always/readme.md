Overview -The always statement is a procedural block in Verilog/SystemVerilog that allows you to describe hardware behavior. Unlike assign (which is continuous assignment), always executes whenever certain events occur, allowing modeling of:

Combinational logic (AND, OR, MUX)

Sequential logic (flip-flops, registers)

Latches

It is repeatedly executed as long as the simulation runs, triggered by a sensitivity list or events.

 Syntax
 ```
always @(sensitivity_list) begin
    // procedural statements
end
```

sensitivity_list: Specifies signals/events that trigger execution of the block.

Inside the block, you can use blocking (=) or non-blocking (<=) assignments depending on the type of logic.

SystemVerilog Enhancements: In verilog, the same always block is used for combinational and sequential logic. So , the synthesis tool needs to identify the type of circuit(combinational or sequential) and if the designer writes an incorrect code, a sequential circuit may be inferred in place of a required combinational circuit.
System verilog provides  3 types of always blocks-

always_comb → automatically sensitive to all RHS signals (for combinational logic)

always_ff → triggers on clock edges, ensures sequential logic

always_latch → triggers on level changes, ensures proper latch behavior
