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

filtrarMenorIgual :: [Int] -> Int -> [Int]
filtrarMenorIgual lista num = [x | x <- lista, x <= num]

main :: IO ()
main = do
    print "Informe um numero"
    numero <- readLn
    let lista = [1,2,3,4,5,6,7,8,9,10]
    print(show(filtrarMenorIgual lista numero))
    print(show(filter (<= numero) lista)) -- usando filter pronto