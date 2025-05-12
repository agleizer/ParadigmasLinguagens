/*
Implemente ultimo/2 que retorna o último elemento de uma lista.
*/
ultimo([X], X).
ultimo([_|T], X) :- ultimo(T, X).