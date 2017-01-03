fac :: Int -> Int
fac = product . flip take [1..]

coordinate :: Int -> Int -> Int
coordinate n r = fac(n) `div` (fac(r) * fac(n - r))

triangle :: [[Int]]
triangle = [ [ coordinate n r | r <- [0..n] ] | n <- [0..] ]

two :: [Int] -> [String]
two m = map (show) m

three :: [[Int]] -> [[String]]
three m = map (two) m

main = do
   m <- readLn :: IO Int
   mapM_ (putStrLn . unwords) $ map (map show) $ (take m $ triangle)
