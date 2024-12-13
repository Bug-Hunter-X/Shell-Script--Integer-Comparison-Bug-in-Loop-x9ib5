# Shell Script Integer Comparison Bug

This repository demonstrates a common but subtle bug in shell scripts related to integer comparison within loops when dealing with potential non-numeric input. The script processes a file containing numbers and classifies them based on whether they are less than 100 or not.  However, it fails to handle non-numeric inputs correctly.

## Bug Description
The main issue lies in the `if [ "$number" -lt 100 ]; then` statement. When `$number` contains a non-numeric value, the comparison fails, causing unexpected results. This is because the `-lt` operator expects integer arguments and will throw an error or unexpected output if anything else is supplied.

## Solution
The solution involves robust input validation to ensure that only numeric values are processed within the loop.