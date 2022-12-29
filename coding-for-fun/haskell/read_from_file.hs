import System.Directory
import System.IO
-- author: https://github.com/AnotherGithubDude, 2022
-- compiled:$ ghc --make read_from_file.hs

main = do
  exist <- doesFileExist "secrets.txt"
  if exist
    then do 
      contents <- readFile "secrets.txt"
      let numOfWords = length (words contents)
      putStrLn $ "The number of words in this file is " ++ show numOfWords
      putStrLn contents
    else putStrLn "The file does not exist"
