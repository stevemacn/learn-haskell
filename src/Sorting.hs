{-# LANGUAGE ViewPatterns, TemplateHaskell #-}
{-# OPTIONS_GHC #-}

module Sorting where

--Quicksort--
--Ord to indicate an ordered constraint on the return list. 
quicksort:: (Ord a) => [a] -> [a]
quicksort [] = []   --return empty list for empty input
quicksort [x] = [x] --terminate recursion one only one item is left
quicksort (x:xs) = 
        quicksort smaller ++ [x] ++ quicksort larger
        where --partition the rest of the list (list comprehensions)
            smaller = [a | a <- xs, a <= x] 
            larger = [b | b <- xs, b > x]

--Merge Sort--
--takes two ordered lists as inputs and returns an ordered list
merge :: (Ord a) => [a] -> [a] -> [a]
merge [] [] = [] 
merge [] xs = xs --end recursion when a list becomes empty
merge xs [] = xs
merge (a:as) (b:bs) --use a guarded function
   | a<=b = a:(merge as (b:bs))
   | otherwise = b:(merge (a:as) bs)

half :: [a] -> Int
half [] = 0
half xs = 
    (n `div` 2) --`` syntax allows functions to be used infix 
    where 
        n = length xs

splitHalves :: [a] -> ([a], [a]) 
splitHalves [] = ([], [])
splitHalves [x] = ([x],[])
splitHalves xs = splitAt (half xs) xs  

--using splitAt instead of this (or list comprehension or fold?)
--splitHalves xs = (take half xs, drop half xs)

mergesort :: (Ord a) => [a] -> [a]
mergesort [] = []
mergesort [x] = [x]
mergesort xs =
    merge (mergesort as) (mergesort bs)
    where
      (as, bs) = splitHalves xs 


