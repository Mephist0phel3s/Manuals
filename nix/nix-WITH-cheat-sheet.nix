# Nix With Expression Cheat Sheet

# 1. Basic With Syntax
# The `with` expression simplifies access to an attribute set’s members.

# Syntax:
# with SET;
#   # Use variables from the SET directly

let
  myAttrs = { a = 10; b = 20; };
in
  with myAttrs; a + b  # Result will be 30

# 2. Using `with` for Deep Access
# You can access deep attributes from an attribute set with `with`.

let
  nestedAttrs = { outer = { inner = 42; }; };
in
  with nestedAttrs.outer; inner  # Result will be 42

# 3. With and Overriding Variables
# You can override variables using `with` when needed.

let
  x = 5;
  y = 10;
in
  with { x = 100; }; x + y  # Result will be 110 (as x was overridden)

# End of With Expression Cheat Sheet
