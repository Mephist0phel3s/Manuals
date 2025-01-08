# Nix Recursion Cheat Sheet

# 1. Basic Recursion Syntax
# Nix allows recursion within functions for tasks such as calculating factorials.

factorial = n: if n == 0 then 1 else n * factorial (n - 1);
factorial 5  # Result will be 120

# 2. Tail Recursion (Accumulative)
# Nix supports tail recursion, which optimizes recursive functions.

tailFactorial = n: acc: if n == 0 then acc else tailFactorial (n - 1) (acc * n);
tailFactorial 5 1  # Result will be 120

# 3. Recursion with a List
# You can recursively process lists or other data structures.

sumList = list: if list == [] then 0 else head list + sumList (tail list);
sumList [1, 2, 3, 4]  # Result will be 10

# End of Recursion Cheat Sheet
