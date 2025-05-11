{-
Universidade Presbiteriana Mackenzie
Paradigmas de Linguagens de Programação
Turma 05P

Alan Meniuk Gleizer
RA 10416804
03/03/2025
-}
{-
07. A expressão abaixo converge para a raiz quadrada de A, sendo A>0.

x_n = 0.5 * (x_n_1 + (A / x_n_1));

ou 

<< conversão para C feita com ajuda de IA!>>

double calcular_xn(double A, int n) {
    double x = 1.0; // x_0 = 1
    for (int i = 1; i <= n; i++) {
        x = 0.5 * (x + A / x);
    }
    return x;
}

Para começar, tente entender o funcionamento do algoritmo abaixo para o cálculo da raiz quadrada de A=2 com 5 iterações.
Sugestão: faça um teste de mesa. Entendido o algoritmo escreva uma função em Haskell que calcule a raiz quadrada de um número usando o algoritmo
definido pela expressão acima, considere que sua função terá o número de “iterações” (chamadas recursivas) informado por parâmetro. 
-}
