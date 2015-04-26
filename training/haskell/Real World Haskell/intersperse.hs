intersperse :: a -> [[a]] -> [a]
intersperse a aas = intersperse_iter aas False
    where
    intersperse_iter [] _ = []
    intersperse_iter xs True = [a]++(intersperse_iter xs False)
    intersperse_iter (x:xs) False = x++(intersperse_iter xs True)
