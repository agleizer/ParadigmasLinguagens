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

menorIgualPrimeiro :: [Int] -> [Int]
menorIgualPrimeiro lista = [x | x <- lista, x <= (head lista)]

main :: IO ()
main = do
  putStrLn "Digite uma lista:"
  lista <- readLn
  print (menorIgualPrimeiro lista)