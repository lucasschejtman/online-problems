import Control.Applicative
import Control.Monad
import System.IO

solution l g = length $ [x | x <- [0,l..g], x /= 0 && g `mod` x == 0]

main :: IO ()
main = do
    n_temp <- getLine
    let n_t = words n_temp
    let n = read $ n_t!!0 :: Int
    let m = read $ n_t!!1 :: Int
    a_temp <- getLine
    let a = map read $ words a_temp :: [Int]
    b_temp <- getLine
    let b = map read $ words b_temp :: [Int]
    let lcmA = foldl lcm (head a) (tail a)
    let gcdB = foldl gcd (head b) (tail b)
    print $ solution lcmA gcdB
