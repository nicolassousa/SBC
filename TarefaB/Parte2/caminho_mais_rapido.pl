/*Nicolas*/
% retorna o caminho mais rapido
% X - Origem
% Y - Destino
% C - Caminho a Percorrer
% D - Distancia

caminho_mais_rapido(X,Y) :- caminho(X,Y,C), 
    mais_rapido(X,Y,C).


% percorre todos os caminho possiveis e verifica se existe algum caminho com maior numero de passageiros que o atual, 
% se existir então dá falso, senão é verdadeiro e consequentemente o melhor caminho
mais_rapido(X,Y,C) :- distancia_total(C,D),!,
    \+ existe_mais_rapido(X,Y,D), write('Caminho mais rapido:'), write(C), nl, write('distancia:'), Dist is D + 1, write(Dist).


% verifica se existe algum caminho com menor tempo que o atual
existe_mais_rapido(X,Y,D) :- caminho(X,Y,C1),
    distancia_total(C1,D1), 
    D>D1.