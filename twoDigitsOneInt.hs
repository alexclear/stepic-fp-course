import Data.Char
twoDigits2Int x y = if (isDigit x) then (if (isDigit y) then (((digitToInt x) * 10) + (digitToInt y)) else 100) else 100
