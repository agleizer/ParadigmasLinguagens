{-
Universidade Presbiteriana Mackenzie
Paradigmas de Linguagens de Programação
Turma 05P

Alan Meniuk Gleizer
RA 10416804
03/03/2025
-}

{-
03. Dado um n, escreva uma função que devolva a diferença absoluta entre n e 21, exceto devolva o dobro da diferença absoluta se n for maior que 21.
-}

funcBizarra :: Int -> Int
funcBizarra num = if (num <= 21) then abs(num-21) else 2*abs(num-21)

funcBizarraGuarda :: Int -> Int
funcBizarraGuarda num
  | num <= 21 = abs(num-21)
  | otherwise = 2*abs(num-21)

main :: IO ()
main = do
    putStrLn "Informe um numero: "
    numero <- readLn
    
    print(show(funcBizarra numero))
    print(show(funcBizarraGuarda numero))