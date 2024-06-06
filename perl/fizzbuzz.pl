my $max = shift @ARGV;  # Get the maximum number from command line arguments

# Check if the maximum number is a positive integer and the first argument, if not, print an error message and exit
die "Invalid input: Maximum number must be a positive integer and the first argument\n" unless $max && $max =~ /^[1-9]\d*$/; 

for my $i (1..$max) { # Loop from 1 to the maximum number
    if ($i % 3 == 0 && $i % 5 == 0) {  # If the number is divisible by both 3 and 5
        print "FizzBuzz\n";  # Print "FizzBuzz"
    } elsif ($i % 3 == 0) {  # If the number is divisible by 3
        print "Fizz\n";  # Print "Fizz"
    } elsif ($i % 5 == 0) {  # If the number is divisible by 5
        print "Buzz\n";  # Print "Buzz"
    } else {
        print "$i\n";  # Print the number itself
    }
}