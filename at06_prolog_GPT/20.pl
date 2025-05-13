/*
Faça duplica/2, que recebe uma lista e devolve outra onde cada elemento aparece duas vezes seguidas.
*/

% Caso base: lista vazia → resultado vazio
duplica([], []).

% Caso recursivo: duplica o head e aplica à cauda
duplica([H|T], [H, H | R]) :-
    duplica(T, R).