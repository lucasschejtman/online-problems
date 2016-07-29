{-
	By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.
	What is the 10001st prime number?
-}

primes :: [Int]
primes = primes' [2..] where primes' (n:ns) = n:(primes' $ filter (\ x -> rem x n /= 0) ns)

solution :: Int -> Int
solution idx = primes !! idx

main = print(solution 10000)