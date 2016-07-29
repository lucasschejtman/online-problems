{- HackerRank signature -}
f :: Int -> [Int] -> [Int]
f n arr = concatMap (replicate n) arr

{- Changing HackeRank signature, could even drop the n param -}
{-
f :: Int -> [Int] -> [Int]
f n = concatMap (replicate n)
-}

-- This part handles the Input and Output and can be used as it is. Do not modify this part.
main :: IO ()
main = getContents >>=
       mapM_ print. (\(n:arr) -> f n arr). map read. words