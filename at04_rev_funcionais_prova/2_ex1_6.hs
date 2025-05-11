{-
Universidade Presbiteriana Mackenzie
Paradigmas de Linguagens de Programação
Turma 05P

Alan Meniuk Gleizer
RA 10416804
XX/XX/2025
-}
{-
Dada uma lista de inteiros, escreva uma função retorna o maior elemento da
lista.
-}

maiorElem :: [Int] -> Int
maiorElem [] = 0 -- não é o ideal né...
maiorElem [x] = x
maiorElem (x:y:xs) = if x > y then maiorElem (x:xs) else maiorElem (y:xs)

main :: IO () 
main = do
    let lista = [1,2,3,4,5,55,5,6,7,8,9]    
    print(show(maiorElem lista))