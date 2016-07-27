{-
	A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
	Find the largest palindrome made from the product of two 3-digit numbers
-}

isPalindrome :: String -> Bool
isPalindrome chars = chars == reverse chars

solution :: [Int] -> Int
solution xs = maximum $ filter (isPalindrome . show) [x * y | x <- xs, y <- [x..(last xs)]]

main = print(solution [100..999])