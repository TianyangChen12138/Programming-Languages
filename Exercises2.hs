--Write a program that finds the maximum of a list of numbers.
mmax(x) = if (length (x)) <= 1
          then x
          else
          if (take 1 (x)) <= (take 1 (drop 1 (x)))
          then mmax(drop 1 (x))
          else mmax((take 1 (x)) ++ (drop 2 (x)))



--Write a program that succeeds if the intersection of two given list parameters is empty.
emt_int (x) (y) = if (length (x) == 0)
                  then True
                  else
                  if (member (head x) y)
                  then False
                  else (emt_int (drop 1 x) (y))
member b [] = False
member b (a:x) = (a == b) || member b x



--Write a program that returns a list containing the union of the elements of two given lists.
uin (a) (b) = a ++ b
sort (x:xs) = sort (filter (<= x) xs) ++ [x] ++ sort (filter (> x) xs)
sort [] = []
sort1 (a) (b) = sort (uin (a) (b))
union (a) (b) = if (take 1 (sort1 (a) (b))) /= (take 1 (drop 1 (sort1 (a) (b))))
                then (take 1 (sort1 (a) (b))) ++ (union (drop 1 (sort1 (a) (b))) [])
                else (union (drop 1 (sort1 (a) (b))) [])
union [] [] = []



--Write a program that returns the final element of a list
ret_last (x) = if (length (x)) <= 1
               then x
               else ret_last(drop 1 (x))