import sys

def fizzbuzz(max_num):
    """
    Prints the numbers from 1 to max_num, replacing multiples of 3 with "Fizz",
    multiples of 5 with "Buzz", and multiples of both 3 and 5 with "FizzBuzz".

    Args:
        max_num (int): The maximum number to print.

    Returns:
        None
    """
    for num in range(1, max_num + 1):
        if num % 3 == 0 and num % 5 == 0:
            print("FizzBuzz")  # Print "FizzBuzz" if num is divisible by both 3 and 5
        elif num % 3 == 0:
            print("Fizz")  # Print "Fizz" if num is divisible by 3
        elif num % 5 == 0:
            print("Buzz")  # Print "Buzz" if num is divisible by 5
        else:
            print(num)  # Print the number if it is not divisible by 3 or 5

if __name__ == "__main__":
    if len(sys.argv) > 1: # Check if a command line argument was provided
        max_num = int(sys.argv[1]) # Convert the command line argument to an integer
        fizzbuzz(max_num) # Call the fizzbuzz function with the provided argument
    else: # Print an error message if no command line argument was provided
        print("Please provide a maximum number as a command line argument.")