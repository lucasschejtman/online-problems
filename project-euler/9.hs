{-
  A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
  a2 + b2 = c2

  For example, 32 + 42 = 9 + 16 = 25 = 52.

  There exists exactly one Pythagorean triplet for which a + b + c = 1000.
  Find the product abc.
-}

import Data.List
import Data.Maybe

floorSqrt :: Int -> Int
floorSqrt x = floor . sqrt $ (fromIntegral x :: Float)

calcTriangle :: (Int, Int) -> [Int]
calcTriangle (n, m) = [n^2 - m^2, 2*m*n, n^2 + m^2]

naturalPairs :: Int -> [(Int, Int)]
naturalPairs upper = [(x,y) | x <- [1..(floorSqrt upper)], y <- [1..x]]

solution :: Int -> Int
solution theSum = product . fromJust . find (\a -> sum a == 1000) . map (calcTriangle) $ naturalPairs theSum

main = print(solution 1000)
