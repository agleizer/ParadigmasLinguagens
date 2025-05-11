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

tamLista2 :: [Int] -> Int
tamLista2 [] = 0
tamLista2 (x:xs) = 1 + tamLista2 xs

main :: IO () 
main = do
    let lista = [1,2,3,4,5,6,7,8,9]    
    print(show(tamLista lista))
    print(show(tamLista2 lista))