:-dynamic(fact/1),
[objetivo1].

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
		   write('|  Que metodo de procura deseja aplicar nesta entrega para o calculo do seu trajeto?                   |'), nl,
		   write('|                                                                                                      |'),nl,
		   write('|  1 - depthfirst                                                                                      |'), nl,
		   write('|  2 - iterativedeepening                                                                              |'), nl,
		   write('|  3 - breadthfirst                                                                                    |'), nl,
		   write('|______________________________________________________________________________________________________|'), nl,
			read(F1),
			write('\33\[2J'),
			(
			(F1 == 1), run(depthfirst);
            (F1 == 2), run(iterativedeepening);
			(F1 == 3), run(breadthfirst)).
