// C Switch Statement Cheat Sheet

// 1. Basic Switch Syntax
// The `switch` statement allows you to check a variable's value against several possible cases.

switch (expression) {
    case constant1:
        // Code for constant1
        break;
    case constant2:
        // Code for constant2
        break;
    default:
        // Code if no case matches
        break;
}

int x = 2;
switch (x) {
    case 1:
        printf("x is 1\n");
        break;
    case 2:
        printf("x is 2\n");
        break;
    default:
        printf("x is something else\n");
        break;
}

// 2. Switch without Break
// If `break` is omitted, execution continues through the subsequent `case` statements (fall-through).

int y = 2;
switch (y) {
    case 1:
        printf("y is 1\n");
    case 2:
        printf("y is 2\n");
    case 3:
        printf("y is 3\n");
    default:
        printf("y is something else\n");
}

// End of Switch Statement Cheat Sheet
