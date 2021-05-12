:-[preprocess], dynamic(example/2),dynamic(data/1).

attribute(faixa, [faixa16_35, faixa36_60, faixa61_mais]).
attribute(dieta, [baixo_calorias,nenhuma_dieta,vegan,vegetariano]).
attribute(preferencias_gastronomicas, [regional, internacional, oriental, fast_food]).
attribute(preco, [custo_beneficio, preco, qualidade]).
attribute(contexto, [amigos,romantico]).

%CSV
data([faixa16_35,nenhuma_dieta,regional,custo_beneficio,amigos,'Francesinha']).
data([faixa36_60,vegetariano,regional,custo_beneficio,romantico,'Salada de feijao preto']).
data([faixa16_35,nenhuma_dieta,fast_food,preco,amigos,'Pizza']).
data([faixa16_35,nenhuma_dieta,regional,preco,amigos,'Arroz de pato']).
data([faixa16_35,baixo_calorias,internacional,custo_beneficio,romantico,'Lasanha']).
data([faixa36_60,nenhuma_dieta,regional,qualidade,amigos,'Prego no pao']).
data([faixa61_mais,nenhuma_dieta,regional,qualidade,romantico,'Cozido a portuguesa']).
data([faixa36_60,vegan,oriental,qualidade,romantico,'Sushi']).
data([faixa61_mais,nenhuma_dieta,regional,qualidade,amigos,'Migas de bacalhau']).
data([faixa36_60,baixo_calorias,internacional,custo_beneficio,romantico,'Lasanha de Espinafres']).
data([faixa36_60,nenhuma_dieta,fast_food,custo_beneficio,amigos,'Mac']).
data([faixa16_35,nenhuma_dieta,fast_food,preco,amigos,'Francesinha']).
data([faixa16_35,vegan,regional,qualidade,romantico,'Empadao de legumes']).
data([faixa61_mais,baixo_calorias,regional,custo_beneficio,amigos,'Salada de frango']).
data([faixa36_60,nenhuma_dieta,fast_food,preco,romantico,'Francesinha']).
data([faixa61_mais,baixo_calorias,internacional,custo_beneficio,amigos,'salmao grelhado']).
data([faixa36_60,vegetariano,internacional,qualidade,romantico,'Massa com grao de bico']).
data([faixa16_35,nenhuma_dieta,internacional,qualidade,romantico,'Massa bolonhesa']).
data([faixa16_35,nenhuma_dieta,fast_food,preco,amigos,'Pizza']).
data([faixa36_60,nenhuma_dieta,regional,preco,romantico,'Lulas recheadas']).
data([faixa36_60,vegan,internacional,custo_beneficio,amigos,'chili de legumes']).
data([faixa16_35,nenhuma_dieta,regional,qualidade,amigos,'Arroz de cabidela']).
data([faixa16_35,nenhuma_dieta,regional,qualidade,romantico,'Bacalhau']).
data([faixa16_35,baixo_calorias,internacional,custo_beneficio,amigos,'Bacalhau Braga']).
data([faixa16_35,nenhuma_dieta,regional,custo_beneficio,amigos,'Cabidela']).
data([faixa16_35,baixo_calorias,regional,qualidade,amigos,'Arroz de polvo com filetes de polvo']).
data([faixa16_35,nenhuma_dieta,regional,custo_beneficio,amigos,'Cabrito assado']).
data([faixa16_35,baixo_calorias,regional,qualidade,romantico,'Salada de frango']).
data([faixa16_35,nenhuma_dieta,regional,qualidade,romantico,'Rojoes']).
data([faixa16_35,nenhuma_dieta,internacional,preco,amigos,'Almondegas']).
data([faixa16_35,nenhuma_dieta,oriental,qualidade,amigos,'Sushi']).
data([faixa16_35,baixo_calorias,regional,custo_beneficio,amigos,'Salada de lentilhas']).
data([faixa16_35,nenhuma_dieta,regional,qualidade,amigos,'Francesinha']).
data([faixa16_35,nenhuma_dieta,fast_food,custo_beneficio,amigos,'Pizza']).
data([faixa16_35,baixo_calorias,regional,custo_beneficio,amigos,'Carne de porca a alentejana']).
data([faixa16_35,vegetariano,regional,custo_beneficio,amigos,'Filetes de pescada']).
data([faixa16_35,nenhuma_dieta,regional,custo_beneficio,amigos,'Bacalhau com broa']).
data([faixa16_35,nenhuma_dieta,regional,qualidade,amigos,'Polvo a lagareiro']).
data([faixa16_35,nenhuma_dieta,regional,preco,romantico,'Lulas grelhadas']).
data([faixa16_35,nenhuma_dieta,regional,custo_beneficio,amigos,'Arroz de pato']).
data([faixa16_35,nenhuma_dieta,regional,qualidade,amigos,'Arroz de marisco']).
data([faixa16_35,nenhuma_dieta,regional,custo_beneficio,amigos,'Lasanha']).
data([faixa16_35,baixo_calorias,regional,preco,romantico,'Pica no chao']).
data([faixa16_35,nenhuma_dieta,regional,custo_beneficio,amigos,'Arroz de sangue']).
data([faixa16_35,nenhuma_dieta,regional,custo_beneficio,amigos,'Empadao']).
data([faixa16_35,nenhuma_dieta,regional,custo_beneficio,amigos,'Bacalhau Braga']).
data([faixa16_35,nenhuma_dieta,regional,custo_beneficio,romantico,'Panados com arroz']).
data([faixa16_35,nenhuma_dieta,regional,custo_beneficio,romantico,'Bacalhau']).
data([faixa16_35,nenhuma_dieta,regional,custo_beneficio,amigos,'Picanha grelhada a naco']).


%criacao novo file
createfile:- 
	preprocess, % build all examples
	tell('automatica2.pl'),
        listing(attribute/2),
        listing(example/2),
        told.