📌 Overview

In SystemVerilog, the initial block is used to specify code that runs once at the beginning of a simulation. It is commonly used for:

Providing initial values to signals and variables

Applying test stimulus

Printing messages

File I/O operations

Unlike an always block, which repeats during simulation, an initial block executes only once and then stops.


Syntax-
```
initial begin
    // Statements
end
```



✅ Examples
```
module hello_world;
    initial begin
        $display("Hello, SystemVerilog Simulation!");
    end
endmodule
```

Output-
```
Hello, SystemVerilog Simulation!
```
