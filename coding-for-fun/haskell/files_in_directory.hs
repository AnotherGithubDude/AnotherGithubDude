-- author: https://github.com/AnotherGithubDude, 2022
-- compiled:$ ghc --make files_in_directory.hs

import System.Directory
import Data.List

main = do
   fileNames <- listDirectory "."
-- Print out the number of files in the current directory
   putStrLn $ "Number of files: " ++ (show (length fileNames) ++ "\n") 
-- Print out a single line of the filenames, 
-- separating them by newlines and sorting them alphabetically
   putStrLn $ intercalate "\n" (sort fileNames)
