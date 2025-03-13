{-
Universidade Presbiteriana Mackenzie
Paradigmas de Linguagens de Programação
Turma 05P

Alan Meniuk Gleizer
RA 10416804
XX/XX/2025
-}

{-
Dada uma lista de inteiros, escreva uma função que devolve a média dos
elementos ímpares na lista.
-}

mediaImpares :: [Int] -> Float
mediaImpares lista = media
  where
    impares = [x | x <- lista, mod x 2 /= 0]
    somaImpares = sum impares
    media = fromIntegral (somaImpares) / fromIntegral (length impares)
    -- obs divisão / precisa de dois Floats ou Doubles....

main :: IO ()
main = do
  putStrLn "Digite uma lista:"
  lista <- readLn
  print (mediaImpares lista)