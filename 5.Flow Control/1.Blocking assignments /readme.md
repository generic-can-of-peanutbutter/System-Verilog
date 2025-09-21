Blocking Statements in SystemVerilog


📌 Overview

In SystemVerilog, statements inside procedural blocks (always, initial, task, function) can be classified into blocking and non-blocking assignments.
This README focuses on blocking statements, their behavior, syntax, and use cases.

⚡ What are Blocking Statements?

A blocking statement executes sequentially.

The current statement must finish execution before the next statement starts.

Represented using the = operator.

📝 Syntax-
```
reg [3:0] a, b, c;

initial begin
    a = 4'b0001;   // Executes first
    b = 4'b0010;   // Executes after 'a' is assigned
    c = a + b;     // Executes last, uses updated values of a and b
end
```


Execution Behavior

Blocking statements block the flow of execution until the current assignment is done.

Example:
```
initial begin
    x = y;   // y’s value is assigned to x
    y = 5;   // Only after x is updated, y gets new value
end

```
If y was 2 initially:

x = 2

Then y = 5


✅ Advantages

Easy to understand (similar to normal programming languages).

Useful for combinational logic modeling.

Ensures deterministic behavior when order matters.

⚠️ Limitations

Can cause race conditions in sequential circuits when mixed with non-blocking assignments (<=).

Not suitable for synchronous sequential logic (like flip-flops).
