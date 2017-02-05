fibonacci :: Integer -> Integer
fibonacci n | n >= 0 = helper n 0 0 0
            | n < 0 = helper2 n 0 0 0
helper to acc prev n | to == 1 = 1
             | n == to = acc + prev
             | n == 1 = helper to 1 0 (n + 1)
             | n < to = helper to (acc + prev) acc (n + 1)
helper2 to acc prev n | to == (-1) = 1
             | n == to = prev - acc
             | n == (-1) = helper2 to 1 0 (n - 1)
             | n > to = helper2 to (prev - acc) acc (n - 1)
