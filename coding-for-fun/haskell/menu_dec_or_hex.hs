import Data.Char
-- author: https://github.com/AnotherGithubDude, 2022
-- compiled:$ ghc --make menu_dec_or_hex.hs

decimalToHex :: Integer -> String
decimalToHex 0 = "0"
decimalToHex n = 
    let (n', remainder) = n `divMod` 16
    in decimalToHex n' ++ [intToDigit $ fromEnum remainder]

hexToDecimal :: String -> Integer
hexToDecimal s =
    go 0 (reverse s) 
    where
        go :: Integer -> String -> Integer
        go n []     = n
        go n (c:cs) = let n' = n + (toInteger $ digitToInt c) * 16^length cs
                      in go n' cs

menu :: IO ()
menu = do
    putStrLn "Choose one of the following options:"
    putStrLn "1. Decimal to Hexadecimal"
    putStrLn "2. Hexadecimal to Decimal"
    option <- readLn :: IO Int
    case option of 
        1 -> do
            putStrLn "Enter a decimal number:"
            decimalNumber <- readLn :: IO Integer
            putStrLn ("Your number in hexadecimal is: 0x" ++ decimalToHex decimalNumber)
        2 -> do
            putStrLn "Enter a hexadecimal number:"
            hexNumber <- getLine
            putStrLn ("Your number in decimal is: " ++ show (hexToDecimal hexNumber))

main :: IO ()
main = do
  menu
