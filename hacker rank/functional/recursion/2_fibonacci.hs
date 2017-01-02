module Main where

fibonacci = 1 : 1 : zipWith (+) fibonacci (tail fibonacci)

fib n = fibonacci!!(n-2)


-- This part is related to the Input/Output and can be used as it is
-- Do not modify it
main = do
    input <- getLine
    print . fib . (read :: String -> Int) $ input
