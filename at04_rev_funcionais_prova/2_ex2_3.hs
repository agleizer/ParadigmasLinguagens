{-
Universidade Presbiteriana Mackenzie
Paradigmas de Linguagens de Programação
Turma 05P

Alan Meniuk Gleizer
RA 10416804
XX/XX/2025
-}
{-
Dada uma lista de inteiros, escreva uma função que devolve uma lista com todos
os elementos menores ou igual ao primeiro elemento da lista. (partição do
QuickSort).
-}

filtrarMenorIgualPrimeiro :: [Int] -> [Int]
filtrarMenorIgualPrimeiro (x:xs) = [y | y <- (x:xs), y <= x]

main :: IO ()
main = do
    let lista = [7,2,3,4,5,6,7,8,9,10]
    print(show(filtrarMenorIgualPrimeiro lista))