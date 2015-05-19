-- Scripts are collections of definitions supplied by the programmer.
-- Definitions are expressed as equations between certain kinds of expression and describe mathematical functions.
-- During a session, expressions are submitted for evaluation; these ex­ pressions can contain references to the functions defined in the script.

square x = x*x

min x y 
  | x <= y = x
  | x > y  = y

side = 12
area = square side

quad x = square (square x)

max x y
  | x >= y = x
  | x < y = y

area_of_circle r = pi * (square r)

post_normal_system (1:_:_:xs) = post_normal_system $ xs++[1,1,0,1]
post_normal_system (0:_:_:xs) = post_normal_system $ xs ++ [0,0]
post_normal_system xs = xs

