-- author: https://github.com/AnotherGithubDude, 2022
-- compiled:$ ghc --make fac_guards.hs

fac :: Int -> Int
fac n 
    | n == 0            = 1
    | n > 0 && n < 10   = n * fac (n-1)
    | otherwise         = error "factorial is only defined for positive numbers less than 10"

main :: IO ()
main = do 
    putStrLn "Please enter a positive number less than 10"
    nInput <- readLn
    let result = fac nInput
    if (result) > 0 then 
        putStrLn ("The factorial of the given number is: " ++ show result)
    else
        putStrLn "factorial is only defined for positive numbers less than 10"
