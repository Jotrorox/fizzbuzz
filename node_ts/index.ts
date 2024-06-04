// Retrieve the second command-line argument passed to the script, expected to be the maximum number for FizzBuzz.
var max = process.argv[2];

// Check if the maximum number was provided as a command-line argument.
if (!max) {
    // If not, log a message asking the user to provide a maximum number.
    console.log("Please provide a maximum number as a command-line argument.");
} else {
    // Iterate through numbers from 1 up to the provided maximum number.
    for (let i = 1; i <= parseInt(max); i++) {
        // Check if the current number is divisible by both 3 and 5.
        if (i % 3 === 0 && i % 5 === 0) {
            // If so, print "FizzBuzz".
            console.log("FizzBuzz");
        } else if (i % 3 === 0) {
            // If the number is only divisible by 3, print "Fizz".
            console.log("Fizz");
        } else if (i % 5 === 0) {
            // If the number is only divisible by 5, print "Buzz".
            console.log("Buzz");
        } else {
            // Otherwise, just print the number itself.
            console.log(i);
        }
    }
}
