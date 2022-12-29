import System.Directory 
-- author: https://github.com/AnotherGithubDude, 2022
-- compiled:$ ghc --make filter_matches.hs

main = do 
    -- check if a file 'result.txt' exists
    resultExists <- doesFileExist "result.txt"
    if resultExists
    then do
        -- retrieve user input from command line
        putStrLn "Please enter the word you wish to search for"
        searchWord <- getLine 

        -- search for user provided words in the file
        contents <- readFile "result.txt"
        let matches = filter (== searchWord) (words contents)

        -- print the matches and their counts
        putStrLn ("Matches: " ++ show (length matches))
    else 
        putStrLn "No file found"
