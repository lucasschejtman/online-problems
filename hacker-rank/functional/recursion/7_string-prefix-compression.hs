--prefix' :: [Char] -> [Char] -> [Char]
prefix' _ [] = []
prefix' [] _ = []
prefix' (x:xs) (y:ys)
  | (==) x y = x: prefix' xs ys
  | otherwise = []

--dropPfx' :: [Char] -> [Char] -> [Char]
dropPfx' xs [] = xs
dropPfx' [] _ = []
dropPfx' (x:xs) (y:ys)
  | (==) x y = dropPfx' xs ys
  | otherwise = x:xs

solution a b = do
  pfx <- prefix' a b
  -- a' <- dropPfx' a pfx
  a' <- dropPfx' a b
  return a'

main = do
    a <- getLine
    b <- getLine
    print $ solution a b
    --map putStrLn $ prefix' a b
