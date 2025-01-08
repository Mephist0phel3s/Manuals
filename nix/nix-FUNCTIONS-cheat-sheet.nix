# Nix Functions Cheat Sheet

# 1. Basic Function Syntax
# Functions are defined in Nix using the syntax: `name = args: body`

# Syntax:
# name = args: body;

add = a: b: a + b;
add 3 5  # Result will be 8

# 2. Anonymous Functions (Lambdas)
# You can also create anonymous functions using the same syntax.

let
  square = x: x * x;
in
  square 4  # Result will be 16

# 3. Using Functions with Conditionals
# You can use functions inside conditional expressions.

doubleOrZero = x: if x > 0 then x * 2 else 0;
doubleOrZero 5  # Result will be 10
doubleOrZero -5  # Result will be 0

# 4. Functions with Multiple Parameters
# Functions can take multiple parameters.

concat = a: b: a + " " + b;
concat "Hello" "World"  # Result will be "Hello World"

# 5. Recursive Functions
# Functions can call themselves recursively.

factorial = n: if n == 0 then 1 else n * factorial (n - 1);
factorial 5  # Result will be 120

# End of Functions Cheat Sheet
