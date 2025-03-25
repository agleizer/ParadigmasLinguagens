{-
Universidade Presbiteriana Mackenzie
Paradigmas de Linguagens de Programação
Turma 05P

Alan Meniuk Gleizer
RA 10416804
XX/XX/2025
-}
{-
Dada uma lista de inteiros e um elemento, escreva uma função que conta
quantas vezes o elemento aparece na lista (0 se nenhuma).
-}

contaElems :: [Int] -> Int -> Int
contaElems [] num = 0
-- contaElems [x] num = if x == num then 1 else 0  -- não precisa pois [x] == x:[] então x:xs funciona
contaElems (x:xs) num = if x == num then 1 + contaElems xs num else 0 + contaElems xs num

main :: IO () 
main = do
    let lista = [1,2,3,4,5,5,5,6,7,8,9]    
    print(show(contaElems lista 5))
    print(show(contaElems lista 25))