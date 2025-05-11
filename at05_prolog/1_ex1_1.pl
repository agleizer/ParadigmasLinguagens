/*
Universidade Presbiteriana Mackenzie
Paradigmas de Linguagens de Programação
Turma 05P

Alan Meniuk Gleizer
RA 10416804
03/03/2025
*/
/*
01. Escreva um função que recebe um número e verifica se ele é par.
A função retorna True caso o número seja par ou False caso contrário.
*/
/*
COMPILAR
ghc -o meu_programa main.hs

EXECUTAR
./meu_programa  # No Linux/macOS
meu_programa.exe  # No Windows
*/

ehPar(X) :- X mod 2 =:= 0.
