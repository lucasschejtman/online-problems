import Control.Applicative
import Control.Monad
import System.IO

-- Haskel solution timesout, investigate

main :: IO ()
main = do
    n_temp <- getLine
    let n_t = words n_temp
    let n = read $ n_t!!0 :: Int
    let k = read $ n_t!!1 :: Int
    let q = read $ n_t!!2 :: Int
    a_temp <- getLine
    let a = map read $ words a_temp :: [Int]
    forM_ [1..q] $ \a0  -> do
        m_temp <- getLine
        let m = read m_temp :: Int
        putStrLn $ show $ (a !! (mod (n + m - k) n))

-- Python solution works fine
-- #!/bin/python3
--
-- import sys
--
-- n,k,q = input().strip().split(' ')
-- n,k,q = [int(n),int(k),int(q)]
-- a = [int(a_temp) for a_temp in input().strip().split(' ')]
-- for a0 in range(q):
--     m = int(input().strip())
--     print(a[(m-k)%n])
