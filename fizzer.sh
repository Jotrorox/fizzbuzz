#!/bin/bash

list() {
    printf "%-20s %-20s\n" "Name" "Author"
    printf "%-20s %-20s\n" "----" "------"
    for dir in $(ls -d */); do
        if [ -f "$dir"*.fbc ]; then
            file=$(ls $dir*.fbc)
            name=$(grep -o '^name=.*' $file | cut -d'=' -f2)
            author=$(grep -o '^author=.*' $file | cut -d'=' -f2)
            printf "%-20s %-20s\n" "$name" "$author"
        fi
    done
}

if [ "$1" == "list" ]; then
    list
elif [ "$1" == "run" ]; then
    echo "Not implemented yet."
elif [ "$1" == "help" ]; then
    echo "Help: This script can take one of 3 arguments [ list | run | help ]"
else
    echo "Invalid argument. Please use [ list | run | help ]"
fi