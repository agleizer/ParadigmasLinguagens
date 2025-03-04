{-
Universidade Presbiteriana Mackenzie
Paradigmas de Linguagens de Programação
Turma 05P

Alan Meniuk Gleizer
RA 10416804
03/03/2025
-}

{-
01. A sequência [0, 1, 1, 2, 3, 5, 8, 13, 21, ...] é conhecida como sequência ou série de Fibonacci, e tem aplicações teóricas e práticas, na medida em que alguns padrões na natureza parecem segui-la. Pode ser obtida através da recorrência abaixo: Escreva uma função em Haskell que calcula a sequência de Fibonacci.
Fib(𝑛) = 0 𝑠𝑒 𝑛 = 0
1 𝑠𝑒 𝑛 = 1
Fib(𝑛 − 1) + Fib(𝑛 − 2) 𝑠𝑒 𝑛 > 1
-}

fibonacci :: Int -> Int
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci num = fibonacci (num - 1) + fibonacci (num - 2)

main :: IO ()
main = do
    putStrLn "Informe o número:"
    numero <- readLn

    putStrLn ("Número " ++ show(numero) ++ " na sequencia fibonacci é " ++ show(fibonacci(numero)))