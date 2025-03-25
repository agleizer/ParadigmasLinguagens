{-
Universidade Presbiteriana Mackenzie
Paradigmas de Linguagens de Programação
Turma 05P

Alan Meniuk Gleizer
RA 10416804
XX/XX/2025
-}
{-
Dada uma lista de inteiros, escreva uma função que verifica se um
elemento está presente na lista (retorna True ou False).
-}

verificaElem :: [Int] -> Int -> Bool
verificaElem [] _ = False
verificaElem (x:xs) num = if x == num then True else verificaElem xs num

main :: IO () 
main = do
    let lista = [1,2,3,4,5,6,7,8,9]    
    print(show(verificaElem lista 5))
    print(show(verificaElem lista 25))