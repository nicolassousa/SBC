:-[preprocess], dynamic(example/2),dynamic(data/1).

/*Nuno e Maria*/

attribute(faixa, [faixa16_35, faixa36_60, faixa61_mais]).
attribute(dieta, [baixo_calorias,nenhuma_dieta,vegan,vegetariano]).
attribute(preferencias_gastronomicas, [regional, internacional, oriental, fast_food]).
attribute(preco, [custo_beneficio, preco, qualidade]).
attribute(contexto, [amigos,romantico]).

%CSV

data([faixa16_35,vegetariano,custo_beneficio,amigos, 73]).
data([faixa36_60,vegan,qualidade,romantico,74]).
data([faixa16_35,baixo_calorias,preco,amigos, 75]).
data([faixa16_35,nenhuma_dieta,regional,qualidade,romantico,1]).
data([faixa16_35,nenhuma_dieta,regional,qualidade,amigos,2]).
data([faixa16_35,nenhuma_dieta,regional,custo_beneficio,romantico,3]).
data([faixa16_35,nenhuma_dieta,regional,custo_beneficio,amigos,4]).
data([faixa16_35,nenhuma_dieta,regional,preco,romantico,5]).
data([faixa16_35,nenhuma_dieta,regional,preco,amigos,6]).
data([faixa36_60,nenhuma_dieta,regional,qualidade,romantico,25]).
data([faixa36_60,nenhuma_dieta,regional,qualidade,amigos,26]).
data([faixa36_60,nenhuma_dieta,regional,custo_beneficio,romantico,27]).
data([faixa36_60,nenhuma_dieta,regional,custo_beneficio,amigos,28]).
data([faixa36_60,nenhuma_dieta,regional,preco,romantico,29]).
data([faixa36_60,nenhuma_dieta,regional,preco,amigos,30]).
data([faixa16_35,nenhuma_dieta,fast_food,qualidade,romantico,13]).
data([faixa16_35,nenhuma_dieta,fast_food,qualidade,amigos,14]).
data([faixa16_35,nenhuma_dieta,fast_food,custo_beneficio,romantico,15]).
data([faixa16_35,nenhuma_dieta,fast_food,custo_beneficio,amigos,16]).
data([faixa16_35,nenhuma_dieta,fast_food,preco,romantico,17]).
data([faixa16_35,nenhuma_dieta,fast_food,preco,amigos,18]).
data([faixa36_60,nenhuma_dieta,fast_food,qualidade,romantico,37]).
data([faixa36_60,nenhuma_dieta,fast_food,qualidade,amigos,38]).
data([faixa36_60,nenhuma_dieta,fast_food,custo_beneficio,romantico,39]).
data([faixa36_60,nenhuma_dieta,fast_food,custo_beneficio,amigos,40]).
data([faixa36_60,nenhuma_dieta,fast_food,preco,romantico,41]).
data([faixa36_60,nenhuma_dieta,fast_food,preco,amigos,42]).
data([faixa16_35,nenhuma_dieta,internacional,qualidade,romantico,19]).
data([faixa16_35,nenhuma_dieta,internacional,qualidade,amigos,20]).
data([faixa16_35,nenhuma_dieta,internacional,custo_beneficio,romantico,21]).
data([faixa16_35,nenhuma_dieta,internacional,custo_beneficio,amigos,22]).
data([faixa16_35,nenhuma_dieta,internacional,preco,romantico,23]).
data([faixa16_35,nenhuma_dieta,internacional,preco,amigos,24]).
data([faixa36_60,nenhuma_dieta,internacional,qualidade,romantico,43]).
data([faixa36_60,nenhuma_dieta,internacional,qualidade,amigos,44]).
data([faixa36_60,nenhuma_dieta,internacional,custo_beneficio,romantico,45]).
data([faixa36_60,nenhuma_dieta,internacional,custo_beneficio,amigos,46]).
data([faixa36_60,nenhuma_dieta,internacional,preco,romantico,47]).
data([faixa36_60,nenhuma_dieta,internacional,preco,amigos,48]).
data([faixa16_35,nenhuma_dieta,oriental,preco,amigos,12]).
data([faixa36_60,nenhuma_dieta,oriental,qualidade,amigos,7]).

%criacao novo file
createfile:- 
	preprocess, % build all examples
	tell('automatica2.pl'),
        listing(attribute/2),
        listing(example/2),
        told.