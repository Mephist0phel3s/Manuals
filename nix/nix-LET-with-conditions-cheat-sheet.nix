# Nix Let with Conditional Assignment Cheat Sheet

# 1. Conditional Assignment within Let
# You can use conditionals to conditionally assign values within `let`.

let
  x = if condition then 10 else 20;
in
  x  # Result will depend on the value of `condition`

# 2. Multiple Conditional Assignments
# You can assign multiple values conditionally within a `let`.

let
  x = if condition1 then 10 else 20;
  y = if condition2 then "Yes" else "No";
in
  (x, y)  # Will return a tuple based on conditions

# 3. Nested Conditional Assignments in Let
# You can nest conditionals for more complex assignments.

let
  x = if condition1 then 10
      else if condition2 then 20
      else 30;
in
  x  # Result will depend on the conditions

# End of Let with Conditional Assignment Cheat Sheet
