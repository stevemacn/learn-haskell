# learn-haskell

This repository holds some exercises that helped me get my head around haskell. Some of these are from 
"Functional Fridays" a learning group that [Sean Gallagher](http://github.com/SeanTater) and I started 
in Fall 2015.

## Running code

This runs the main.hs file located in "src/". It calls functions from each file and prints the output 
to demonstrate that they work. Ideally, this should be unit tests. 

    cabal run

## Problems solved by file

### Haskell
Reimplemented many of the standard functions such as:  

* init
* last
* first
* remove
* filter
* mergeconcat

### Sorting
* Mergesort
* Quicksort

### Notes1
Experimented with the following types of problems (very rough notes): 

* guards
* conditionals
* curried functions
* permuations

### Notes2
Solved the following:
* no common element between two lists (not union)
* fibonacci (recursive)
* fibonacci (lazy list)
* factors
* find coprimes

## Additional Resources

[http://learnyouahaskell.com/](http://learnyouahaskell.com/)   
[Sterling McCleod](http://github.com/sterlingm/haskell) (group member) - investigated some search algorithms in haskell.   
[Sean Gallagher](http://github.com/SeanTater) (cofounder) - our resident haskell expert   
[Clojure](http://github.com/stevemacn/learn-clojure) - some of the other work presented during Functional Fridays.

