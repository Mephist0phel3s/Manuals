// C If Statement Cheat Sheet

// 1. Basic If Syntax
// The `if` statement allows you to execute a block of code if a condition is true.

if (condition) {
    // Code to execute if condition is true
}

if (x > 10) {
    printf("x is greater than 10\n");
}

// 2. If-Else Syntax
// You can add an `else` block to execute code when the condition is false.

if (x > 10) {
    printf("x is greater than 10\n");
} else {
    printf("x is less than or equal to 10\n");
}

// 3. Else If Syntax
// You can use `else if` to check multiple conditions sequentially.

if (x > 10) {
    printf("x is greater than 10\n");
} else if (x == 10) {
    printf("x is equal to 10\n");
} else {
    printf("x is less than 10\n");
}

// 4. Nested If Statements
// You can nest `if` statements inside each other for more complex logic.

if (x > 10) {
    if (x == 15) {
        printf("x is 15\n");
    } else {
        printf("x is greater than 10 but not 15\n");
    }
}

// End of If Statement Cheat Sheet
