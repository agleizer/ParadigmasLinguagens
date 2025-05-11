/*
05. Escreva uma função que receba 3 valores quaisquer e verifique se os valores podem ser considerados uma tripla de Pitágoras,
ou seja, a soma dos quadrados de dois números é igual ao quadrado terceiro.
Caso tenhamos uma tripla de Pitágoras a função devolve “eh uma tripla de Pitagoras” e caso não seja o a função devolve “nao eh tripla de Pitagoras”. Exemplos:
3 5 4 é uma tripla de Pitágoras
5 3 4 é uma tripla de Pitágoras
2 4 3 Não é tripla de Pitágoras
*/

triplaPitagoras(V1, V2, V3) :- V1*V1 + V2*V2 =:= V3*V3.
triplaPitagoras(V1, V2, V3) :- V3*V3 + V2*V2 =:= V1*V1.
triplaPitagoras(V1, V2, V3) :- V1*V1 + V3*V3 =:= V2*V2.

/*
triplaPitagoras(3,4,5).
triplaPitagoras(5,4,3).
triplaPitagoras(2,3,4).
*/