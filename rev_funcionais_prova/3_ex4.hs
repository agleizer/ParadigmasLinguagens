{-
Escreva uma função aplicaDuasVezes :: (a -> a) -> a -> a usando lambda
-}

-- com nome
aplicaDuasVezes :: (a -> a) -> a -> a
aplicaDuasVezes f x = f (f x)

-- lambda
aplicaDuasVezes :: (a -> a) -> a -> a
aplicaDuasVezes = \f x -> f (f x)


main :: IO ()
main = do
  print (aplicaDuasVezes (+1) 3)   -- resultado: 5
  print (aplicaDuasVezes (*2) 4)   -- resultado: 16
