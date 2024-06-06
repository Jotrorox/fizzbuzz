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

help() {
    # Colors
    RED='\033[0;31m'
    GREEN='\033[0;32m'
    YELLOW='\033[0;33m'
    BLUE='\033[0;34m'
    PURPLE='\033[0;35m'
    CYAN='\033[0;36m'
    NC='\033[0m' # No Color

    # Formatting
    BOLD=$(tput bold)
    ITALIC=$(tput sitm)
    UNDERLINE=$(tput smul)
    RESET=$(tput sgr0)

    echo -e "${BOLD}Help:${RESET} This script can take one of 3 arguments [ ${GREEN}list${RESET} | ${GREEN}run${RESET} | ${GREEN}help${RESET} ]"
    echo

    echo -e "${BOLD}Usage:${RESET}"
    echo -e "  ${GREEN}list:${RESET} List all the FizzBuzz files in the current directory and their authors."
    echo -e "        ${ITALIC}Example:${RESET} ./fizzer.sh list"
    echo

    echo -e "  ${GREEN}run:${RESET}  Run a FizzBuzz file in a specified directory with an optional argument."
    echo -e "        ${ITALIC}Example:${RESET} ./fizzer.sh run <directory> <argument>"
    echo

    echo -e "${BOLD}Project Information:${RESET}"
    echo -e "  ${GREEN}GitHub:${RESET} https://github.com/jotrorox/fizzbuzz"
    echo -e "  ${GREEN}Author:${RESET} Johannes (Jotrorox)"
    echo -e "  ${GREEN}Email:${RESET} mail@jotrorox.com"
    echo -e "  ${GREEN}Website:${RESET} https://jotrorox.com"
    echo -e "  ${GREEN}Version:${RESET} 1.0"
    echo -e "  ${GREEN}License:${RESET} AGPLv3"
    echo
}

if [ "$1" == "list" ]; then
    list
elif [ "$1" == "run" ]; then
    run $2 $3
else
    help
fi