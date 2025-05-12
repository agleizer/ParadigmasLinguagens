/*
Crie um predicado gosta/2 e amizade/2. João gosta de Maria, Maria gosta de Ana. João é amigo de Ana?
*/

gosta(alan, caio).
gosta(alan, gilberto).
gosta(caio, alan).
gosta(gilberto, alan).
gosta(alan, tiago).
gosta(murilo, alan).

amizade(A, B) :- gosta(A, B), gosta(B, A).