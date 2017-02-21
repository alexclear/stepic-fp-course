groupElems :: Eq a => [a] -> [[a]]
groupElems x = helper [] [] x where
     helper [] result (x:xs) = helper [x] result xs
     helper (y:ys) result (x:xs) = if x == y then helper (x:y:ys) result xs  else helper [x] ((y:ys) : result) xs
     helper [] result [] = reverse result
     helper (y:ys) result [] = reverse ((y:ys): result)
