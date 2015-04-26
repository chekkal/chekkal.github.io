import Data.List
import Data.Char
import Unsafe.Coerce

data Nat = Zero | Succ Nat deriving Show

integerToNat = head . m
    where {
      ; m 0 = [0]
      ; m n = [sum [x | x <- (1: m (n-1))]]
    }
