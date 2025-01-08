# Nix If Expression Cheat Sheet

# 1. Basic If Expression
# The `if` expression checks a condition and returns different values based on the result.

# Syntax:
# if CONDITION then TRUE_EXPR else FALSE_EXPR;

if true then "Yes" else "No"  # Result will be "Yes"

# 2. Nested If Expressions
# You can nest `if` expressions for more complex logic.

if x > 10 then "Greater" else if x == 10 then "Equal" else "Smaller"

# 3. Returning Multiple Expressions
# Use `if` with multiple expressions by chaining them with `else`.

let
  x = 5;
in
  if x < 5 then "Less"
  else if x == 5 then "Equal"
  else "Greater"

# 4. Avoiding Else with `if` (Using with)
# `if` can also be used with `with` for cleaner condition checks.

let
  x = 5;
in
  if x == 5 then "Found" else "Not found"

# End of If Expression Cheat Sheet
