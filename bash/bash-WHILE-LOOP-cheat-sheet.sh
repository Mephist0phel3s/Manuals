#!/bin/bash

# Bash While Loop Cheat Sheet

# 1. Basic While Loop Syntax
# A `while` loop executes commands as long as the condition is true.

# Syntax:
# while [ CONDITION ]; do
#   # Commands to execute while the condition is true
# done

count=1
while [ $count -le 5 ]; do
  echo "Count: $count"
  ((count++))
done

# 2. Using `break` and `continue` in a While Loop
# - `break`: Exits the loop completely
# - `continue`: Skips to the next iteration of the loop

counter=1
while [ $counter -le 10 ]; do
  if [ $counter -eq 6 ]; then
    continue # Skip the iteration when $counter is 6
  fi
  if [ $counter -eq 9 ]; then
    break # Exit the loop completely when $counter is 9
  fi
  echo "Processing counter: $counter"
  ((counter++))
done

# End of While Loop Cheat Sheet
