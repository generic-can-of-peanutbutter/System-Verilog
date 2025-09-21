Non blocking assignments are useful in  modelling sequential circuits as it soes not block the execution of assignments. It executes all he assignments in parallel and allows scheduling of assignments. The left hand side of the all the expression are executed and the values are stored internally in the simulator. The values are declared at the end of the tieme step.
  Example 1-
  ```
module nonblocking_assignment;

  //variables declaration
  int a,b;

  initial begin  //initial block will get executed at starting of simulation
    $display("-----------------------------------------------------------------");
    //initializing a and b
    a = 10;
    b = 15;
 
    //displaying initial value of a and b
    $display("\tBefore Assignment :: Value of a is %0d",a);
    $display("\tBefore Assignment :: Value of b is %0d",b);
 
    a <= b;
    b <= 20;
  
    $display("\tAfter  Assignment :: Value of a is %0d",a);
    $display("\tAfter  Assignment :: Value of b is %0d",b);
    $display("-----------------------------------------------------------------");
  end

  final begin  //final block will get executed at end of simulation
    $display("-----------------------------------------------------------------");
    $display("\tEnd of Simulation :: Value of a is %0d",a);
    $display("\tEnd of Simulation :: Value of b is %0d",b);
    $display("-----------------------------------------------------------------");
  end
endmodule
```
Output-
```
-----------------------------------------------------------------
Before Assignment :: Value of a is 10
Before Assignment :: Value of b is 15
After Assignment :: Value of a is 10
After Assignment :: Value of b is 15
-----------------------------------------------------------------
-----------------------------------------------------------------
End of Simulation :: Value of a is 15
End of Simulation :: Value of b is 20
-----------------------------------------------------------------
```


Example 2-
```
module nonblocking_assignment;
  //variables declaration
  int a,b;
  int x,y;
  
  initial begin
    //initializing a and b
    a = 10;
    b = 15;
    
    x <= a + b;
    y <= a + b + x;
    
    $display("-----------------------------------------------------------------");
    $display("\tValue of x is %0d",x);
    $display("\tValue of y is %0d",y);
    $display("-----------------------------------------------------------------");
  end
  
  final begin
    $display("-----------------------------------------------------------------");
    $display("\tEnd of Simulation :: Value of x is %0d",x);
    $display("\tEnd of Simulation :: Value of y is %0d",y);
    $display("-----------------------------------------------------------------");
  end
      

endmodule
```
Output-
```
-----------------------------------------------------------------
Value of x is 0
Value of y is 0
-----------------------------------------------------------------
-----------------------------------------------------------------
End of Simulation :: Value of x is 25
End of Simulation :: Value of y is 25
-----------------------------------------------------------------
```
