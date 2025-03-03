{-
Universidade Presbiteriana Mackenzie
Paradigmas de Linguagens de Programação
Turma 05P

Alan Meniuk Gleizer
RA 10416804
03/03/2025
-}

{-
04. Escreva uma função que receba três valores para os lados de um triângulo. Na função verifique se os lados fornecidos realmente formam um triângulo, se formarem devolva tipo de triângulo temos: isósceles, escaleno ou equilátero.
-}

-- retorna 0 para inválido, 1 para equilatero, 2 para isosceles e 3 para escaleno
verificarTriangulo :: Int -> Int -> Int -> Int
verificarTriangulo a b c
  | not (a + b > c && a + c > b && b + c > a) = 0  -- inválido
  | a == b && b == c = 1  -- equilatero
  | a == b || a == c || b == c = 2  -- isosceles
  | otherwise = 3  -- escaleno

main :: IO ()
main = do
  putStrLn "Informe o primeiro lado:"
  lado1 <- readLn
  putStrLn "Informe o segundo lado:"
  lado2 <- readLn
  putStrLn "Informe o terceiro lado:"
  lado3 <- readLn

  let resultado = verificarTriangulo lado1 lado2 lado3
  let mensagem = case resultado of
        0 -> "Os valores informados não formam um triângulo."
        1 -> "Triângulo Equilátero."
        2 -> "Triângulo Isósceles."
        3 -> "Triângulo Escaleno."
        _ -> "Erro inesperado."

  putStrLn mensagem