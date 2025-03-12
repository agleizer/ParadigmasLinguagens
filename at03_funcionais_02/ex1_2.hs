{-
Universidade Presbiteriana Mackenzie
Paradigmas de Linguagens de Programação
Turma 05P

Alan Meniuk Gleizer
RA 10416804
XX/XX/2025
-}

{-
Dada uma lista de inteiros, escreva uma função que calcula soma dos
números pares da lista.
-}

somaPares :: [Int] -> Int
somaPares [] = 0
somaPares lista
  | mod (head lista) 2 == 0 = (head lista) + somaPares (tail lista)
  | otherwise = 0 + somaPares (tail lista)

main :: IO ()
main = do
  putStrLn "Digite uma lista:"
  input <- readLn
  let soma = somaPares input
  putStrLn ("Soma dos pares = " ++ show(soma))