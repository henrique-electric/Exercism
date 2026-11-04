module CollatzConjecture (collatz) where

validateAndCount :: Integer -> Integer

validateAndCount 1 = 0
validateAndCount n
      | (mod n 2) == 0 = 1 + validateAndCount (div n 2)
      | otherwise = 1 + validateAndCount (3*n + 1)

collatz :: Integer -> Maybe Integer
collatz n
        | n <= 0 = Nothing
        | otherwise = Just (validateAndCount n)
