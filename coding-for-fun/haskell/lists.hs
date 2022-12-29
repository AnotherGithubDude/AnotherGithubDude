main :: IO ()
main = do 
     let myList = [5, 10, 15, 20]
         firstItem = myList !! 0 -- 5
     let secondItem = myList !! 1 -- 10
     let updatedList = myList ++ [25, 30] -- [5, 10, 15, 20, 25, 30]
     let shortenedList = tail updatedList -- [10, 15, 20, 25, 30]
     let listReversed = reverse myList -- [20, 15, 10, 5]
     let lengthOfList = length myList
     if (lengthOfList) > 0 then 
        putStrLn ("firstItem: " ++ show firstItem ++"\nlengthOfList: "++ show lengthOfList)
     else
        putStrLn "error"