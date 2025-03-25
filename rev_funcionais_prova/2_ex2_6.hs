{-
Universidade Presbiteriana Mackenzie
Paradigmas de Linguagens de Programação
Turma 05P

Alan Meniuk Gleizer
RA 10416804
XX/XX/2025
-}
{-
Dado uma lista de inteiros, escreva uma função que verifica se quantidade de
números pares é igual a quantidade de números ímpares, se quantidade for igual
a função retorna True e caso contrário False. Faça uma versão recursiva e uma
versão com geradores de listas.
-}

qtdParesImpares :: [Int] -> Bool
qtdParesImpares lista = validacao
  where
    qtdPares = length [x | x <- lista, mod x 2 == 0]
    qtdImpares = length [x | x <- lista, mod x 2 /= 0]
    validacao = qtdPares == qtdImpares

qtdParesImparesRec :: [Int] -> Bool
qtdParesImparesRec lista = contarPares lista == contarImpares lista
  where
    contarPares [] = 0
    contarPares (x:xs) = if even x then 1 + contarPares xs else 0 + contarPares xs
    contarImpares [] = 0
    contarImpares (x:xs) = if odd x then 1 + contarImpares xs else 0 + contarImpares xs