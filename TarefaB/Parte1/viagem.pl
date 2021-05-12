:-[search, baseDados].

initial(restaurante). % ponto de partida

%viagem(cliente1, cliente2, DistanciaEmMin)
viagem(X,Y,Min):-(percurso(X,Y,Min);percurso(Y,X,Min)).

% state transition rule s/2: s(City1,City2)
s(N1,N2):- viagem(N1,N2,_). % link s(O,D,Dist) with s(O,D)

% evaluation function: (sum of distances for all pairs)
eval([_],0).
eval([City1,City2|R],DS):- 
	viagem(City1,City2,D),
	eval([City2|R],DR),
	DS is D+DR.

% execute and show a search method result:
run(Method):- search(Method,Par,S),nl,nl,
          write('********************************************************************************************************'), nl,
          write('**                                                                                                    **'), nl,
          write('**                                      Caminho Recomendado                                           **'), nl,
          write('**                                                                                                    **'), nl,
          write('********************************************************************************************************'), nl,
	      write('**  metodo:'),write(Method),writepar(Par),nl,
              write('**  solucao:'),write(S),nl,
	      length(S,N),N1 is N-1,write('**  caminho:'),write(N1),nl,
            write('**  lucro:'),writelucro,nl,
            eval(S,D), D1 is D+1 ,write('**  tempo:'),write(D1).


%Obtem lucro cliente
writelucro:- goal(X), lucro(X, N), write(N).
% write parameter (if any):
writepar(X):- integer(X),write(' par:'),write(X). % write X
writepar(_). % do not write X

% execute 3 example searches:
q1:- run(depthfirst).
q2:- run(iterativedeepening).
q3:- run(breadthfirst).