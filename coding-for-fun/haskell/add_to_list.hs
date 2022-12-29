import Data.List
-- author: https://github.com/AnotherGithubDude, 2022
-- compiled:$ ghc --make add_to_list.hs

main :: IO ()
main = do
  let dataSet = [1, 2, 3, 4, 5]
  let result = map (\x -> x + 23) dataSet
  print $ "The result of adding 1 to each element is: " ++ show result
