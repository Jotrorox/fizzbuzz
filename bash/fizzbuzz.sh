#!/bin/bash

# Check if the maximum number is provided as an argument
if [ $# -eq 0 ]; then
    echo "Usage: $0 <max_number>"
    exit 1
fi

max_number=$1

# Loop through numbers from 1 to the maximum number
for ((i=1; i<=max_number; i++)); do
    # Check if the number is divisible by both 3 and 5
    if ((i % 3 == 0)) && ((i % 5 == 0)); then
        echo "FizzBuzz"
    # Check if the number is divisible by 3
    elif ((i % 3 == 0)); then
        echo "Fizz"
    # Check if the number is divisible by 5
    elif ((i % 5 == 0)); then
        echo "Buzz"
    else
        echo $i
    fi
done