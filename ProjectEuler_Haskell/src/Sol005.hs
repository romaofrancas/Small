module Sol005 (run)
  where
isDivAll :: Integer -> Integer -> Bool
isDivAll x n = and [(x `mod` i) == 0 | i <- [2..n]]

findMinDiv' :: Integer -> Integer -> Integer
findMinDiv' i n = if isDivAll i n
                    then i
                  else findMinDiv' (i+n) n

findMinDiv :: Integer -> Integer
findMinDiv n = findMinDiv' n n

run :: IO()
run = print $ findMinDiv 20
