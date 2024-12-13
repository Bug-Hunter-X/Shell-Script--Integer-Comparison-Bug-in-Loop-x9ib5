#!/bin/bash

# Improved script with input validation
input_file="numbers.txt"

while IFS= read -r number;
do
  # Validate if the input is a number
  if [[ ! "$number" =~ ^-?[0-9]+$ ]]; then
    echo "Warning: Non-numeric input '$number' skipped."
    continue
  fi
  
  #Check if the number is less than 100
  if (( number < 100 )); then
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