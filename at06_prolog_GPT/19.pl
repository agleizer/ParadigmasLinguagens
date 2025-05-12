/*
Implemente ocorrencias/3 que conta quantas vezes um elemento aparece em uma lista.
*/

% Caso base: lista vazia → 0 ocorrências
ocorrencias(_, [], 0).

% Caso recursivo: elemento encontrado na cabeça
ocorrencias(X, [X|T], N) :-
    ocorrencias(X, T, N1),
    N is N1 + 1.

% Caso recursivo: cabeça diferente → ignora
ocorrencias(X, [_|T], N) :-
    ocorrencias(X, T, N).
