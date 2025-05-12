/*
Implemente um predicado tamanho/2 que retorna o tamanho de uma lista.
*/

tamanho([], 0).
tamanho([_|T], N) :-
    tamanho(T, N1),
    N is N1 + 1.