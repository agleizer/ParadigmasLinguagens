/*
Universidade Presbiteriana Mackenzie
Paradigmas de Linguagens de Programação
Turma 05P

Alan Meniuk Gleizer
RA 10416804
XX/XX/2025
*/
/*
Escreva uma função que usa um gerador para verificar se um número é primo. A
função recebe como argumento um número natural maior que 1, se o número
informado é primo é devolvido True e caso contrário False.
*/
/*
verificaPrimo :: Int -> Bool
verificaPrimo num = resultado
  where
    listaDivisores = [x | x <- [2..num], mod num x == 0]
    resultado = if length listaDivisores > 1 then False else True
*/
