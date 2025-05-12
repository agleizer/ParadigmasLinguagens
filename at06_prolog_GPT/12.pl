/*
Crie um predicado soma_lista/2 que soma os elementos de uma lista.
*/

soma_elementos([X], X).
soma_elementos([H|T], Res) :-
    soma_elementos(T, Res2),
    Res is H + Res2.