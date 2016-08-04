fac n = product [1..n]

solve :: Double -> Double
solve a = foldl (\x y -> x + ((a ** y) / (fac y))) 1 [1..9]

main :: IO ()
main = getContents >>= mapM_ print. map solve. map (read::String->Double). tail. words
