{-
Universidade Presbiteriana Mackenzie
Paradigmas de Linguagens de Programação
Turma 05P

Alan Meniuk Gleizer
RA 10416804
03/03/2025
-}

{-
03. Imagine agora que a linguagem Haskell não possui o operador de potência (^ ou **), sabemos que a potência pode ser definida através de multiplicações, assim:
x^y = x * x ...*x ou seja x multiplicado y vezes.
Para x=2 e y=5 teremos 2*2*2*2*2 que é igual a 32.
Escreva a função recursiva em Haskell que tem como entrada x e y, a função calcula e devolve a potência de x^y utilizando a regra acima.
-}

potenciacao :: Int -> Int -> Int
potenciacao a 0 = 1
potenciacao a 1 = a
potenciacao a b = a * potenciacao a (b-1)

main :: IO ()
main = do
    putStrLn "Informe a:"
    a <- readLn

    putStrLn "Informe b:"
    b <- readLn

    putStrLn ("potenciacao = " ++ show(potenciacao a b))