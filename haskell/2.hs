fibonacci = 1 : 1 : zipWith (+) fibonacci (tail fibonacci)

solution = sum . takeWhile (< 4000000) . filter even

main = print(solution fibonacci)