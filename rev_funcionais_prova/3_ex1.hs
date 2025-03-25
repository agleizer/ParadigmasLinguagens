{-
Defina uma função dobroOuNada :: Int -> Int que retorna o dobro do número se ele for par, ou 0 se for ímpar — usando if, guard e case, cada um em uma versão diferente.
-}

dobroOuNadaIf :: Int -> Int
dobroOuNada num = if even num then 2 * num else 0

dobroOuNadaGuard :: Int -> Int
dobroOuNadaGuard num
  | even num = 2 * num
  | otherwise = 0

dobroOuNadaCase :: Int -> Int
dobroOuNadaCase num = case even num of
  True  -> 2 * num
  False -> 0