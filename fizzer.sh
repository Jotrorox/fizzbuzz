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

run() {
    if [ -d "$1" ]; then
        if [ -z "$(ls -A $1/*.fbc 2>/dev/null)" ]; then
            echo "No .fbc file found in the directory."
            echo "Please provide a valid directory with .fbc file."
            return
        fi

        file=$(ls $1/*.fbc)
        run_command=$(grep -o '^run=.*' $file | cut -d'=' -f2)
        if [ -z "$run_command" ]; then
            echo "No run command found in the .fbc file."
            echo "Please provide a valid run command."
            return
        fi

        cd $1
        run_command=${run_command//<arg>/$2}
        eval $run_command
        cd ..
    else
        echo "That directory does not exist."
        echo "Please write the name of the directory you would like to run."
    fi
}

if [ "$1" == "list" ]; then
    list
elif [ "$1" == "run" ]; then
    run $2 $3
elif [ "$1" == "help" ]; then
    echo "Help: This script can take one of 3 arguments [ list | run | help ]"
else
    echo "Invalid argument. Please use [ list | run | help ]"
fi