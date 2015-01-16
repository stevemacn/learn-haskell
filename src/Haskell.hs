{-# LANGUAGE ViewPatterns, TemplateHaskell #-}
{-# OPTIONS_GHC #-}

module Haskell where

--Reimplementing many of standard included functions in haskell

--Haskell: first
first :: [a] -> a
first (x:xs) = x
  --first xs = head xs   

--Haskell: last
lastItem :: [a] -> a
lastItem [x] = x
lastItem xs = xs !! (length xs - 1) 
  -- !! is the nth operator
  -- lastItem (x:xs) = lastItem(xs) 
  -- lastItem xs = first (reverse xs)

--Haskell: init
initList :: [a] -> [a]
initList [x] = [x]
initList xs = take (length xs - 1) xs
  --initList xs = reverse $ tail $ reverse xs
  --initList xs = reverse (tail (reverse xs))
  --parens to indicate order vs forced eval

--MergeConcat
mconcat :: [[a]] -> [a]
mconcat xss = [x | xs <- xss, x<-xs]


--Haskell: myfilter
myFilter :: Eq a => a -> [a] -> [a] --Eq implements equality
myFilter query =
    filter (\x -> not (x == query))  --curried function

--Remove
deleteItem :: Eq a => a -> [a] -> [a]
deleteItem _ [] = []
deleteItem query (mat:rest) =
    if (query == mat)
        then deleteItem query rest
        else mat : deleteItem  query rest

  --first attempt - doesn't work
  --deleteItem :: a -> [a] -> [a]
  --deleteItem _ [] = []
  --deleteItem x xs =
  --    if (head xs == x)
  --        then []++deleteItem(x tail xs)
  --        else [x]++deleteItem(x tail xs)

