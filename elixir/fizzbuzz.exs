# Get the max number from the command line arguments
max_number = System.argv |> List.first |> String.to_integer()

for i <- 1..max_number do # Loop from 1 to max_number
  cond do
    rem(i, 3) == 0 and rem(i, 5) == 0 -> IO.puts "FizzBuzz" # If i is divisible by 3 and 5
    rem(i, 3) == 0 -> IO.puts "Fizz"                        # If i is divisible by 3
    rem(i, 5) == 0 -> IO.puts "Buzz"                        # If i is divisible by 5
    true -> IO.puts i                                       # Otherwise, print i
  end
end
