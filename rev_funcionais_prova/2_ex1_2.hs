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
somaPares (x:xs)
  | mod x 2 == 0 = x + somaPares xs
  | otherwise = 0 + somaPares xs

sominhaPares :: [Int] -> Int
sominhaPares lista = sum ( filter even lista)

main :: IO () 
main = do
    let lista = [1,2,3,4,5,6,7,8,9]    
    print(show(somaPares lista))
    print(show(sominhaPares lista))