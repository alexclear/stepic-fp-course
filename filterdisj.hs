filterDisj :: (a -> Bool) -> (a -> Bool) -> [a] -> [a]
filterDisj fun1 fun2 [] = []
filterDisj fun1 fun2 (x:xs) = if fun1 x then (x:filterDisj fun1 fun2 xs) else if fun2 x then (x:filterDisj fun1 fun2 xs) else filterDisj fun1 fun2 xs 
