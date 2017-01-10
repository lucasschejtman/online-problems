import Control.Monad

chunksOf' :: Int -> [a] -> [[a]] 
chunksOf' _ [] = []
chunksOf' n xs = first : chunksOf' n rest where (first, rest) = splitAt n xs

permute :: String -> [Char]
permute s = concat . map (reverse) . chunksOf' 2 $ s

solution :: [String] -> [String]
solution xs = map (permute) $ xs

main = do
  input <- getLine
  inputs <- replicateM (read input) getLine
  mapM_ putStrLn $ solution inputs
