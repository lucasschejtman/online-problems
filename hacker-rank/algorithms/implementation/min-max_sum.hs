import Control.Applicative
import Control.Monad
import System.IO

solution xs = map ((-) (sum xs)) xs

main :: IO ()
main = do
    a0_temp <- getLine
    let a0_t = map (read) $ words a0_temp
    let res = solution a0_t
    putStrLn (show (minimum res) ++ " " ++ show (maximum res))
