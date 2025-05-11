{-
Escreva uma função contaPositivos :: [Int] -> Int que retorna quantos números positivos há na lista.
-}

contaPositivos :: [Int] -> Int
contaPositivos lista = length [x | x <- lista, x >= 0]

contaPositivosRec :: [Int] -> Int
contaPositivosRec [] = 0
contaPositivosRec (x:xs) = if x >= 0 then 1 + contaPositivosRec xs else contaPositivosRec xs

contaPositivosGuard :: [Int] -> Int
contaPositivosGuard [] = 0
contaPositivosGuard (x:xs)
  | x >= 0    = 1 + contaPositivosGuard xs
  | otherwise = contaPositivosGuard xs

contaPositivosFilter :: [Int] -> Int
contaPositivosFilter lista = length (filter (>= 0) lista)
