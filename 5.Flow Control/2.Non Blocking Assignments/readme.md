Non-Blocking Statements in SystemVerilog

Problem with blocking statements-
In blocking statements, the value of the variables are updated with the right hand side expression as soon as the execution is completed. This causes an error when there are multiple procedural statements within a module. Consider the following scenerio-
```
module example
logic a,b;
initial begin
a=b; //blocking statement
end

initial begin
b=a; //blocking statement
end
endmodule
```
What's happwning- Here the execution of both the procedural blocks i.e the initial block starts at time t=0 concurrently. a=b might be executed before b=a or the other way might also happen . The final values of a and b depend on the simulator (which procedural block it executes first). This causes a race around condition and the output in this case becomes unpredictable.

How Non-Blocking Can Solve It
```
module example_nonblocking;
    logic a, b;

    initial begin
        a <= b;  // Non-blocking assignment
    end

    initial begin
        b <= a;  // Non-blocking assignment
    end
endmodule
```
Behavior with non-blocking (<=):

Right-hand sides are evaluated at time 0, but left-hand sides update at the end of the timestep.

a gets the old value of b and b gets the old value of a.

📌 Overview

In SystemVerilog, procedural assignments inside always, initial, or task blocks can be blocking or non-blocking.
This README focuses on non-blocking statements, which are essential for modeling sequential logic like flip-flops.

⚡ What are Non-Blocking Statements?

A non-blocking statement executes without blocking the next statement.

Represented using the <= operator.

The right-hand side is evaluated immediately, but the assignment to the left-hand side happens at the end of the time step.

📖 Think of non-blocking statements as parallel execution within the same timestep.


📝 Syntax
```
reg [3:0] a, b, c;

always @(posedge clk) begin
    a <= b;    // Non-blocking assignment
    b <= c;    // Executes in parallel, updates at end of time step
end

```

🔄 Execution Behavior

Evaluates right-hand sides immediately, schedules left-hand side updates at the end of current simulation timestep.

Example:
```always @(posedge clk) begin
    a <= b;  
    b <= 5;  
end
```
Both updates occur simultaneously at the end of the clock edge, preventing race conditions.
✅ Advantages

Avoids race conditions in sequential circuits.

Perfect for modeling flip-flops and registers.

Allows predictable, parallel updates.

⚠️ Limitations

Not suitable for combinational logic modeling alone — may require extra care with ordering.

Mixing blocking (=) and non-blocking (<=) assignments in the same always block can lead to unexpected behavior.
