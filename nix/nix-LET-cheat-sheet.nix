# Nix Let Cheat Sheet

# 1. Basic Let Syntax
# The `let` expression allows you to bind values to variables within an expression.

# Syntax:
# let
#   VAR1 = VALUE1;
#   VAR2 = VALUE2;
# in
#   # Use variables VAR1, VAR2 here

let
  a = 5;
  b = 10;
in
  a + b  # Result will be 15

# 2. Using Let to Bind Functions
# You can also bind functions using `let`.

let
  double = x: x * 2;
in
  double 5  # Result will be 10

# 3. Nested Let Expressions
# You can nest `let` expressions within each other.

let
  x = 10;
  y = let z = 20; in z * x;
in
  y  # Result will be 200

# 4. Let with Expressions
# You can combine expressions in the `in` block.

let
  pi = 3.14159;
in
  pi * 2  # Result will be 6.28318

# End of Let Cheat Sheet
