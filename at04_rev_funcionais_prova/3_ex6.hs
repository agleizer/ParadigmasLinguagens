{-
Escreva intercala :: [a] -> [a] -> [a] que intercala dois vetores ([1,3,5] e [2,4,6] vira [1,2,3,4,5,6]).
-}

intercala :: [Int] -> [Int] -> [Int]
intercala [] _ = []
intercala _ [] = []
intercala (a:as) (b:bs) = [a] ++ [b] ++ intercala as bs
