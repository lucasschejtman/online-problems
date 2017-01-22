import Control.Applicative
import Control.Monad
import System.IO

staircase :: Int -> Int -> [Char]
staircase step width = replicate (width - step) ' ' ++ replicate (step) '#'

main :: IO ()
main = do
    n_temp <- getLine
    let n = read n_temp :: Int
    mapM_ (putStrLn) $ [staircase x n | x <- [1..n]]
