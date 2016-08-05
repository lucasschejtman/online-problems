{-
	The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
	Find the sum of all the primes below two million.
-}

primes :: [Int]
primes = primes' [2..] where primes' (n:ns) = n:(primes' $ filter (\ x -> rem x n /= 0) ns)

solution :: Int -> Int
solution lim = sum . takeWhile(< lim) $ primes

main = print(solution 2000000)
