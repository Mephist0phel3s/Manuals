#!/bin/bash

# Bash Function Cheat Sheet

# 1. Defining Functions
# You can define a function in Bash using the following syntax:

# Syntax:
# function_name() {
#   # Commands to execute
# }

my_function() {
  echo "Hello from my function!"
}

# 2. Calling Functions
# Once defined, you can call a function by its name, followed by parentheses:

my_function

# 3. Passing Arguments to Functions
# Functions can accept arguments and use them inside the function.

greet() {
  echo "Hello, $1!"
}

greet "Alice"

# 4. Returning Values from Functions
# Functions can return values using `return` for numeric values, or `echo` for other types.

sum() {
  return $(( $1 + $2 ))
}

sum 3 4
echo "Sum is: $?"

# End of Function Cheat Sheet
