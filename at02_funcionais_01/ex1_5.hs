{-
05. Escreva uma função que receba 3 valores quaisquer e verifique se os valores podem ser considerados uma tripla de Pitágoras,
ou seja, a soma dos quadrados de dois números é igual ao quadrado terceiro.
Caso tenhamos uma tripla de Pitágoras a função devolve “eh uma tripla de Pitagoras” e caso não seja o a função devolve “nao eh tripla de Pitagoras”. Exemplos:
3 5 4 é uma tripla de Pitágoras
5 3 4 é uma tripla de Pitágoras
2 4 3 Não é tripla de Pitágoras
-}

verTriplaPitagoras :: Int -> Int -> Int -> Bool
verTriplaPitagoras num1 num2 num3 = (num1^2) + (num2^2) == (num3^2) || (num1^2) + (num3^2) == (num2^2) || (num2^2) + (num3^2) == (num1^2)

main :: IO ()
main = do
  putStrLn "Informe o primeiro numero:"
  numero1 <- readLn
  putStrLn "Informe o segundo numero:"
  numero2 <- readLn
  putStrLn "Informe o terceiro numero:"
  numero3 <- readLn

  if (verTriplaPitagoras numero1 numero2 numero3) then putStrLn ("eh uma tripla de Pitagoras") else putStrLn ("nao eh uma tripla de Pitagoras")