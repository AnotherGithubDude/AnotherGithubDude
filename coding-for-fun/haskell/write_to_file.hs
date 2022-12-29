import System.Directory
import System.IO

main = do 
  exist <- doesFileExist "secrets.txt"
  -- Create file if not existing
  if (not exist) then writeFile "secrets.txt" ""
  else putStrLn "File already exists"
  
  -- Get user input
  putStrLn "Please enter your secret text:"
  userInput <- getLine
  -- Append user input to existing content
  appendFile "secrets.txt" userInput
  
  -- Read the file
  contents <- readFile "secrets.txt"
  -- Print the count of words in the file
  let numOfWords = length (words contents)
  putStrLn $ "The number of words in this file is " ++ show numOfWords
  -- Print the values of the file
  putStrLn contents
