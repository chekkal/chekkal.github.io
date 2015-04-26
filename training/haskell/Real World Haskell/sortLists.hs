import Data.List (sortBy)
sort_list xxs = sortBy (\xs ys-> compare (length xs) (length ys)) xxs
