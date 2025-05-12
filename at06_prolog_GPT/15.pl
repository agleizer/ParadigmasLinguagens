/*
Crie concatena/3 para concatenar duas listas.
*/

concatena([], L, L).
concatena([H|T], L2, [H|R]) :-
    concatena(T, L2, R).
