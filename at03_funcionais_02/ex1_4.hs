{-
Universidade Presbiteriana Mackenzie
Paradigmas de Linguagens de Programação
Turma 05P

Alan Meniuk Gleizer
RA 10416804
XX/XX/2025
-}

{-
Dada uma lista de inteiros, escreva uma função que verifica se um
elemento está presente na lista (retorna True ou False).
-}

verificaElem :: [Int] -> Int -> Bool
verificaElem [] elemento = False
verificaElem lista elemento = if (head lista) == elemento then True else verificaElem (tail lista) elemento

main :: IO ()
main = do
  putStrLn "Digite uma lista:"
  lista <- readLn
  putStrLn "Digite um elemento:"
  elemento <- readLn
  let presente = verificaElem lista elemento
  putStrLn ("Elemento presente = " ++ show(presente))