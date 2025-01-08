#!/bin/bash

# Bash Read Input Cheat Sheet

# 1. Basic `read` Syntax
# The `read` command allows you to get input from the user.

# Syntax:
# read VARIABLE_NAME

echo "Please enter your name:"
read name
echo "Hello, $name!"

# 2. Reading Input with a Prompt
# You can provide a prompt when using `read`.

echo "Please enter your age:"
read -p "Age: " age
echo "You are $age years old."

# 3. Reading Multiple Variables at Once
# You can read multiple variables in a single `read` command.

echo "Enter your first and last name:"
read first_name last_name
echo "Your full name is $first_name $last_name"

# 4. Reading Input with a Timeout
# You can set a timeout for input using the `-t` option.

echo "You have 5 seconds to type something:"
read -t 5 input
echo "You typed: $input"

# End of Read Input Cheat Sheet
