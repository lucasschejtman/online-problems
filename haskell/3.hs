{-
	The prime factors of 13195 are 5, 7, 13 and 29.
	What is the largest prime factor of the number 600851475143 ?
-}

potentialPrimes = 2 : [3,5..]

{- Need to optimize -}
primes :: [Int]
primes = primes' potentialPrimes where primes' (p:ps) = p : [x | x <- ps, mod x p /= 0]

solution :: Int -> [Int]
solution n = factors n primes
	where
		factors n (p:ps)
			| p*p > n 		= [n]
			| mod n p == 0 	= p : factors (div n p) ps
			| otherwise 	= factors n ps

main = print(last $ solution 600851475143)