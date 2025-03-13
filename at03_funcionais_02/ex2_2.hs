{-
Universidade Presbiteriana Mackenzie
Paradigmas de Linguagens de Programação
Turma 05P

Alan Meniuk Gleizer
RA 10416804
XX/XX/2025
-}

{-
Dada uma lista de inteiros e um valor inteiro m, escreva uma função que devolve
uma lista com todos os elementos menores ou igual a m.
-}

menoresIguais :: [Int] -> Int -> [Int]
menoresIguais lista num = [x | x <- lista, x <= num]

main :: IO ()
main = do
  putStrLn "Digite uma lista:"
  lista <- readLn
  putStrLn "Digite um número:"
  num <- readLn
  print (menoresIguais lista num)