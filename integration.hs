integration :: (Double -> Double) -> Double -> Double -> Double
integration f a b = let step = (b - a) / 1000 in helper 0 f a b step
     where helper sum f a' b step' | if step' > 0 then (b - (a' + step')) <= (step'/2) else ((a' + step') - b) <= ((-step')/2) = sum + (delta f a' step')
                                   | otherwise = helper (sum + (delta f a' step')) f (a' + step') b step'
                   where delta f x1 delta' = ((f(x1) + f(x1 + delta')) / 2) * delta'
