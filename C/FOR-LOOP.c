// C For Loop Cheat Sheet

// 1. Basic For Loop Syntax
// The `for` loop allows you to iterate over a range of values.

for (initialization; condition; increment) {
    // Code to execute each iteration
}

for (int i = 0; i < 10; i++) {
    printf("%d\n", i);  // Prints numbers from 0 to 9
}

// 2. For Loop with Multiple Variables
// You can initialize and increment multiple variables in a `for` loop.

for (int i = 0, j = 10; i < j; i++, j--) {
    printf("i: %d, j: %d\n", i, j);
}

// 3. Infinite For Loop
// You can create an infinite loop by setting the condition to `1` or `true`.

for (;;) {
    // This loop will run forever
    printf("Running forever...\n");
}

// End of For Loop Cheat Sheet
