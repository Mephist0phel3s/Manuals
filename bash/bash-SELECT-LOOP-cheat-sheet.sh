#!/bin/bash

# Bash Select Loop Cheat Sheet

# 1. Basic Select Syntax
# The `select` statement is used to create a menu from which a user can choose an option.

# Syntax:
# select VAR in ITEM1 ITEM2 ITEM3; do
#   # Commands to execute for the selected item
# done

PS3="Please select an option: "
select color in Red Green Blue Quit; do
  case $color in
    Red)
      echo "You selected Red"
      ;;
    Green)
      echo "You selected Green"
      ;;
    Blue)
      echo "You selected Blue"
      ;;
    Quit)
      echo "Goodbye!"
      break
      ;;
    *)
      echo "Invalid selection"
      ;;
  esac
done

# 2. Using Select with User Input
# Select can also capture user input to execute commands based on the option chosen.

PS3="Choose a number: "
select number in One Two Three; do
  echo "You chose $number"
  break
done

# End of Select Loop Cheat Sheet
