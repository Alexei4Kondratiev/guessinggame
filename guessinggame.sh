#!/bin/bash
# File: guessinggame.sh

# Function recursively counts the number of folders
# in a current directory and all its sub-directories
function number_of_files {
  local counter=$(echo find . -type f | wc -l)
  echo $counter
}

# Main function
function main {
  local counter=$(number_of_files)
  local guess
  read -p "How many files are in the current directory?:" guess
  while [[ $guess -ne $counter ]]
  do
    if [[ $guess -lt $counter ]]
    then
      read -p "$guess is too low, enter a new guess:" guess
    elif [[ $guess -gt $counter ]]
    then
      read -p "$guess is too high, enter a new guess:" guess
    fi
  done
  echo "Congratulations, $guess is correct"
}

return_value=$(main)
echo $return_value
