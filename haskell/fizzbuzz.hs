module Main where
import System.Environment (getArgs)

-- Function to determine the FizzBuzz value of a number
-- Takes an integer and returns a string
fizzbuzz :: Int -> String
fizzbuzz n
  | n `mod` 15 == 0 = "FizzBuzz"
  | n `mod` 3 == 0 = "Fizz"
  | n `mod` 5 == 0 = "Buzz"
  | otherwise = show n

main :: IO ()
main = do
    args <- getArgs     -- Get command line arguments
    if length args /= 1 -- Check if there is exactly one argument
        then putStrLn "Usage: fizzbuzz <number>" -- Print usage message if not
        else do 
            let n = read (head args) :: Int -- Parse the argument as an integer
            mapM_ (putStrLn . fizzbuzz) [1..n] -- Print the FizzBuzz values of 1 to n