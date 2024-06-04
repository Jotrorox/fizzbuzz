package main

import (
	"fmt"
	"os"
	"strconv"
)

func main() {
	// Check if the command-line argument is provided
	if len(os.Args) < 2 {
		fmt.Println("Please provide a maximum number.") // Inform the user to provide a maximum number
		return                                          // Exit the program if no argument is provided
	}

	// Attempt to convert the first command-line argument to an integer
	max, err := strconv.Atoi(os.Args[1]) // Convert string to integer
	if err != nil {
		fmt.Println("Invalid maximum number.") // Inform the user if the conversion fails
		return                                 // Exit the program if the conversion fails
	}

	// Loop from 1 to the provided maximum number
	for i := 1; i <= max; i++ {
		// Check if the current number is divisible by both 3 and 5
		if i%3 == 0 && i%5 == 0 {
			fmt.Println("FizzBuzz") // Print "FizzBuzz" if the number is divisible by both 3 and 5
		} else if i%3 == 0 { // Check if the current number is divisible by 3
			fmt.Println("Fizz") // Print "Fizz" if the number is divisible by 3
		} else if i%5 == 0 { // Check if the current number is divisible by 5
			fmt.Println("Buzz") // Print "Buzz" if the number is divisible by 5
		} else {
			fmt.Println(i) // Print the number itself if it's not divisible by 3 or 5
		}
	}
}
