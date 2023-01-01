-- author: https://github.com/AnotherGithubDude, 2023
-- compiled:$ ghc --make password_generator_commented.hs

-- Import the System.Random and System.Environment modules
-- for generating random numbers and reading command-line arguments
import System.Random
import System.Environment

-- Define the generatePassword function that takes an Int argument len
-- and returns an IO action that generates a random password of length len
generatePassword :: Int -> IO String
generatePassword len = do
  -- Generate a new random number generator
  gen <- newStdGen
  -- Define a list of characters that can be used in the password
  let chars = ['a'..'z'] ++ ['A'..'Z'] ++ ['0'..'9'] ++ "!@#$%^&*_+-=[]{}|:;'<>,.?/"
  -- Generate a list of random indices in the range [0, length chars - 1]
  -- and use the (!!) operator to select the corresponding characters from the chars list
  -- Finally, take the first len characters and return them as a single string
  return $ take len $ map (chars !!) $ randomRs (0, length chars - 1) gen

-- Define the main function as an IO action that reads the length of the password
-- from the command line and generates a password of that length
main :: IO ()
main = do
  -- Read the command-line arguments as a list of strings
  args <- getArgs
  -- Check if the list is empty
  if null args
    -- If the list is empty, print the usage message and exit
    then putStrLn "Usage: password-generator.hs LENGTH"
    -- If the list is not empty, extract the first argument (the length of the password)
    -- and convert it to an Int
    else do
      let len = read (head args)
      -- Generate a password of the specified length
      securePassword <- generatePassword len
      -- Print the password to the standard output
      putStrLn securePassword
