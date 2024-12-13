#!/bin/bash

# This script attempts to process a file containing numbers, but it has a subtle bug.
# The bug is related to how integer comparison is performed in certain contexts.

# Input file containing a list of numbers (one per line)
input_file="numbers.txt"

# Process each number in the input file
while IFS= read -r number;
do
  # Check if the number is less than 100
  if [ "$number" -lt 100 ]; then
    echo "$number is less than 100"
  else
    echo "$number is greater than or equal to 100"
  fi
done < "$input_file"

#Create a dummy file for testing purposes
echo "50" > numbers.txt
echo "150" >> numbers.txt
echo "99" >> numbers.txt
echo "100" >> numbers.txt
echo "abc" >> numbers.txt