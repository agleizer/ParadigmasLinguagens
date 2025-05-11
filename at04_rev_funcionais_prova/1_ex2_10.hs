{-
Universidade Presbiteriana Mackenzie
Paradigmas de Linguagens de Programação
Turma 05P

Alan Meniuk Gleizer
RA 10416804
03/03/2025
-}
{-
10. Escreva uma função equivalente em Haskell para o código a função abaixo que está no paradigma imperativo:
int funcao(int n) {
    int x = 1;
    for (int i = 1; i <= n; i++) {
        x = x * 2;
    }
    return x;
}

Obs! Acho que essa função está errada.. n nunca é utilizado.. ajustei.....

-}

funcao :: Int -> Int
funcao 0 = 1
funcao n = 2 * funcao (n-1)