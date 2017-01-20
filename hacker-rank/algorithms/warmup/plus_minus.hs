import Control.Applicative
import Control.Monad
import System.IO
import Data.List
import Text.Printf

solution :: [Float] -> Float -> (Float -> Bool) -> Float
solution xs n p = fromIntegral (length (filter p xs)) / n

main :: IO ()
main = do
    n_temp <- getLine
    let n = read n_temp :: Float
    arr_temp <- getLine
    let arr = map read $ words arr_temp :: [Float]
    mapM_ putStrLn $ map (printf "%.6f") $ map (solution arr n) [(>0), (<0), (==0)]
