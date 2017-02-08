doItYourself = f . g . h

f = \x -> logBase 2 x

g = \x -> x ^ 3

h = \x -> if 42 > x then 42 else x
