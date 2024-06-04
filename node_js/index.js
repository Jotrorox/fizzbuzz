// Get the maximum number from the command line arguments
const maxNumber = process.argv[2];

// Check if the maximum number is not provided
if (!maxNumber) {
    console.log('Please provide a number as a command line argument.');
    process.exit(1); // Exit the program with an error code
}

// Loop from 1 to the maximum number
for (let i = 1; i <= maxNumber; i++) {
    // Check if the current number is divisible by both 3 and 5
    if (i % 3 === 0 && i % 5 === 0) {
        console.log('FizzBuzz');
    }
    // Check if the current number is divisible by 3
    else if (i % 3 === 0) {
        console.log('Fizz');
    }
    // Check if the current number is divisible by 5
    else if (i % 5 === 0) {
        console.log('Buzz');
    }
    // If none of the above conditions are met, simply print the number
    else {
        console.log(i);
    }
}