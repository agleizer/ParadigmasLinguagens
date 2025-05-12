/*
Verifique se uma pessoa é maior de idade. Defina fatos com idade/2 e uma regra maior_de_idade/1.
*/

idade(alan, 30).
idade(aya, 2).

maior_de_idade(Pessoa) :- idade(Pessoa, X), X >= 18.