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

contaElementos :: [Int] -> Int -> Int
contaElementos [] elemento = 0
contaElementos lista elemento = if (head lista) == elemento then 1 + contaElementos (tail lista) elemento else 0 + contaElementos (tail lista) elemento

main :: IO ()
main = do
  putStrLn "Digite uma lista:"
  lista <- readLn
  putStrLn "Digite um elemento:"
  elemento <- readLn
  let quant = contaElementos lista elemento
  putStrLn ("Elemento aparece " ++ show(quant) ++ " vezes")