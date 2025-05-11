/*
Universidade Presbiteriana Mackenzie
Paradigmas de Linguagens de Programação
Turma 05P

Alan Meniuk Gleizer
RA 10416804
03/03/2025
*/
/*
02. Usando a função par escreva a função impar que verifica se um número é impar utilizando a função par para calcular a resposta, o resultado da função par é negado com o operado not do Haskell.
*/

ehPar(X) :- X mod 2 =:= 0.
ehImpar(X) :- \+ ehPar(X).