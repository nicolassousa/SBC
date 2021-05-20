:-[search, baseDados].
/*Nicolas*/
restaurant1(restaurante, [cliente1, cliente2, cliente3, cliente4, cliente5, cliente6, cliente7],[5,6,7,5,7,8,7]).

% -- Objetivo1:
initial(sol([E],[R])):- restaurant1(R,LE,_), random_member(E,LE).
goal(sol([E2],LC)):- last(LC,E2).

% viagem(Client1,Client2,distance):
viagem(X,Y,MIN):-(percurso(X,Y,MIN);percurso(Y,X,MIN)). % if percurso or symmetrical

% state transition rule s/2: s(Client1,Client2)
s(sol(LE,LC),sol(LE,LC2)):- last(LC,C), viagem(C,C2,_), \+ member(C2,LC), append(LC,[C2],LC2).


% evaluation function: (sum of distances for all pairs)
eval([_],0).
eval([Client1,Client2|R],DS):-
    viagem(Client1,Client2,D),
    eval([Client2|R],DR),
    DS is D+DR.

/*Henrique*/
run(Method):- search(Method,Par,S),nl,nl,
          write(' ______________________________________________________________________________________________________'), nl,
          write('|                                                                                                      |'), nl,
          write('|                                       Caminho Aconselhado                                            |'), nl,
          write('|                                                                                                      |'), nl,
          write('|______________________________________________________________________________________________________|'), nl,
          write('|'),nl,
	      write('|  Metodo:'),write(Method),writepar(Par),nl,
            last(S,Q),
            write('|'),nl,
            write('|  Clientes para entrega:'),escreverclientes(Q),nl,
            write('|'),nl,
            write('|  Solucao:'),escrevercaminho(Q),nl,
            write('|'),nl,
	        length(S,N),N1 is N-1,write('|  Caminho:'),write(N1),nl,
            write('|'),nl,
            write('|  Lucro:'), getLucro(Q), nl,
            write('|'),nl,
            write('|  Tempo:'), escrevertempo(Q).

escrevertempo(sol(_,LC)):- eval(LC,D), D2 is D+1,write(D2).

escreverclientes(sol(LE,_)):- write(LE).

escrevercaminho(sol(_,LC)):- write(LC).

/*Nicolas*/
% method to get client lucro:
getLucro(sol(LE,_)):- member(A,LE),
lucro(A,Y), write(Y).

% write parameter (if any):
writepar(X):- integer(X),write(' par:'),write(X). % write X
writepar(_). % do not write X

% execute 3 example searches:
q1:- run(depthfirst).
q2:- run(iterativedeepening).
q3:- run(breadthfirst).