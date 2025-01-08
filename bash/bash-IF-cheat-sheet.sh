#!/bin/bash

# Bash If Statement Cheat Sheet

# 1. Basic Structure of an `if` Statement
# The basic structure of an `if` statement in Bash looks like this:
# if [ CONDITION ]; then
#   # Commands to execute if the condition is true
# fi

# 2. Conditionals in Bash

# A. File Test Conditions
# You can check the existence and properties of files or directories:
# - -e FILE: True if the file exists
# - -d FILE: True if the file is a directory
# - -f FILE: True if the file is a regular file
# - -r FILE: True if the file is readable
# - -w FILE: True if the file is writable
# - -x FILE: True if the file is executable

if [ -e "$file" ]; then
  echo "File exists"
fi

# B. String Test Conditions
# You can compare strings in Bash with the following options:
# - -z STRING: True if the string is empty
# - -n STRING: True if the string is non-empty
# - STRING1 == STRING2: True if the strings are equal
# - STRING1 != STRING2: True if the strings are not equal

if [ -n "$username" ]; then
  echo "Username is not empty"
fi

# C. Numeric Test Conditions
# To compare numbers, you can use the following operators:
# - -eq: Equal to
# - -ne: Not equal to
# - -lt: Less than
# - -le: Less than or equal to
# - -gt: Greater than
# - -ge: Greater than or equal to

if [ "$number" -gt 5 ]; then
  echo "Number is greater than 5"
fi

# D. Command Test Conditions
# Sometimes, you want to check the success or failure of a command.
# A command returns true (exit status 0) if it succeeds, and false (non-zero) if it fails.
# You can also negate a command with `!` to check if it fails.

if ls "$directory"; then
  echo "Directory exists"
else
  echo "Directory does not exist"
fi

# 3. Combining Multiple Conditions
# You can combine multiple conditions using logical operators:
# - &&: Logical AND (both conditions must be true)
# - ||: Logical OR (at least one condition must be true)

# A. Logical AND (&&)
if [ -f "$file" ] && [ -r "$file" ]; then
  echo "File exists and is readable"
fi

# B. Logical OR (||)
if [ -f "$file" ] || [ -d "$directory" ]; then
  echo "File or directory exists"
fi

# 4. `else` and `elif` (Else If) Clauses
# An `if` statement can have optional `else` and `elif` (else if) branches to handle different cases.

# A. `else`
if [ -f "$file" ]; then
  echo "File exists"
else
  echo "File does not exist"
fi

# B. `elif` (Else If)
if [ "$number" -gt 10 ]; then
  echo "Number is greater than 10"
elif [ "$number" -eq 10 ]; then
  echo "Number is equal to 10"
else
  echo "Number is less than 10"
fi

# 5. Using `[[` for More Advanced Tests
# While `[` is the traditional test command, Bash also supports `[[`, which provides more features and is safer to use in some cases.
# For example, `[[` allows for more complex string comparisons and avoids issues with special characters like spaces.

if [[ "$string1" == "$string2" ]]; then
  echo "Strings are equal"
fi

# A. Advantages of `[[` over `[`
# - `[[` supports pattern matching (e.g., `==` with `*` and `?`).
# - `[[` allows you to use logical operators like `&&` and `||` directly within the condition.

if [[ "$filename" == *.txt ]] && [[ -f "$filename" ]]; then
  echo "It's a text file"
fi

# 6. Exit Status and Using `exit`
# - Every command in Bash returns an exit status, where `0` means success (true) and non-zero means failure (false).
# - The `exit` command allows you to terminate a script with a specific exit status. For example, `exit 1` means the script encountered an error.

if [ ! -d "$directory" ]; then
  echo "Directory does not exist. Exiting."
  exit 1
fi

# 7. Example with Multiple Conditions
if [ -d "$dir" ]; then
  if [ "$(ls -A "$dir")" ]; then
    echo "Directory is not empty"
    for file in "$dir"/*; do
      if [ -x "$file" ]; then
        echo "Executable file: $file"
      else
        echo "Non-executable file: $file"
      fi
    done
  else
    echo "Directory is empty"
  fi
else
  echo "Directory does not exist"
fi

# End of Cheat Sheet
