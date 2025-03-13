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

qtdPares :: [Int] -> Int
qtdPares lista = length [x | x <- lista, mod x 2 == 0]

main :: IO ()
main = do
  putStrLn "Digite uma lista:"
  lista <- readLn
  print (qtdPares lista)