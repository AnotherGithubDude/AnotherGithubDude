import Data.Char
-- author: https://github.com/AnotherGithubDude, 2022
-- compiled:$ ghc --make dec_to_hex.hs

decimalToHex :: Integer -> String
decimalToHex 0 = "0"
decimalToHex n = 
    let (n', remainder) = n `divMod` 16
    in decimalToHex n' ++ [intToDigit $ fromEnum remainder]

main :: IO ()
main = do
  putStrLn "Please enter your decimal number:"
  number <- readLn :: IO Integer
  putStrLn ("Your number in hex number: 0x" ++ decimalToHex number)
