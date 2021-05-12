:-dynamic(fact/1),
[viagem].

inicio:- nl,nl , 	write('********************************************************************************************************'), nl,
				write('**                                                                                                    **'), nl,			 
				write('**                 Aqui vai conseguir obter aconselhamento de um trajeto para a 		      **'), nl,              
				write('**  	                    entrega de uma refeicao a casa do seu cliente!                            **'), nl, 
				write('**                                                                                                    **'), nl,			 
				write('********************************************************************************************************'), nl,
				write('**   Menu:'), nl,
				write('**'), nl,
				write('**   1- Iniciar'), nl,
				write('**   2- Sair'), nl,nl,
				read(Y),
				seguirQuestionario(Y).

seguirQuestionario(1):- etapa1.
seguirQuestionario(2):- write('Até sempre!'), halt.
seguirQuestionario(other):- write('Introduza uma opcao valida por favor'), inicio.

etapa1:-	write('********************************************************************************************************'), nl,
			write('**  Para que cliente pretende realizar a entrega?'), nl,
			write('**'),nl,
			write('**  1 - Cliente 1'), nl,
			write('**  2 - Cliente 2'), nl,
			write('**  3 - Cliente 3'), nl,
			write('**  4 - Cliente 4'), nl,
			write('**  5 - Cliente 5'), nl,
			write('**  6 - Cliente 6'), nl,
			write('**  7 - Cliente 7'), nl,nl,
			read(E1),
			(
			(E1 == 1), assert(goal(cliente1)), etapa2;
            (E1 == 2), assert(goal(cliente2)), etapa2;
			(E1 == 3), assert(goal(cliente3)), etapa2;
			(E1 == 4), assert(goal(cliente4)), etapa2;
			(E1 == 5), assert(goal(cliente5)), etapa2;
			(E1 == 6), assert(goal(cliente6)), etapa2;
            (E1 == 7), assert(goal(cliente7)), etapa2).

etapa2:-	write('********************************************************************************************************'), nl,
			write('**  Que metodo de procura deseja utilizar?'), nl,
			write('**'),nl,
			write('**  1 - depthfirst'), nl,
			write('**  2 - iterativedeepening'), nl,
			write('**  3 - breadthfirst'), nl, nl,
			read(E2),
			(
			(E2 == 1), run(depthfirst);
            (E2 == 2), run(iterativedeepening);
			(E2 == 3), run(breadthfirst)).

