-- author: https://github.com/AnotherGithubDude, 2022
-- compiled:$ ghc --make fahrenheit_to_celsius.hs
import Text.Read (readMaybe)

main = do 
    putStrLn "Enter a temperature in Fahrenheit:"
    fahrenheitString <- getLine
    let maybeFahrenheit = readMaybe fahrenheitString :: Maybe Double
    case maybeFahrenheit of 
        Just fahrenheit -> do 
            let celsius = (fahrenheit - 32) / (9/5)
            putStrLn ("Your temperature in Celsius is: " ++ show celsius) 
        Nothing -> putStrLn "Invalid temperature"
