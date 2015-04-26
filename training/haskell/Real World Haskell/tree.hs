data Tree a = Empty | Node a (Tree a) (Tree a)

height Empty = 0
height (Node a lt rt) = 1 + max (height lt) (height rt) 
