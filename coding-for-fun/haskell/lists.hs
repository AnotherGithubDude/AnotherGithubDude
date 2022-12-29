-- author: https://github.com/AnotherGithubDude, 2022
-- compiled:$ ghc --make lists.hs

main :: IO ()
main = do 
     let myList = [5, 23, 42, 65]
         firstItem = myList !! 0 
         secondItem = myList !! 1 
         updatedList = myList ++ [25, 30]
         shortenedList = tail updatedList
         listReversed = reverse myList
         lengthOfList = length myList
     if (lengthOfList) > 0 then 
        putStrLn ("fItem:" ++ show firstItem ++"\nlength:"++ show lengthOfList)
     else
        putStrLn "error"