import Data.Char

let2int c = ord c - ord 'a'
ulet2int c = ord c - ord 'A'
int2let n = chr (ord 'a' + n)
uint2let n = chr (ord 'A' + n)


shift n c | isLower c = int2let ((let2int c + n) `mod` 26)
          | otherwise = uint2let ((ulet2int c + n) `mod` 26)

encode n xs = [shift n x | x <- xs]

main = putStrLn $ encode 13 "Think like a Fundamentalist Code like a Hacker"
