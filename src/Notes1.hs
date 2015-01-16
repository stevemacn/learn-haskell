{-# LANGUAGE ViewPatterns, TemplateHaskell #-}
{-# OPTIONS_GHC #-}

module Notes1 where

--Conditionals-------

--guarded functions
--is it possible to match multiple statements? 
--does this message signature make sense?
abs :: (Ord a) => (Num a) => a -> a
abs x 
    | x >= 0 = x
    | otherwise = -x

--conditional expressions can be nested
codify :: Int -> Int
codify n = if n <= 10 && n > 0 then -1
           else if n > -10 && n < 0 then 1
           else 0

--Curried functions-------

--incrementer l = (l !! 1) + 1

--(Int -> Int) may not be necessary for curried
added :: Int-> (Int -> Int)
added x y = x+y

--TCO recursion
--merge : x vs x : merge tail call vs non tail call

--Questions---------

--Int->Int->Int->Int ==? Int->(Int->(Int->Int))
--left vs right associated?

-- => vs -> (=> is constraint), (-> input or output)
-- polymorphic functions
-- polymorphic vs overloaded functions??
  --fst :: (a,b) -> a
  --head :: [a] -> a
  --take :: Int -> [a] -> [a]

--length' xs = sum [1 | _ <- xs]
--[x*2 | x <- [1..10], x*2 >= 12]

permutations :: String -> [String]
permutations "" = [""]
permutations [a] = [[a]]
permutations xs = 
  concatMap startWith [0..length xs - 1]
    where
        startWith i = map(xs !! i :) $ permutations (front ++ back)
              where (front, _:back) = splitAt i xs

--permute :: Eq a => [a] -> [[a]]
--permute [] = [[]]
--permute xs = concatMap (\x -> map (x:) $ permute $ delete x xs) xs
