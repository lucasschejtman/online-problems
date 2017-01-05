merge :: [a] -> [a] -> [a]
merge xs [] = xs
merge [] ys = ys
merge (x:xs) (y:ys) = x : y : merge xs ys

main = do
    a <- getLine
    b <- getLine
    putStrLn $ merge a b
