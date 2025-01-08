#!/bin/bash

# Bash Until Loop Cheat Sheet

# 1. Basic Until Loop Syntax
# An `until` loop runs commands until the condition becomes true.

# Syntax:
# until [ CONDITION ]; do
#   # Commands to execute until the condition is true
# done

count=1
until [ $count -gt 5 ]; do
  echo "Count: $count"
  ((count++))
done

# 2. Using `break` and `continue` in an Until Loop
# - `break`: Exits the loop completely
# - `continue`: Skips to the next iteration of the loop

counter=1
until [ $counter -gt 5 ]; do
  if [ $counter -eq 3 ]; then
    continue # Skip the iteration when $counter is 3
  fi
  if [ $counter -eq 4 ]; then
    break # Exit the loop completely when $counter is 4
  fi
  echo "Processing counter: $counter"
  ((counter++))
done

# End of Until Loop Cheat Sheet
