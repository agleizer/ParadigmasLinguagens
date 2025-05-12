/*
Crie maior_elemento/2 que retorna o maior elemento de uma lista.
*/

% Caso base: uma lista com um único elemento → ele é o maior
maior_elemento([X], X).

% Caso recursivo: compara o head com o maior da cauda
maior_elemento([H|T], Max) :-
    maior_elemento(T, MaxT),
    (H >= MaxT -> Max = H ; Max = MaxT).
