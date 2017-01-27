import Control.Applicative
import Control.Monad
import System.IO

solution :: [Int] -> [Int] -> (Int, Int) -> (Int, Int)
solution [] _ tally = tally
solution (x:xs) (y:ys) tally
  | x > y     = solution xs ys (fst tally + 1, snd tally)
  | x < y     = solution xs ys (fst tally, snd tally + 1)
  | x == y    = solution xs ys tally
  | otherwise = tally

main :: IO ()
main = do
    a0_temp <- getLine
    let a0_t = map (read) $ words a0_temp
    b0_temp <- getLine
    let b0_t = map (read) $ words b0_temp
    let res = solution a0_t b0_t (0,0)
    putStrLn (show (fst res) ++ " " ++ show (snd res))
