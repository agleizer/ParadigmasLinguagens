{-
Universidade Presbiteriana Mackenzie
Paradigmas de Linguagens de Programação
Turma 05P

Alan Meniuk Gleizer
RA 10416804
XX/XX/2025
-}
{-
Dada uma lista de inteiros, escreva uma função que soma os elementos nas
posições pares da lista (o primeiro elemento esta na posição 0)
-}

somaIndicesPares :: [Int] -> Int
somaIndicesPares [] = 0
somaIndicesPares [x] = x
somaIndicesPares (x:y:xs) = x + somaIndicesPares xs

main :: IO () 
main = do
    let lista = [1,2,3,4,5,6,7,8,9]    
    print(show(somaIndicesPares lista))