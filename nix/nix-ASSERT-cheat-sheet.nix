# Nix Assert Cheat Sheet

# 1. Basic Assert Syntax
# The `assert` expression allows you to check a condition and fail if the condition is not true.

# Syntax:
# assert CONDITION;

assert 1 == 1  # Will not produce an error, as the condition is true
assert 2 == 1  # Will cause an error: Assertion failed!

# 2. Assert with a Message
# You can also include an optional message to explain why the assertion failed.

assert (x == 10) "x should be 10, but is $x"

# 3. Using Assert in Functions
# Assertions are commonly used in functions to check input values.

myFunction = x: assert x > 0 "Input must be positive";
myFunction -5  # Will cause an error because x is negative

# End of Assert Cheat Sheet
