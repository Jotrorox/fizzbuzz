// Import the Foundation framework, which provides basic functionality for the program
// Examples of where this is needed:
// - Command line arguments
// - Exiting the program
import Foundation

// Get the List of command line arguments
let args = CommandLine.arguments

// Check if the maximum number is a positive integer and the first argument, if not, print an error message and exit
// The first argument is the maximum number, the second is the program name
if args.count != 2 || Int(args[1]) == nil {
    // Print the usage message to the console
    print("Usage: fizzbuzz <max>")

    // Exit the program with the error code 1
    exit(1)
}

// Convert the first argument to an integer
let max = Int(args[1])!

// Loop from 1 to the maximum number
for i in 1...max {
    if i % 15 == 0 { // Check if the number is divisible by 15
        print("FizzBuzz")
    } else if i % 3 == 0 { // Check if the number is divisible by 3
        print("Fizz")
    } else if i % 5 == 0 { // Check if the number is divisible by 5
        print("Buzz")
    } else {
        print(i) // If the number is not divisible by 3 or 5, print the number itself
    }
}