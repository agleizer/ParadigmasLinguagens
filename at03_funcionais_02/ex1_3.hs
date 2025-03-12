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

somaIdxPares :: [Int] -> Int
somaIdxPares [] = 0
somaIdxPares lista = head lista + somaIdxPares (drop 2 lista)

main :: IO ()
main = do
  putStrLn "Digite uma lista:"
  input <- readLn
  let soma = somaIdxPares input
  putStrLn ("Soma dos indices pares = " ++ show(soma))