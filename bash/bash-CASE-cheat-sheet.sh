#!/bin/bash

# Bash Case Statement Cheat Sheet

# 1. Basic Case Statement Syntax
# The `case` statement allows you to test different patterns and execute corresponding commands.

# Syntax:
# case $variable in
#   pattern1)
#     # Commands to execute for pattern1
#     ;;
#   pattern2)
#     # Commands to execute for pattern2
#     ;;
#   *)
#     # Commands to execute if no pattern matches
#     ;;
# esac

day="Monday"
case $day in
  Monday)
    echo "Start of the week!"
    ;;
  Friday)
    echo "End of the week!"
    ;;
  *)
    echo "Middle of the week"
    ;;
esac

# 2. Using Regular Expressions in Case
# You can use regular expressions to match more complex patterns.

file="logfile_2023.txt"
case $file in
  *_2023.txt)
    echo "It's a log file from 2023"
    ;;
  *)
    echo "Unknown file"
    ;;
esac

# End of Case Statement Cheat Sheet
