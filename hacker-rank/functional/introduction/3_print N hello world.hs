printN str n = mapM_ putStrLn . take n $ repeat(str)

main = do
   n <- readLn
   printN "Hello World" n
