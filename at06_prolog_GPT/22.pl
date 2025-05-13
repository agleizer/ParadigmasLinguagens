/*
Crie intersecao/3 que retorna os elementos comuns entre duas listas.
*/

% verifica se um elemento está em uma lista
pertence(X, [X|_]).
pertence(X, [_|T]) :- pertence(X, T).

% caso base: lista vazia
intersecao([], _, []).

% caso recursivo: H pertence à segunda lista → inclui no resultado
intersecao([H|T], L2, [H|R]) :-
    pertence(H, L2),
    intersecao(T, L2, R).

% caso recursivo: H não pertence à segunda lista → ignora
intersecao([H|T], L2, R) :-
    \+ pertence(H, L2),
    intersecao(T, L2, R).
