/*
Implemente par/1 e use-o para filtrar os números pares de uma lista.
*/

% testa se um número é par
eh_par(X) :- X mod 2 =:= 0.

% caso base: lista vazia → resultado vazio
par([], []).

% caso recursivo: se o head é par, inclui na resposta
par([H|T], [H|R]) :-
    eh_par(H),
    par(T, R).

% caso recursivo: se o head não é par, ignora
par([H|T], R) :-
    \+ eh_par(H),
    par(T, R).
