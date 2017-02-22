squares'n'cubes :: Num a => [a] -> [a]
squares'n'cubes = concatMap (scpair) where
    scpair x = (x^2) : [x^3]
