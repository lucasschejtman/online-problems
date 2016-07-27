{-
	2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
	What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
-}

{-
	Lowest common multiple (LCM)
	LCM(a,b) = (a*b) / GCD(a,b)
-}

import Data.List

{-
	## First attempt, super slow ##
solution xs = find (\ x -> all (\ y -> mod x y == 0) xs) [(last xs)..]
-}

{-
	## Second attempt, fast ##
gcd' a 0 = a
gcd' a b = gcd' b (mod a b)
lcm' a b = div (a*b) (gcd' a b)
-}

{- built in lcm -}
solution xs = foldl lcm 1 xs

main = print(solution [1..20])