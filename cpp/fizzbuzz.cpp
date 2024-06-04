#include <iostream>

int main(int argc, char *argv[])
{
    // Check if the correct number of arguments is passed
    if (argc != 2)
    {
        // Display usage instructions and exit with error code
        std::cout << "Usage: " << argv[0] << " <max_number>" << std::endl;
        return 1;
    }

    // Convert the second command-line argument to an integer
    int maxNumber = std::stoi(argv[1]);

    // Iterate through numbers from 1 to maxNumber
    for (int i = 1; i <= maxNumber; i++)
    {
        // Determine what to print based on the number
        if (i % 3 == 0 && i % 5 == 0)
        {
            // Print "FizzBuzz" if the number is divisible by both 3 and 5
            std::cout << "FizzBuzz" << std::endl;
        }
        else if (i % 3 == 0)
        {
            // Print "Fizz" if the number is divisible by 3 but not 5
            std::cout << "Fizz" << std::endl;
        }
        else if (i % 5 == 0)
        {
            // Print "Buzz" if the number is divisible by 5 but not 3
            std::cout << "Buzz" << std::endl;
        }
        else
        {
            // Otherwise, print the number itself
            std::cout << i << std::endl;
        }
    }

    // Exit successfully
    return 0;
}
