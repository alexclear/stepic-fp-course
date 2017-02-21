import Data.Char
readDigits :: String -> (String, String)
readDigits x = (digits x,remainder x) where
     digits [] = []
     digits (x:xs) = if isDigit x then x:digits xs else []
     remainder [] = []
     remainder (x:xs) = if isDigit x then remainder xs else (x:xs)
