{-
03. Dado um n, escreva uma função que devolva a diferença absoluta entre n e 21, exceto devolva o dobro da diferença absoluta se n for maior que 21.
-}

-- usando abs
difAbs1 :: Int -> Int -> Int
difAbs1 num1 num2 = abs (num1 - num2)

-- usando if else
difAbs2 :: Int -> Int -> Int
difAbs2 num1 num2 = if (num1 > num2) then (num1-num2) else (num2-num1)

main :: IO ()
main = do
  putStrLn "Informe um número:"
  entrada <- getLine
  let numero = read entrada :: Int 

  putStrLn ("Testes iniciais")
  let saida1 = difAbs1 numero 21
  let saida2 = difAbs2 numero 21

  putStrLn ("Saidas\nfunc1 = " ++ show saida1 ++ " func2 = " ++ show saida2)
  putStrLn ("\nExecução exercicio")
  
  let saida3 = difAbs1 numero 21

  if (numero > 21) then putStrLn(show (2*saida3)) else putStrLn(show saida3)