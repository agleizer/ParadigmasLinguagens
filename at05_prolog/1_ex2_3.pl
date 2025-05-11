/*
Universidade Presbiteriana Mackenzie
Paradigmas de Linguagens de Programação
Turma 05P

Alan Meniuk Gleizer
RA 10416804
03/03/2025
*/
/*
03. Imagine agora que a linguagem Haskell não possui o operador de potência (^ ou **), sabemos que a potência pode ser definida através de multiplicações, assim:
x^y = x * x ...*x ou seja x multiplicado y vezes.
Para x=2 e y=5 teremos 2*2*2*2*2 que é igual a 32.
Escreva a função recursiva em Haskell que tem como entrada x e y, a função calcula e devolve a potência de x^y utilizando a regra acima.
*/

mult(_, 0, 0).
mult(X, 1, X).
mult(X, Y, Res) :-
    Y > 1,
    Y1 is Y - 1,
    mult(X, Y1, Res1),
    Res is X + Res1.

pot(_, 0, 1).
pot(X, 1, X).
pot(X, Y, Res) :-
    Y > 1,
    Y1 is Y - 1,
    pot(X, Y1, Temp),
    mult(X, Temp, Res).