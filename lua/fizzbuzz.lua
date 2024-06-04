local max_number = tonumber(arg[1]) -- Get the maximum number from the command line argument

if not max_number then
    print("Please provide a number as an argument.") -- Print an error message if no number is provided
    return
end

for i = 1, max_number do
    if i % 3 == 0 and i % 5 == 0 then -- Check if the number is divisible by both 3 and 5
        print("FizzBuzz") -- Print "FizzBuzz" if it is
    elseif i % 3 == 0 then -- Check if the number is divisible by 3
        print("Fizz") -- Print "Fizz" if it is
    elseif i % 5 == 0 then -- Check if the number is divisible by 5
        print("Buzz") -- Print "Buzz" if it is
    else
        print(i) -- Print the number itself if none of the above conditions are met
    end
end