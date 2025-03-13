{-
Universidade Presbiteriana Mackenzie
Paradigmas de Linguagens de Programação
Turma 05P

Alan Meniuk Gleizer
RA 10416804
XX/XX/2025
-}

{-
Escreva uma função que usa um gerador para verificar se um número é primo. A
função recebe como argumento um número natural maior que 1, se o número
informado é primo é devolvido True e caso contrário False.
-}

ehPrimo :: Int -> Bool
ehPrimo n = length [x | x <- [2..n-1], mod n x == 0] == 0

main :: IO ()
main = do
  putStrLn "Digite um número:"
  num <- readLn
  print (ehPrimo num)
  
