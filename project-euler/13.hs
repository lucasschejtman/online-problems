main = do xs <- fmap (map read . lines) $ readFile "13.txt"
          print . take 10 . show . sum $ xs