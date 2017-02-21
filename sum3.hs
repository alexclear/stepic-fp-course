sum3 :: Num a => [a] -> [a] -> [a] -> [a]
sum3 (x:xs) (y:ys) (z:zs) = (x + y + z : sum3 xs ys zs)
sum3 (x:xs) (y:ys) _ = (x + y : sum3 xs ys [])
sum3 (x:xs) _ (z:zs) = (x + z : sum3 xs [] zs)
sum3 _ (y:ys) (z:zs) = (y + z : sum3 [] ys zs)
sum3 (x:xs) _ _ = (x : sum3 xs [] [])
sum3 _ (y:ys) _ = (y : sum3 [] ys [])
sum3 _ _ (z:zs) = (z : sum3 [] [] zs)
sum3 _ _ _ = []
