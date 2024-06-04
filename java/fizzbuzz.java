public class fizzbuzz {
    public static void main(String[] args) {
        // Check if a command-line argument is provided
        if (args.length == 0) {
            System.out.println("Please provide a number as a command-line argument.");
            return;
        }

        // Parse the maximum number from the command-line argument
        int maxNumber = Integer.parseInt(args[0]);

        // Iterate from 1 to the maximum number
        for (int i = 1; i <= maxNumber; i++) {
            // Check if the current number is divisible by both 3 and 5
            if (i % 3 == 0 && i % 5 == 0) {
                System.out.println("FizzBuzz");
            }
            // Check if the current number is divisible by 3
            else if (i % 3 == 0) {
                System.out.println("Fizz");
            }
            // Check if the current number is divisible by 5
            else if (i % 5 == 0) {
                System.out.println("Buzz");
            }
            // If none of the above conditions are met, print the number itself
            else {
                System.out.println(i);
            }
        }
    }
}