% 1. pertence/2 — verifica se um elemento pertence a uma lista
pertence(X, [X|_]).
pertence(X, [_|T]) :- pertence(X, T).


% 2. tamanho/2 — retorna o tamanho de uma lista
tamanho([], 0).
tamanho([_|T], Tam) :-
    tamanho(T, Tam2),
    Tam is 1 + Tam2.


% 3. soma_lista/2 — soma os elementos de uma lista
soma_lista([], 0).
soma_lista([H|T], Soma) :-
    soma_lista(T, Soma2),
    Soma is H + Soma2.


% 4. maior_elemento/2 — retorna o maior elemento da lista
maior_elemento([X], X).
maior_elemento([H|T], Max) :-
    maior_elemento(T, MaxT),
    (H > MaxT -> Max = H ; Max = MaxT).


% 5. menor_elemento/2 — retorna o menor elemento da lista
menor_elemento([X], X).
menor_elemento([H|T], Min) :-
    menor_elemento(T, MinT),
    (H < MinT -> Min = H ; Min = MinT).


% 6. contar_ocorrencias/3 — conta quantas vezes um elemento aparece na lista



% 7. reverter/2 — inverte a lista



% 8. concatena/3 — concatena duas listas



% 9. remover/3 — remove todas as ocorrências de um elemento



% 10. remover_duplicados/2 — remove elementos repetidos da lista
remover_duplicados([], []).

% se H é duplicado
remover_duplicados([H|T], R) :-
    pertence(H, T),
    remover_duplicados(T, R).

% se não
remover_duplicados([H|T], [H|R]) :-
    \+ pertence(H, T),
    remover_duplicados(T, R).


% 11. ultimo/2 — retorna o último elemento da lista
ultimo([], []).
ultimo([X], X).
ultimo([_|T], Ultimo) :- ultimo(T, Ultimo2), Ultimo is Ultimo2.


% 12. inicial/2 — retorna a lista sem o último elemento
inicial([_], []).
inicial([H|T], [H|R]) :-
    inicial(T, R).


% 13. encontrar/3 — encontra o primeiro elemento que satisfaz uma condição, dada por outro predicado



% 14. intersecao/3 — elementos comuns entre duas listas



% 15. diferenca/3 — elementos da primeira lista que não estão na segunda



% mapear/3 — aplica um predicado a cada elemento da lista, versão personalizada do maplist



% filtrar/3 — filtra elementos da lista com base em um predicado, versão do include



% zip/3 — combina duas listas elemento a elemento em pares



% repete/3 — cria lista com o mesmo elemento repetido N vezes



% posicao/3 — retorna a posição de um elemento na lista, primeira ocorrência