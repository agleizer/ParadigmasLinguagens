{-
Universidade Presbiteriana Mackenzie
Paradigmas de Linguagens de Programação
Turma 05P

Alan Meniuk Gleizer
RA 10416804
03/03/2025
-}

{-
02. Imagine que a linguagem Haskell não possui mais o operador de multiplicação (*), por sorte os matemáticos definiram que a multiplicação pode ser definida através de somas sucessivas:
a*b = a + a ...+ a ou seja a somado b vezes.
Para a =4 e b =5 teremos 4+4+4+4+4, ou seja, 4 somado 5 vezes.
Escreva a função recursiva em Haskell que tem como entrada a e b, a função calcula e devolve a multiplicação de a*b utilizando a regra acima. 
-}

-- primeira versão, só inteiros positivos
multiplicacao :: Int -> Int -> Int
multiplicacao a 0 = 0
multiplicacao a 1 = a
multiplicacao a b = a + multiplicacao a (b-1)

-- com numeros negativos
multiplicacaoNeg :: Int -> Int -> Int
multiplicacaoNeg _ 0 = 0
multiplicacaoNeg a b
    | b > 0 = a + multiplicacaoNeg a (b - 1)  -- Caso positivo: soma sucessiva
    | b < 0 = - (multiplicacaoNeg a (-b))       -- Caso negativo: usa a recursão para inverter o sinal

main :: IO ()
main = do
    putStrLn "Informe a:"
    a <- readLn

    putStrLn "Informe b:"
    b <- readLn

    --putStrLn ("multiplicacao = " ++ show(multiplicacao a b))
    putStrLn ("multiplicacaoNeg = " ++ show(multiplicacaoNeg a b))