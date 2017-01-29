import Control.Applicative
import Control.Monad
import System.IO

main :: IO ()
main = do
    h_temp <- getLine
    let h = map read $ words h_temp :: [Int]
    word <- getLine
    let heights = zipWith (\x y -> (x,y)) ['a'..'z'] h
    let maxH = maximum . map (snd) . filter (flip elem word . fst) $ heights
    putStrLn $ show (length word * maxH)
