/*
Universidade Presbiteriana Mackenzie
Paradigmas de Linguagens de Programação
Turma 05P

Alan Meniuk Gleizer
RA 10416804
03/03/2025
*/
/*
05. A ideia do algoritmo de Multiplicação Russa consiste em:
a. Escreve em um papel os números A e B, que se deseja multiplicar na parte superior das colunas.
b. Divida A por 2, sucessivamente, ignorando o resto até chegar à uma unidade, escrever os resultados da coluna A.
c. Multiplicar B por 2 tantas vezes quantas se tenha dividido A por 2, escrever os resultados sucessivos na coluna B.
d. Somar todos os números da coluna B que estejam ao lado de um número ímpar da coluna A.
Exemplo: 27×82 = 2214
A   B     Parcelas
27  82    82
13  164   164
6   328   -
3   656   656
1   1312  1312
Soma: 2214
Escreva uma função em Haskell que calcula a multiplicação russa de 2 entradas;
*/
