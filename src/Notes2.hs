{-# LANGUAGE ViewPatterns, TemplateHaskell #-}
{-# OPTIONS_GHC #-}

module Notes2 where

--No common item from two lists
noCommon:: [Int]->[Int]->[Int]
noCommon [] xs = xs
noCommon xs [] = xs
noCommon xs ys = [x | x<-xs, y<-ys, x/=y]

--A few attempts at fibonacci=======
--mathematical functional method (found online)
--fibonacci = map fst (iterate f (0,1)) where f (x,y) = (y,x+y)

--zip function? zipWith is zip but choose operator
--map fib to head of list?
--bottom up vs top down recursion?
fib :: Int -> Int
fib 0 = 0
fib 1 = 1
fib n =
    fib(n-1) + fib(n-2)

fibN :: Int -> [Int]
fibN 0 = [1]
fibN 1 = [1, 1]
fibN n =
    --map fib [1..(n-1)] --works!
    take n (map fib [1..]) --infinite list attempt - works!
    --map is not efficient (exponential time, times each element)
    --what about zipwith (+) to combine calculated terms?
    -- head (fibN(n-1)) + head (fibN (n-2)) : [n]

--fibN n = 1 : 1 : zipWith (+) fib([1..n])


--Simple grading algorith to internalize the concept of guards.
score :: Int -> Char
score x
      | x >= 90 = 'A'
      | x >= 80 = 'B'
      | x >= 70 = 'C'
      | x >= 60 = 'D'
      | otherwise = 'F'

grade :: [Int] -> [Char]
grade xs =
  [ score x | x <- xs] --same as map score xs


factors :: Int -> [Int]
factors y =
    [xs | xs<-[1..y], y `mod` xs ==0]

--common :: [a] -> [a] -> Bool
--common x1 x2 = filter (`notElem` x2) x1

--coprime or relatively prime if they have no common factor
--greatest common denominator method?
--zipwith == ?
--coPrime :: (Eq Int) => Int -> Int -> Bool
coPrime :: Int -> Int -> Bool
coPrime x1 x2 =
    if length [x | x <- factors x1, y <- factors x2, x==y] > 1
      then False
      else True
--filter first list by second list?
    --if (length (filter (\x -> not (x == x2)) ) > 0) x2
      --then true
      --else (length (filter (\x -> not (x1 == x2)) ) > 0)
