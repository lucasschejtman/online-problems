import Control.Applicative
import Control.Monad
import System.IO
import Data.List

main :: IO ()
main = do
    n_temp <- getLine
    let n_t = words n_temp
    let n = read $ n_t!!0 :: Int
    let k = read $ n_t!!1 :: Int
    a_temp <- getLine
    let a = map read $ words a_temp :: [Int]
    print $ length [(x, y) | x <- a, y <- a, x < y && (x + y) `mod` k == 0]


-- n, k = list(map(int, input().split()))
-- a = list(map(int, input().split()))
-- b = [[c, d] for x, c in enumerate(a) for y, d in enumerate(a) if x < y and (c + d) % k == 0]
-- print(len(b))
