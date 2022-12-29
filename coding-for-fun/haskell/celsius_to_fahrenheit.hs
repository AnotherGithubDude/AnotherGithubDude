-- author: https://github.com/AnotherGithubDude, 2022
-- compiled:$ ghc --make celsius_to_fahrenheit.hs

import Text.Read (readMaybe)

main = do 
    putStrLn "Enter a temperature in Celsius:"
    celsiusString <- getLine
    let maybeCelsius = readMaybe celsiusString :: Maybe Double
    case maybeCelsius of 
        Just celsius -> do 
            let fahrenheit = (celsius * (9/5)) + 32
            putStrLn ("Your temperature in Fahrenheit is: " ++ show fahrenheit) 
        Nothing -> putStrLn "Invalid temperature"
