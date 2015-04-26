my_reverse xs = my_reverse_iter xs [] 
    where 
    my_reverse_iter [] rs = rs
    my_reverse_iter (x:xs) rs = my_reverse_iter xs (x:rs)

palindrome xs = xs ++ my_reverse xs

palindrome? xs = xs == my_reverse xs

