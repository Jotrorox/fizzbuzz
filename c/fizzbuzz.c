#include <stdio.h>
#include <stdlib.h>

int main(int argc, char *argv[]) {
    // Check if the number of command line arguments is correct
    if (argc != 2) {
        printf("Usage: %s <number>\n", argv[0]);
        return 1;
    }

    // Convert the command line argument to an integer
    int number = atoi(argv[1]);

    // Loop through numbers from 1 to the given number
    for (int i = 1; i <= number; i++) {
        // Check if the number is divisible by both 3 and 5
        if (i % 3 == 0 && i % 5 == 0) {
            printf("FizzBuzz\n"); // Print "FizzBuzz" if divisible by both 3 and 5
        } 
        // Check if the number is divisible by 3
        else if (i % 3 == 0) {
            printf("Fizz\n"); // Print "Fizz" if divisible by 3
        } 
        // Check if the number is divisible by 5
        else if (i % 5 == 0) {
            printf("Buzz\n"); // Print "Buzz" if divisible by 5
        } 
        // If none of the above conditions are met, print the number itself
        else {
            printf("%d\n", i);
        }
    }
    return 0;
}