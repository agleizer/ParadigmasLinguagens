/*
Crie pertence/2 que verifica se um elemento está em uma lista.
*/

pertence(X, [X|_]).
pertence(X, [_|T]) :- pertence(X, T).