nTimes = \x -> \y -> helper x y [] where
    helper a b c | b == 0 = c
                 | otherwise = helper a (b - 1) (a : c)
