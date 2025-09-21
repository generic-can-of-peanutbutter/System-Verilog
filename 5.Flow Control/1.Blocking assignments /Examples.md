Immediate value is assigned to the variables at the time of execution. Hence it is used for combinational logic as it is following combinational behaviour i.e. the output of a gate available as input to the next gate(update immediately in sequence).
Note- 
1)Blocking statements execute in a sequential manner i.e. from top to bottom.
EXAMPLE 1-
```
module blocking_example1;
    reg [3:0] a, b, c;

    initial begin
        a = 4;       // Step 1
        b = 5;       // Step 2
        c = a + b;   // Step 3
        $display("a = %0d, b = %0d, c = %0d", a, b, c);
    end
endmodule
```

Output- 
```
a = 4, b = 5, c = 9

```

EXAMPLE 2-



```
module blocking_example2;
    reg [3:0] x, y;

    initial begin
        x = 1;
        #5 y = x + 2;   // Wait 5 time units
        $display("x = %0d, y = %0d", x, y);
    end
endmodule

```

Output-
```
#0  x = 1, y = unknown (not assigned yet)
#5  x = 1, y = 3
```


EXAMPLE 3-
```
module blocking_assignment;
  //variables declaration
  int a,b;
  initial begin  
    $display("-----------------------------------------------------------------");
    //initializing a and b
    a = 10;
    b = 15;
   
    //displaying initial value of a and b
    $display("\tBefore Assignment :: Value of a is %0d",a);
    $display("\tBefore Assignment :: Value of b is %0d",b);
   
    a = b;
    b = 20;
   
    $display("\tAfter  Assignment :: Value of a is %0d",a);
    $display("\tAfter  Assignment :: Value of b is %0d",b);
    $display("-----------------------------------------------------------------");
  end    
endmodule
```

Output-
```
-----------------------------------------------------------------
Before Assignment :: Value of a is 10
Before Assignment :: Value of b is 15
After Assignment :: Value of a is 15
After Assignment :: Value of b is 20
-----------------------------------------------------------------
```

EXAMPLE 4-


```
module blocking_assignment;
  //variables declaration
  int a,b;
  int x,y;
  initial begin  
    //initializing a and b
    a = 10;
    b = 15;
   
    x = a + b;
    y = a + b + x;
   
    $display("-----------------------------------------------------------------");
    $display("\tValue of x is %0d",x);
    $display("\tValue of y is %0d",y);
    $display("-----------------------------------------------------------------");
  end    
endmodule
```


Output-
```
-----------------------------------------------------------------
Value of x is 25  Value of y is 50
-----------------------------------------------------------------
```

