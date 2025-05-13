/*
Implemente todos_pares/1 que verifica se todos os elementos da lista são pares.
*/

eh_par(X) :- X mod 2 =:= 0.
todos_pares([]).
todos_pares([H|T]) :- eh_par(H), todos_pares(T).