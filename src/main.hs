{-# LANGUAGE ViewPatterns, TemplateHaskell #-}
{-# OPTIONS_GHC #-}

module Main where 
    import qualified Sorting as MySort 
    import qualified Haskell as Haskell
    import qualified Notes1 as EX1
    import qualified Notes2 as EX2

    main = do 
        putStrLn "Test quicksort"
        print $ MySort.quicksort [2, 3, 1.0, 5, 6, 4]
        print $ MySort.quicksort [2, 3, 1, 5, 6, 4]
        
        putStrLn "Test merge"
        print $ MySort.merge [2, 4, 7, 9] [4, 5, 6, 8]

        putStrLn "Test half - rounds down"
        print $ MySort.half [2, 4, 7, 9, 4, 5, 6, 8, 9, 11]

        putStrLn "split the halves"
        print $ MySort.splitHalves [2, 4, 7, 9, 5, 6, 8, 9, 11]

        putStrLn "mergesort"
        print $ MySort.mergesort [2, 7, 4, 5, 9, 2, 1, 6, 11]

        putStrLn "code : (-10 to 0 = -1) (0 to 10 = 1) else 0"
        print $ EX1.codify 4
        print $ EX1.codify (-4)
        print $ EX1.codify 0
        print $ EX1.codify 11

        putStrLn "grade raw scores"
        print $ EX2.grade [55, 70, 85, 90, 97]

        putStrLn "implement last from scratch"
        print $ Haskell.lastItem [1, 2, 3, 4, 5, 6]
        
        putStrLn "implement init from scratch"
        print $ Haskell.initList [1, 2, 3, 4, 5, 6]
        
        putStrLn "implement init from scratch"
        print $ Haskell.mconcat [[1,2,3],[4, 5, 6]]
        
        putStrLn "find uncommon values"
        print $ Haskell.mconcat [[1,2,3],[2, 4, 3, 5, 6]]
