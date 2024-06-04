// Import the standard environment module to access command-line arguments
use std::env;

fn main() {
    // Collect command-line arguments into a vector of strings
    let args: Vec<String> = env::args().collect();

    // Check if the user provided at least one argument (the program name itself)
    if args.len() < 2 {
        // If not, print a message asking for a maximum number and exit
        println!("Please provide a maximum number as a command line argument.");
        return;
    }

    // Attempt to parse the second argument as a u32 integer
    let max_number: u32 = match args[1].parse() {
        // If successful, store the value
        Ok(num) => num,
        // If not, print an error message and exit
        Err(_) => {
            println!("Invalid maximum number provided.");
            return;
        }
    };

    // Iterate over numbers from 1 up to and including the maximum number
    for num in 1..=max_number {
        // Check if the current number is divisible by both 3 and 5
        if num % 3 == 0 && num % 5 == 0 {
            // If true, print "FizzBuzz"
            println!("FizzBuzz");
        } else if num % 3 == 0 {
            // If divisible only by 3, print "Fizz"
            println!("Fizz");
        } else if num % 5 == 0 {
            // If divisible only by 5, print "Buzz"
            println!("Buzz");
        } else {
            // Otherwise, just print the number
            println!("{}", num);
        }
    }
}
