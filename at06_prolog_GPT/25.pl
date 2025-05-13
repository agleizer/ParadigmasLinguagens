/*
    Escreva um predicado ordenada/1 que verifica se uma lista está ordenada.
*/

% Uma lista vazia ou com um único elemento está ordenada
ordenada([]).
ordenada([_]).
ordenada([A, B | T]) :-
    A =< B,
    ordenada([B | T]).
