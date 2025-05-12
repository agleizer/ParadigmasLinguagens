/*
Crie uma base de fatos animal/2 (animal, tipo) e uma regra mamifero/1.
*/

% Fatos
animal(humano, mamifero).
animal(gato, mamifero).
animal(cacatua, passaro).
animal(lagarto, reptil).

% Regra
mamifero(Animal) :-
    animal(Animal, mamifero).