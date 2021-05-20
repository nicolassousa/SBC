:-[search, baseDados].

restaurant2(restaurante, [cliente1, cliente2, cliente3, cliente4, cliente5],[5,6,7,5,7]).

% -- Objetivo2:
initial(sol([E,E2],[R])):- restaurant2(R,LE,_), random_member(E,LE), delete(LE,E,LE2),random_member(E2,LE2).
goal(sol([E,E2],LC)):- (member(E,LC), last(LC,E2));(last(LC,E), member(E2,LC)).


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

run(Method):- search(Method,Par,S),nl,nl,
          write(' ______________________________________________________________________________________________________'), nl,
          write('|                                                                                                      |'), nl,
          write('|                                        Caminho Aconselhado                                           |'), nl,
          write('|                                                                                                      |'), nl,
          write('|______________________________________________________________________________________________________|'), nl,
	      write('|'),nl,
          write('|  Metodo:'),write(Method),writepar(Par),nl,
          write('|'),nl,
            last(S,Q),
            write('|  Clientes para entrega:'),escreverclientes(Q),nl,
            write('|'),nl,
            write('|  Solucao:'),escrevercaminho(Q),nl,
            write('|'),nl,
	        length(S,N),N1 is N-1,write('|  Caminho:'),write(N1),nl,
            write('|'),nl,
            write('|  Lucro:'), getLucro(Q), nl,
            write('|'),nl,
            write('|  Tempo:'), escrevertempo(Q).

escrevertempo(sol(_,LC)):- eval(LC,D), D2 is D+2,write(D2).

escreverclientes(sol(LE,_)):- write(LE).

escrevercaminho(sol(_,LC)):- write(LC).

% method to get client lucro:
getLucro(sol(LE,_)):- member(A,LE),
last(LE,B),
lucro(A,Y),
lucro(B,Z),
N is Y + Z, write(N).


% write parameter (if any):
writepar(X):- integer(X),write(' par:'),write(X). % write X
writepar(_). % do not write X

% execute 3 example searches:
q1:- run(depthfirst).
q2:- run(iterativedeepening).
q3:- run(breadthfirst).