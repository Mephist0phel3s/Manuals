// C Functions Cheat Sheet

// 1. Basic Function Definition and Calling
// Functions are defined with a return type, name, and parameters.

int add(int a, int b) {
    return a + b;
}

int result = add(3, 5);  // result will be 8

// 2. Function with No Return Value
// You can define functions that return `void` when no value is needed.

void greet() {
    printf("Hello, world!\n");
}

greet();  // Calls the greet function

// 3. Recursive Functions
// Functions can call themselves recursively.

int factorial(int n) {
    if (n == 0) return 1;
    return n * factorial(n - 1);
}

int result = factorial(5);  // result will be 120

// 4. Function with Variable Number of Arguments
// You can define functions that accept a variable number of arguments using `stdarg.h`.

#include <stdarg.h>

int sum(int count, ...) {
    int total = 0;
    va_list args;
    va_start(args, count);
    for (int i = 0; i < count; i++) {
        total += va_arg(args, int);
    }
    va_end(args);
    return total;
}

int result = sum(3, 1, 2, 3);  // result will be 6

// End of Functions Cheat Sheet
