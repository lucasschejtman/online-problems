headAndLength :: [Char] -> (Char, Int)
headAndLength xs = (head xs, length xs)

group' :: [Char] -> [(Char, Int)]
group' [] = []
group' (x:xs) = (headAndLength (x : takeWhile (== x) xs)): group' (dropWhile (== x) xs)

solution xs = concat . concatMap (\(a, b) -> if b > 1 then [[a], show b] else [[a]]) $ group' $ xs

main = do
  input <- getLine
  putStrLn $ solution input
