/*
Faça um predicado que define se uma letra é vogal.
*/
% predicado que verifica se X pertence à lista
pertence(X, [X|_]).
pertence(X, [_|T]) :- pertence(X, T).

% predicado que verifica se A e vogal
eh_vogal(A) :- pertence(A, [a,e,i,o,u]).
