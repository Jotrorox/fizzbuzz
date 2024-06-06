max_number = ARGV[0].to_i # Get the first argument from the command line

if max_number <= 0 # Check if the argument is a positive integer
    puts "Please provide a positive integer as an argument." 
    puts "Usage: ruby fizzbuzz.rb <max_number>"
    exit # Exit the program if the argument is not a positive integer
end 

# Print the FizzBuzz sequence from 1 to the number provided as an argument
(1..max_number).each do |i|# Loop through the numbers from 1 to the number provided as an argument
    if i % 3 == 0 && i % 5 == 0 # Check if the number is divisible by 3 and 5
        puts 'FizzBuzz'
    elsif i % 3 == 0 # Check if the number is divisible by 3
        puts 'Fizz'
    elsif i % 5 == 0 # Check if the number is divisible by 5
        puts 'Buzz'
    else
        puts i # Print the number if it is not divisible by 3 or 5
    end
end