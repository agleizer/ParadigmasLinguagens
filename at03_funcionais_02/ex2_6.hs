{-
Universidade Presbiteriana Mackenzie
Paradigmas de Linguagens de Programação
Turma 05P

Alan Meniuk Gleizer
RA 10416804
XX/XX/2025
-}

{-
Dado uma lista de inteiros, escreva uma função que verifica se quantidade de
números pares é igual a quantidade de números ímpares, se quantidade for igual
a função retorna True e caso contrário False. Faça uma versão recursiva e uma
versão com geradores de listas.
-}

numIgualParesImpares :: [Int] -> Bool
numIgualParesImpares lista = igualdade
  where
    qtdPares = length [x | x <- lista, mod x 2 == 0]
    qtdImpares = length [x | x <- lista, mod x 2 /= 0]
    igualdade = qtdPares == qtdImpares

numIgualParesImparesRecursivo :: [Int] -> Bool
numIgualParesImparesRecursivo [] = True
numIgualParesImparesRecursivo (x:xs)
  | mod x 2 == 0 = 1 + numPares == numImpares
  | otherwise = numPares == 1 + numImpares
  where
    numPares = length [y | y <- xs, mod y 2 == 0]
    numImpares = length [y | y <- xs, mod y 2 /= 0]

main :: IO ()
main = do
  putStrLn "Digite uma lista:"
  lista <- readLn
  print (numIgualParesImpares lista)
