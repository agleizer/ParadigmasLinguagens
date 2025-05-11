{-
Universidade Presbiteriana Mackenzie
Paradigmas de Linguagens de Programação
Turma 05P

Alan Meniuk Gleizer
RA 10416804
03/03/2025
-}
{-
09. A raiz quadrada inteira de um número inteiro positivo n é o maior número inteiro cujo quadrado é menor ou igual a n.
Por exemplo, a raiz quadrada inteira de 15 é 3, e a raiz quadrada inteira de 16 é 4.
Defina uma função recursiva em Haskell para calcular a raiz quadrada inteira. 
-}

raizQuadradaInteira :: Int -> Int
raizQuadradaInteira num = buscaLinear 0
  where
    buscaLinear x = if (x*x > num) then x-1 else buscaLinear(x+1)

main :: IO ()
main = do
    putStrLn "Informe um numero:"
    a <- readLn

    putStrLn ("raiz inteira = " ++ show(raizQuadradaInteira a))