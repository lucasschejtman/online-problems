import Control.Applicative
import Control.Monad
import System.IO

diagonal :: [[Int]] -> [Int]
diagonal xs = zipWith (!!) xs [0..]

solution xs =
  abs .
  foldl (subtract) 0 .
  map (sum) $ [(diagonal xs)] ++ [(diagonal $ reverse xs)]

main :: IO ()
main = do
    n_temp <- getLine
    let n = read n_temp :: Int
    a_temp <- getMultipleLines n
    let a = map ( map ( read :: String -> Int ) . words ) a_temp
    print $ solution a

getMultipleLines :: Int -> IO [String]
getMultipleLines n
    | n <= 0 = return []
    | otherwise = do
        x <- getLine
        xs <- getMultipleLines (n-1)
        let ret = (x:xs)
        return ret
