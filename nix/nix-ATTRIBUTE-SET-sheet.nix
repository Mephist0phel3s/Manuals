# Nix Attribute Set Cheat Sheet

# 1. Defining an Attribute Set
# An attribute set is similar to a dictionary or object in other languages.

let
  myAttrs = {
    foo = 10;
    bar = "Hello";
    baz = [ 1 2 3 ];
  };
in
  myAttrs.foo  # Result will be 10

# 2. Accessing Attributes
# You can access attributes using a dot or bracket syntax.

myAttrs.bar  # Result will be "Hello"
myAttrs.baz  # Result will be [ 1 2 3 ]

# 3. Modifying an Attribute Set
# You can add or modify attributes by merging sets.

let
  newAttrs = myAttrs // { newKey = "newValue"; };
in
  newAttrs.newKey  # Result will be "newValue"

# 4. Using with to Access Attributes
# The `with` keyword simplifies accessing all attributes in a set.

with myAttrs; foo + 5  # Result will be 15

# End of Attribute Set Cheat Sheet
