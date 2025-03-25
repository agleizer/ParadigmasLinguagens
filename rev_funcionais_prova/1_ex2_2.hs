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

multiplicacaoPrimitiva :: Int -> Int -> Int
multiplicacaoPrimitiva num 0 = 0
multiplicacaoPrimitiva num 1 = num
multiplicacaoPrimitiva num fator = num + multiplicacaoPrimitiva num (fator - 1)

-- para permitir alguns numeros negativos
multiplicacaoPrimitiva2 :: Int -> Int -> Int
multiplicacaoPrimitiva2 num 0 = 0
multiplicacaoPrimitiva2 num 1 = num
multiplicacaoPrimitiva2 num fator
  | num > 0 = num + multiplicacaoPrimitiva2 num (fator - 1)
  | num < 0 = - ( abs(num) + multiplicacaoPrimitiva2 (abs num) (fator - 1))

-- final, permite qualquer numero negativo
multiplicacaoPrimitiva3 :: Int -> Int -> Int
multiplicacaoPrimitiva3 num1 num2 =
  let
    a = abs num1
    b = abs num2
    resultado = multiplicacaoPrimitiva a b
    sinal = if xor (num1 < 0) (num2 < 0) then -1 else 1
  in
    sinal * resultado

-- xor para sinais diferentes
xor :: Bool -> Bool -> Bool
xor a b = (a || b) && not (a && b)

main :: IO () 
main = do 
    print "Informe um numero: "
    numero1 <- readLn
    print "Informe outro numero: "
    numero2 <- readLn

    -- print(show(multiplicacaoPrimitiva numero1 numero2))
    print(show(multiplicacaoPrimitiva3 numero1 numero2))
