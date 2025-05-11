{-
Use filter para reter apenas strings com mais de 3 letras em uma lista.
-}

stringsMaiores3 :: [String] -> [String]
stringsMaiores3 lista = filter maior3 lista
  where
    maior3 str = if (length str) > 3 then True else False

main :: IO ()
main = do
    let lista = ["teste", "vamos", "ou", "a", "aaaa", "aaa"]

    print(stringsMaiores3 lista)