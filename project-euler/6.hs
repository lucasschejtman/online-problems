{-
	The sum of the squares of the first ten natural numbers is,	12 + 22 + ... + 102 = 385
	
	The square of the sum of the first ten natural numbers is, (1 + 2 + ... + 10)2 = 552 = 3025
	
	Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.

	Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.
-}

square :: Int -> Int
square n = n ^ 2

sumOfSquares :: [Int] -> Int
sumOfSquares xs = (sum . map (square)) xs

squareOfSum :: [Int] -> Int
squareOfSum xs = (square . sum) xs

solution :: [Int] -> Int
solution xs = squareOfSum xs - sumOfSquares xs

main = print(solution [1..100])