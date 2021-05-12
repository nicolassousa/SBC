attribute(faixa, [faixa16_35, faixa36_60, faixa61_mais]).
attribute(dieta, [baixo_calorias, nenhuma_dieta, vegan, vegetariano]).
attribute(preferencias_gastronomicas, [regional, internacional, oriental, fast_food]).
attribute(preco, [custo_beneficio, preco, qualidade]).
attribute(contexto, [amigos, romantico]).

:- dynamic example/2.

example('Francesinha', [faixa=faixa16_35, dieta=nenhuma_dieta, preferencias_gastronomicas=regional, preco=custo_beneficio, contexto=amigos]).
example('Salada de feijao preto', [faixa=faixa36_60, dieta=vegetariano, preferencias_gastronomicas=regional, preco=custo_beneficio, contexto=romantico]).
example('Pizza', [faixa=faixa16_35, dieta=nenhuma_dieta, preferencias_gastronomicas=fast_food, preco=preco, contexto=amigos]).
example('Arroz de pato', [faixa=faixa16_35, dieta=nenhuma_dieta, preferencias_gastronomicas=regional, preco=preco, contexto=amigos]).
example('Lasanha', [faixa=faixa16_35, dieta=baixo_calorias, preferencias_gastronomicas=internacional, preco=custo_beneficio, contexto=romantico]).
example('Prego no pao', [faixa=faixa36_60, dieta=nenhuma_dieta, preferencias_gastronomicas=regional, preco=qualidade, contexto=amigos]).
example('Cozido a portuguesa', [faixa=faixa61_mais, dieta=nenhuma_dieta, preferencias_gastronomicas=regional, preco=qualidade, contexto=romantico]).
example('Sushi', [faixa=faixa36_60, dieta=vegan, preferencias_gastronomicas=oriental, preco=qualidade, contexto=romantico]).
example('Migas de bacalhau', [faixa=faixa61_mais, dieta=nenhuma_dieta, preferencias_gastronomicas=regional, preco=qualidade, contexto=amigos]).
example('Lasanha de Espinafres', [faixa=faixa36_60, dieta=baixo_calorias, preferencias_gastronomicas=internacional, preco=custo_beneficio, contexto=romantico]).
example('Mac', [faixa=faixa36_60, dieta=nenhuma_dieta, preferencias_gastronomicas=fast_food, preco=custo_beneficio, contexto=amigos]).
example('Francesinha', [faixa=faixa16_35, dieta=nenhuma_dieta, preferencias_gastronomicas=fast_food, preco=preco, contexto=amigos]).
example('Empadao de legumes', [faixa=faixa16_35, dieta=vegan, preferencias_gastronomicas=regional, preco=qualidade, contexto=romantico]).
example('Salada de frango', [faixa=faixa61_mais, dieta=baixo_calorias, preferencias_gastronomicas=regional, preco=custo_beneficio, contexto=amigos]).
example('Francesinha', [faixa=faixa36_60, dieta=nenhuma_dieta, preferencias_gastronomicas=fast_food, preco=preco, contexto=romantico]).
example('salmao grelhado', [faixa=faixa61_mais, dieta=baixo_calorias, preferencias_gastronomicas=internacional, preco=custo_beneficio, contexto=amigos]).
example('Massa com grao de bico', [faixa=faixa36_60, dieta=vegetariano, preferencias_gastronomicas=internacional, preco=qualidade, contexto=romantico]).
example('Massa bolonhesa', [faixa=faixa16_35, dieta=nenhuma_dieta, preferencias_gastronomicas=internacional, preco=qualidade, contexto=romantico]).
example('Pizza', [faixa=faixa16_35, dieta=nenhuma_dieta, preferencias_gastronomicas=fast_food, preco=preco, contexto=amigos]).
example('Lulas recheadas', [faixa=faixa36_60, dieta=nenhuma_dieta, preferencias_gastronomicas=regional, preco=preco, contexto=romantico]).
example('chili de legumes', [faixa=faixa36_60, dieta=vegan, preferencias_gastronomicas=internacional, preco=custo_beneficio, contexto=amigos]).
example('Arroz de cabidela', [faixa=faixa16_35, dieta=nenhuma_dieta, preferencias_gastronomicas=regional, preco=qualidade, contexto=amigos]).
example('Bacalhau', [faixa=faixa16_35, dieta=nenhuma_dieta, preferencias_gastronomicas=regional, preco=qualidade, contexto=romantico]).
example('Bacalhau Braga', [faixa=faixa16_35, dieta=baixo_calorias, preferencias_gastronomicas=internacional, preco=custo_beneficio, contexto=amigos]).
example('Cabidela', [faixa=faixa16_35, dieta=nenhuma_dieta, preferencias_gastronomicas=regional, preco=custo_beneficio, contexto=amigos]).
example('Arroz de polvo com filetes de polvo', [faixa=faixa16_35, dieta=baixo_calorias, preferencias_gastronomicas=regional, preco=qualidade, contexto=amigos]).
example('Cabrito assado', [faixa=faixa16_35, dieta=nenhuma_dieta, preferencias_gastronomicas=regional, preco=custo_beneficio, contexto=amigos]).
example('Salada de frango', [faixa=faixa16_35, dieta=baixo_calorias, preferencias_gastronomicas=regional, preco=qualidade, contexto=romantico]).
example('Rojoes', [faixa=faixa16_35, dieta=nenhuma_dieta, preferencias_gastronomicas=regional, preco=qualidade, contexto=romantico]).
example('Almondegas', [faixa=faixa16_35, dieta=nenhuma_dieta, preferencias_gastronomicas=internacional, preco=preco, contexto=amigos]).
example('Sushi', [faixa=faixa16_35, dieta=nenhuma_dieta, preferencias_gastronomicas=oriental, preco=qualidade, contexto=amigos]).
example('Salada de lentilhas', [faixa=faixa16_35, dieta=baixo_calorias, preferencias_gastronomicas=regional, preco=custo_beneficio, contexto=amigos]).
example('Francesinha', [faixa=faixa16_35, dieta=nenhuma_dieta, preferencias_gastronomicas=regional, preco=qualidade, contexto=amigos]).
example('Pizza', [faixa=faixa16_35, dieta=nenhuma_dieta, preferencias_gastronomicas=fast_food, preco=custo_beneficio, contexto=amigos]).
example('Carne de porca a alentejana', [faixa=faixa16_35, dieta=baixo_calorias, preferencias_gastronomicas=regional, preco=custo_beneficio, contexto=amigos]).
example('Filetes de pescada', [faixa=faixa16_35, dieta=vegetariano, preferencias_gastronomicas=regional, preco=custo_beneficio, contexto=amigos]).
example('Bacalhau com broa', [faixa=faixa16_35, dieta=nenhuma_dieta, preferencias_gastronomicas=regional, preco=custo_beneficio, contexto=amigos]).
example('Polvo a lagareiro', [faixa=faixa16_35, dieta=nenhuma_dieta, preferencias_gastronomicas=regional, preco=qualidade, contexto=amigos]).
example('Lulas grelhadas', [faixa=faixa16_35, dieta=nenhuma_dieta, preferencias_gastronomicas=regional, preco=preco, contexto=romantico]).
example('Arroz de pato', [faixa=faixa16_35, dieta=nenhuma_dieta, preferencias_gastronomicas=regional, preco=custo_beneficio, contexto=amigos]).
example('Arroz de marisco', [faixa=faixa16_35, dieta=nenhuma_dieta, preferencias_gastronomicas=regional, preco=qualidade, contexto=amigos]).
example('Lasanha', [faixa=faixa16_35, dieta=nenhuma_dieta, preferencias_gastronomicas=regional, preco=custo_beneficio, contexto=amigos]).
example('Pica no chao', [faixa=faixa16_35, dieta=baixo_calorias, preferencias_gastronomicas=regional, preco=preco, contexto=romantico]).
example('Arroz de sangue', [faixa=faixa16_35, dieta=nenhuma_dieta, preferencias_gastronomicas=regional, preco=custo_beneficio, contexto=amigos]).
example('Empadao', [faixa=faixa16_35, dieta=nenhuma_dieta, preferencias_gastronomicas=regional, preco=custo_beneficio, contexto=amigos]).
example('Bacalhau Braga', [faixa=faixa16_35, dieta=nenhuma_dieta, preferencias_gastronomicas=regional, preco=custo_beneficio, contexto=amigos]).
example('Panados com arroz', [faixa=faixa16_35, dieta=nenhuma_dieta, preferencias_gastronomicas=regional, preco=custo_beneficio, contexto=romantico]).
example('Bacalhau', [faixa=faixa16_35, dieta=nenhuma_dieta, preferencias_gastronomicas=regional, preco=custo_beneficio, contexto=romantico]).
example('Picanha grelhada a naco', [faixa=faixa16_35, dieta=nenhuma_dieta, preferencias_gastronomicas=regional, preco=custo_beneficio, contexto=amigos]).

