{-
Universidade Presbiteriana Mackenzie
Paradigmas de Linguagens de Programação
Turma 05P

Alan Meniuk Gleizer
RA 10416804
XX/XX/2025
-}

{-
Dada uma lista de inteiros, escreva uma função retorna o maior elemento da
lista.
-}

maiorElemento :: [Int] -> Int
maiorElemento [] = 0
maiorElemento lista = if head lista > maiorElemento (tail lista) then head lista else maiorElemento (tail lista)

main :: IO ()
main = do
  putStrLn "Digite uma lista:"
  lista <- readLn
  let maior = maiorElemento lista
  putStrLn ("Maior elemento: " ++ show maior)
