-- Write a Haskell function that returns the reverse of a simple list.
rvs (x:xs) = rvs (xs) ++ [(x)]
rvs [] =[]


-- Write a Haskell function that returns the union of two simple lists that represent sets.
uin (a) (b) = a ++ b
sort (x:xs) = sort (filter (<= x) xs) ++ [x] ++ sort (filter (> x) xs)
sort [] = []
sort1 (a) (b) = sort (uin (a) (b))
union (a) (b) = if (take 1 (sort1 (a) (b))) /= (take 1 (drop 1 (sort1 (a) (b))))
    then (take 1 (sort1 (a) (b))) ++ (union (drop 1 (sort1 (a) (b))) [])
    else (union (drop 1 (sort1 (a) (b))) [])
union [] [] = []

-- Write a Haskell function that takes a simple list of numbers and returns a list identical except with the numbers in ascending order.
sort (x:xs) = sort (filter (<= x) xs) ++ [x] ++ sort (filter (> x) xs)
sort [] = []

-- Write a Haskell function that takes a simple list of numbers and returns the largest and smallest numbers in the list.
sort (x:xs) = sort (filter (<= x) xs) ++ [x] ++ sort (filter (> x) xs)
sort [] = []
maxmin (x:xs) = [head (sort (x:xs))] ++ [last (sort (x:xs))]


-- Write a Haskell function that takes a simple list and returns a list of all the permutations of the list.rvs (x:xs) = rvs (xs) ++ [(x)]
import Data.List
pmt xs = [x:ys | x <- xs, ys <- pmt (delete x (xs))]
pmt [] = [[]]