-- author: https://github.com/AnotherGithubDude, 2022
-- compiled:$ ghc --make menu_celsius_or_fahrenheit.hs

import Text.Read (readMaybe)

convertCelsiusToFahrenheit :: Double -> Double
convertCelsiusToFahrenheit celsius = (celsius * (9/5)) + 32

convertFahrenheitToCelsius :: Double -> Double
convertFahrenheitToCelsius fahrenheit = (fahrenheit - 32) / (9/5)

main = do 
    putStrLn "Select a conversion: (1) Celsius to Fahrenheit, (2) Fahrenheit to Celsius"
    selectionString <- getLine
    let maybeSelection = readMaybe selectionString :: Maybe Int
    case maybeSelection of 
        Just 1 -> do
            putStrLn "Enter a temperature in Celsius:"
            tempString <- getLine
            let maybeTemp = readMaybe tempString :: Maybe Double
            case maybeTemp of 
                Just temp -> do 
                    let result = convertCelsiusToFahrenheit temp
                    putStrLn ("Your temperature is: " ++ show result)
                Nothing -> putStrLn "Invalid temperature"
        Just 2 -> do
            putStrLn "Enter a temperature in Fahrenheit:"
            tempString <- getLine
            let maybeTemp = readMaybe tempString :: Maybe Double
            case maybeTemp of 
                Just temp -> do 
                    let result = convertFahrenheitToCelsius temp
                    putStrLn ("Your temperature is: " ++ show result)
                Nothing -> putStrLn "Invalid temperature"
        Nothing -> putStrLn "Invalid selection"
