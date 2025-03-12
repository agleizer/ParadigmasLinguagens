{-
Universidade Presbiteriana Mackenzie
Paradigmas de Linguagens de Programação
Turma 05P

Alan Meniuk Gleizer
RA 10416804
XX/XX/2025
-}

{-
Dada uma lista de inteiros, escreva uma função que devolve o tamanho
da lista sem usar a função length.
-}

tamLista :: [Int] -> Int
tamLista [] = 0
tamLista lista = 1 + tamLista (tail lista)

main :: IO ()
main = do
  putStrLn "Digite uma lista:"
  input <- readLn
  let tam = tamLista input
  putStrLn ("Tamanho = " ++ show(tam))