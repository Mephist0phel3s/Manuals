#!/bin/bash

# Bash For Loop Cheat Sheet

# 1. Basic For Loop Syntax
# A `for` loop iterates over a list of values, executing commands for each item.

# Syntax:
# for VAR in ITEM1 ITEM2 ITEM3; do
#   # Commands to execute for each item
# done

for file in *.txt; do
  echo "Found text file: $file"
done

# 2. Using C-style For Loops (Numeric Range)
# Bash supports C-style for loops for iterating over a numeric range.

# Syntax:
# for (( INIT; CONDITION; INCREMENT )); do
#   # Commands to execute
# done

for (( i=1; i<=5; i++ )); do
  echo "Number $i"
done

# 3. Looping Over Files in a Directory
# You can use a for loop to iterate over all files in a directory.

for file in /path/to/directory/*; do
  echo "Processing file: $file"
done

# 4. Breaking and Continuing in Loops
# - `break`: Exits the loop completely
# - `continue`: Skips to the next iteration of the loop

for i in {1..10}; do
  if [ $i -eq 5 ]; then
    continue # Skip the iteration when $i is 5
  fi
  if [ $i -eq 8 ]; then
    break # Exit the loop completely when $i is 8
  fi
  echo "Processing number $i"
done

# End of For Loop Cheat Sheet
