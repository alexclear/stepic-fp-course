perms :: [a] -> [[a]]
perms [] = [[]]
perms xs = concatMap (\x -> (map (\z -> (x:z)) (perms (concatMap (\y -> if x==y then [] else [y]) xs))) ) xs
