/*
Defina alguns fatos sobre parentesco (pai, mãe, irmão) e crie regras como avo/2, irmao/2, tio/2.
*/

pai(daniel, alan).
pai(daniel, bianca).
pai(daniel, maira).
pai(boris, daniel).
pai(boris, marcos).
pai(boris, gisela).
pai(efrahim, deborah).
pai(efrahim, eliane).
pai(jacob, efrahim).
pai(josek, gita).
pai(elias, rosa).
pai(iankel, boris).

mae(deborah, alan).
mae(deborah, bianca).
mae(deborah, maira).
mae(rosa, daniel).
mae(rosa, marcos).
mae(rosa, gisela).
mae(gita, deborah).
mae(gita, eliane).
mae(ita, efrahim).
mae(frajda, gita).
mae(sophia, rosa).
mae(feiga, boris).

% REGRAS

avo(X, Z) :- pai(X, Y), pai(Y, Z).
avo(X, Z) :- pai(X, Y), mae(Y, Z).
avo(X, Z) :- mae(X, Y), pai(Y, Z).
avo(X, Z) :- mae(X, Y), mae(Y, Z).

irmao(A, B) :-
    pai(P, A), pai(P, B), A \= B.

irmao(A, B) :-
    mae(M, A), mae(M, B), A \= B.

tio(A, C) :- (pai(P, C), irmao(A, P)).
tio(A, C) :- (mae(P, C), irmao(A, P)).
