/*
Escreva um predicado reverter/2 que inverte uma lista.
*/

reverter([], []).
reverter([H|T], R) :-
    reverter(T, RT),
    append(RT, [H], R).
