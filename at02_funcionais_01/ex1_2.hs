{-
02. Usando a função par escreva a função impar que verifica se um número é impar utilizando a função par para calcular a resposta, o resultado da função par é negado com o operado not do Haskell.
-}

ehPar :: Int -> Bool
ehPar n = n `mod` 2 == 0

main :: IO ()
main = do
  putStrLn "Digite um número:"
  input <- getLine
  let numero = read input :: Int
  if not ehPar numero
    then putStrLn "O número é ímpar."
    else putStrLn "O número é par."
