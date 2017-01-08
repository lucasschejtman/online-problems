solution xs = foldl (\acc y -> if (y `elem` acc) then acc else acc ++ [y]) [] xs

main = do
  input <- getLine
  putStrLn $ solution input
