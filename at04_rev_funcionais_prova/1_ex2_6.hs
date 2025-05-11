{-
Universidade Presbiteriana Mackenzie
Paradigmas de Linguagens de Programação
Turma 05P

Alan Meniuk Gleizer
RA 10416804
03/03/2025
-}
{-
06. A função abaixo calcula o máximo divisor comum dos inteiros positivos m e n usando o algoritmo de Euclides.

Escreva uma função em Haskell que faz o mesmo cálculo.
int mdc( int m, int n ){
    while( n != 0){
        r = m % n;
        m = n;
        n = r
    }
    return m;
}

-}

mdc :: Int -> Int -> Int
mdc m 0 = m
mdc m n = mdc n (mod m n)

main :: IO ()
main = do
    print "Informe m: "
    m <- readLn
    print "Informe n:"
    n <- readLn
    print(mdc m n)