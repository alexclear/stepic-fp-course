sum'n'count :: Integer -> (Integer, Integer)
sum'n'count x | x >= 0 = helper (0,0) x
              | otherwise = helper (0,0) (-x)
    where helper (sum,count) n | n < 10 = ((sum + n), (count + 1))
                               | otherwise = let newn = (n `div` 10) in helper (sum + (n - newn * 10), (count + 1)) newn 
