indexedList :: [a] -> [(a, Int)]
indexedList lst = zip lst [0..]

f :: [Int] -> [Int]
f = (map fst . filter (odd . snd) . indexedList)

main = do
   inputdata <- getContents
   mapM_ (putStrLn. show). f. map read. lines $ inputdata
