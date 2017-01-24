import Control.Applicative
import Control.Monad
import System.IO

lastN :: Int -> [a] -> [a]
lastN n xs = drop (length xs - n) xs

solution xs
  | ((lastN 2 xs) == "AM") && ((take 2 xs) == "12") = "00" ++ (drop 2 $ take 8 xs)
  | ((lastN 2 xs) == "PM") && ((take 2 xs) /= "12") = (show ((read $ take 2 xs) + 12)) ++ (drop 2 $ take 8 xs)
  | otherwise = take 8 xs

main :: IO ()
main = do
    time <- getLine
    putStrLn $ solution time
