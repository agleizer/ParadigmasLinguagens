/*
Universidade Presbiteriana Mackenzie
Paradigmas de Linguagens de Programação
Turma 05P

Alan Meniuk Gleizer
RA 10416804
03/03/2025
*/
/*
03. Dado um n, escreva uma função que devolva a diferença absoluta entre n e 21, exceto devolva o dobro da diferença absoluta se n for maior que 21.
*/

diferenca(N, Resultado) :-
    N =< 21,
    Resultado is abs(N - 21).

diferenca(N, Resultado) :-
    N > 21,
    Resultado is 2 * abs(N - 21).

/*
CONSULTAS

?- diferenca(19, R).
R = 2.

?- diferenca(25, R).
R = 8.

*/