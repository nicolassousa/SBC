:-dynamic(fact/1),
[viagem].

/*Nicolas*/

inicio:- write('\33\[2J'),write(' ______________________________________________________________________________________________________'), nl,
				write('|                                                                                                      |'), nl,			 
				write('|                           Aqui podera obter o trajeto a realizar para a entrega                      |'), nl,              
			    write('|                                      de uma refeicao a um cliente                                    |'), nl, 
				write('|                                                                                                      |'), nl,			 
				write('|______________________________________________________________________________________________________|'), nl,
				write('|   Menu:                                                                                              |'), nl,
				write('|                                                                                                      |'), nl,
				write('|   1- Iniciar                                                                                         |'), nl,
				write('|   2- Sair                                                                                            |'), nl,
				write('|______________________________________________________________________________________________________|'), nl,
				read(Y),
				write('\33\[2J'),
				seguirQuestionario(Y).

seguirQuestionario(1):- fase1.
seguirQuestionario(2):- write('Obrigado, volte sempre!'), halt.
seguirQuestionario(other):- write('Por favor, introduza uma opcao valida!'), inicio.


fase1:-	nl,write(' ______________________________________________________________________________________________________'), nl,
		   write('|  Para quantos clientes deseja fazer a entrega?                                                       |'), nl,
		   write('|                                                                                                      |'),nl,
		   write('|  1 - Um cliente                                                                                      |'), nl,
		   write('|  2 - Dois clientes                                                                                   |'), nl,
		   write('|______________________________________________________________________________________________________|'), nl,
			read(F1),
			write('\33\[2J'),
			(
			(F1 == 1), assert((initial(sol([E],[R])):- restaurant(R,LE,_), random_member(E,LE))), 
					   assert((goal(sol([E2],LC)):- last(LC,E2))), 
					   assert((getLucro(sol(LE,_)):- member(A,LE), lucro(A,Y), write(Y))), fase2;
            (F1 == 2), assert((initial(sol([E,E2],[R])):- restaurant(R,LE,_), random_member(E,LE), delete(LE,E,LE2),random_member(E2,LE2))), 
			           assert((goal(sol([E,E2],LC)):- (member(E,LC), last(LC,E2));(last(LC,E), member(E2,LC)))),
					   assert((getLucro(sol(LE,_)):- member(A,LE), last(LE,B), lucro(A,Y), lucro(B,Z), N is Y + Z, write(N))), fase2).

fase2:-	nl,write(' ______________________________________________________________________________________________________'), nl,
		   write('|  Que metodo de procura deseja aplicar nesta entrega para o calculo do seu trajeto?                   |'), nl,
		   write('|                                                                                                      |'),nl,
		   write('|  1 - depthfirst                                                                                      |'), nl,
		   write('|  2 - iterativedeepening                                                                              |'), nl,
		   write('|  3 - breadthfirst                                                                                    |'), nl,
		   write('|______________________________________________________________________________________________________|'), nl,
			read(F2),
			write('\33\[2J'),
			(
			(F2 == 1), run(depthfirst);
            (F2 == 2), run(iterativedeepening);
			(F2 == 3), run(breadthfirst)).
