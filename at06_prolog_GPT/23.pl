/*
Implemente remover/3 que remove todas as ocorrências de um elemento de uma lista.
*/

remover([], _, []).
remover([H|T], X, R) :-
    H =:= X,
    remover(T, X, R).
remover([H|T], X, [H|R]) :-
    H \= X,
    remover(T, X, R).