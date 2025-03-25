{-
Universidade Presbiteriana Mackenzie
Paradigmas de Linguagens de Programação
Turma 05P

Alan Meniuk Gleizer
RA 10416804
XX/XX/2025
-}
{-
Dada uma lista de inteiros, escreva uma função que devolve a quantidade de
elementos pares na lista.
-}

numElemsPares :: [Int] -> Int
numElemsPares lista = length [x | x <- lista, mod x 2 == 0]

main :: IO ()
main = do
    let lista = [7,2,3,4,5,6,7,8,9,10]
    print(show(numElemsPares lista))