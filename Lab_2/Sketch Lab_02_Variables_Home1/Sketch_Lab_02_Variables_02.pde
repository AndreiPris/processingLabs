int exprResultInt = 0;
exprResultInt = 3 * 5;
println(exprResultInt);
// exprResultInt = 3 * 5.0;
exprResultInt = (int)(3 * 5.0);
println(exprResultInt);

float exprResultDouble = 0.0;
exprResultDouble = 3 * 5;
println(exprResultDouble);
exprResultDouble = 3 * 5.0;
println (exprResultDouble);

// Division operator
exprResultInt = 9 / 2;
println(exprResultInt);
exprResultDouble = 9 / 2;
println (exprResultDouble);
exprResultDouble = 9 / 2.0;
println(exprResultDouble);
exprResultDouble = 9.0 / 2;
println(exprResultDouble);
exprResultDouble = 9.0 / 2.0;
println ( exprResultDouble);


// Operator precedence in an expression
exprResultDouble = 6 - 4 / 2;
println(exprResultDouble);
exprResultDouble = (6 - 4) / 2;
println(exprResultDouble);
exprResultDouble = 3 / 2 * 4;
println(exprResultDouble);
exprResultDouble = 3 * 4 / 2;
println(exprResultDouble);
exprResultDouble = 3.0 / 2.0 * 4.0;
println (exprResultDouble);
exprResultDouble = 3.0 * 4.0 / 2.0;
println (exprResultDouble);

// Modulo operator
exprResultInt = 9 % 5;
println(exprResultInt);
exprResultInt = 2 * 9 % 5;
println(exprResultInt);
exprResultInt = 2 * (9 % 5);
println(exprResultInt);
