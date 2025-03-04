{-
Universidade Presbiteriana Mackenzie
Paradigmas de Linguagens de Programação
Turma 05P

Alan Meniuk Gleizer
RA 10416804
03/03/2025
-}

{-
04. Imagine agora que a linguagem Haskell não possui o operador de potência (^ ou **), nem o operador de multiplicação (*), 
sabemos que a potência pode ser definida através de multiplicações e a multiplicação pode ser definida por somas sucessivas, assim:
x^y = x * x ...*x ou seja x multiplicado y vezes.
Para x=2 e y=5 teremos 2*2*2*2*2 que é igual a 32.
Escreva a função recursiva em Haskell que tem como entrada x e y, a função calcula e devolve a potência de x^y utilizando a regra acima, para calcular a multiplicação utilize a função implementada no exercício 2.
-}

multiplicacao :: Int -> Int -> Int
multiplicacao _ 0 = 0
multiplicacao a b
    | b > 0 = a + multiplicacao a (b - 1)  -- Caso positivo: soma sucessiva
    | b < 0 = - (multiplicacao a (-b))       -- Caso negativo: usa a recursão para inverter o sinal

potenciacao :: Int -> Int -> Int
potenciacao a 0 = 1
potenciacao a 1 = a
potenciacao a b = multiplicacao a (potenciacao a (b-1))


main :: IO ()
main = do
    putStrLn "Informe a:"
    a <- readLn

    putStrLn "Informe b:"
    b <- readLn

    putStrLn ("potencia = " ++ show(potenciacao a b))