:-dynamic(fact/1),
[forward, baseDados, ifthen_rules].

inicio:- write('\33\[2J'), nl,nl ,write(' ______________________________________________________________________________________________________'), nl,
				write('|                                                                                                      |'), nl,			 
				write('|               Aqui vai conseguir encontrar os pratos que mais se aqeduam a sua dieta                 |'), nl,
				write('|   Vamos comecar por fazer algumas perguntas, num instante tera a indicacao do prato ideal para si!   |'), nl, 
				write('|                                                                                                      |'), nl,			 
				write('|______________________________________________________________________________________________________|'), nl,
				write('|   Menu:                                                                                              |'), nl,
				write('|                                                                                                      |'), nl,
				write('|   1- Iniciar                                                                                         |'), nl,
				write('|   2- Sair                                                                                            |'), nl,
				write('|______________________________________________________________________________________________________|'), nl,nl,
				read(Y),
				write('\33\[2J'),
				seguirQuestionario(Y).

seguirQuestionario(1):- etapa1.
seguirQuestionario(2):- write('Até sempre!'), halt.
seguirQuestionario(other):- write('Introduza uma opcao valida por favor'), inicio.

etapa1:-	write(' ______________________________________________________________________________________________________'), nl,
			write('|                                                                                                      |'), nl,
			write('|   Qual a sua faixa etaria?                                                                           |'), nl,
			write('|                                                                                                      |'),nl,
			write('|  1 - 16 aos 35                                                                                       |'), nl,
			write('|  2 - 36 aos 60                                                                                       |'), nl,
			write('|______________________________________________________________________________________________________|'), nl,nl,
			read(E1),
			 write('\33\[2J'),
			(
			(E1 == 1), assert(fact(faixa_faixa16_35)), etapa2;
            (E1 == 2), assert(fact(faixa_faixa36_60)), etapa2).

etapa2:-	write(' ______________________________________________________________________________________________________'), nl,
			write('|                                                                                                      |'), nl,
			write('|  Pratica algum tipo de dieta?                                                                        |'), nl,
			write('|                                                                                                      |'),nl,
			write('|  1 - Sim, vegetariana.                                                                               |'), nl,
			write('|  2 - Sim, vegan.                                                                                     |'), nl,
			write('|  3 - Sim, baixa em calorias.                                                                         |'), nl,
			write('|  4 - Nao pratico nenhum tipo de dieta.                                                               |'), nl,
			write('|______________________________________________________________________________________________________|'), nl,nl,
			read(E2),
			write('\33\[2J'),
			(
			(E2 == 1), assert(fact(dieta_vegetariano)), resultado;
            (E2 == 2), assert(fact(dieta_vegan)), resultado;
            (E2 == 3), assert(fact(dieta_baixo_calorias)), resultado;
			(E2 == 4), etapa3).

etapa3:-	write(' ______________________________________________________________________________________________________'), nl,
			write('|                                                                                                      |'), nl,
			write('| Qual destas preferencias gastronomicas se adequa melhor a si?                                        |'), nl,
			write('|                                                                                                      |'), nl,
			write('|  1 - Comida Regional.                                                                                |'), nl,
			write('|  2 - Comida Oriental.                                                                                |'), nl,
			write('|  3 - Fast Food.                                                                                      |'), nl,
			write('|  4 - Comida Internacional.                                                                           |'), nl,
			write('|______________________________________________________________________________________________________|'), nl,nl,
			read(E3),
			write('\33\[2J'),
			(
			(E3 == 1), assert(fact(preferencias_gastronomicas_regional)), etapa4;
            (E3 == 2), assert(fact(preferencias_gastronomicas_oriental)), etapa4;
            (E3 == 3), assert(fact(preferencias_gastronomicas_fast_food)), etapa4;
			(E3 == 4), assert(fact(preferencias_gastronomicas_internacional)), etapa4).

etapa4:-	write(' ______________________________________________________________________________________________________'), nl,
			write('|                                                                                                      |'), nl,
			write('| Considera-se uma pessoa que:                                                                         |'), nl,
			write('|                                                                                                      |'), nl,
			write('|  1 - Valoriza a qualidade em prol do preco.                                                          |'), nl,
			write('|  2 - Realiza analises custo-beneficio.                                                               |'), nl,
			write('|  3 - Atribui grande importancia ao preco.                                                            |'), nl,
			write('|______________________________________________________________________________________________________|'), nl,nl,
			read(E4),
			write('\33\[2J'),
			(
			(E4 == 1), assert(fact(preco_qualidade)), etapa5;
            (E4 == 2), assert(fact(preco_custo_beneficio)), etapa5;
            (E4 == 3), assert(fact(preco_preco)), etapa5).

etapa5:-	write(' ______________________________________________________________________________________________________'), nl,
			write('|                                                                                                      |'), nl,
			write('|  Qual destes contextos se enquadra melhor na sua situacao?                                           |'), nl,
			write('|                                                                                                      |'), nl,
			write('|  1 - Jantar com amigos                                                                               |'), nl,
			write('|  2 - Jantar romantico                                                                                |'), nl,
			write('|______________________________________________________________________________________________________|'), nl,nl,
			read(E5),
			write('\33\[2J'),
			(
			(E5 == 1), assert(fact(contexto_amigos)), resultado;
            (E5 == 2), assert(fact(contexto_romantico)), resultado).
			
			
resultado :- 	write(' ______________________________________________________________________________________________________'), nl,
				write('|                                                                                                      |'), nl,			 
				write('|                                       Pratos Recomendados                                            |'), nl, 
				write('|                                                                                                      |'), nl,			 
				write('|______________________________________________________________________________________________________|'),
				procura.

resultadoprocura(P):-nl,nl,
					perfil(P),nl,nl.
					

