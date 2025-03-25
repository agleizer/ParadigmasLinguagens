{-
Escreva todosIguais :: Eq a => [a] -> Bool que verifica se todos os elementos da lista são iguais.
-}

todosIguais :: [Int] -> Bool
todosIguais [] = True
todosIguais [x] = True
todosIguais (x:y:xs) = if x == y then todosIguais (y:xs) else False

main :: IO ()
main = do
    let lista = [1,2,3,4,5,6]
    let lista2 = [2,2,2,2,2,2]

    print(todosIguais lista)
    print(todosIguais lista2)