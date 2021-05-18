attribute(faixa, [faixa16_35, faixa36_60, faixa61_mais]).
attribute(dieta, [baixo_calorias, nenhuma_dieta, vegan, vegetariano]).
attribute(preferencias_gastronomicas, [regional, internacional, oriental, fast_food]).
attribute(preco, [custo_beneficio, preco, qualidade]).
attribute(contexto, [amigos, romantico]).

:- dynamic example/2.

example(73, [faixa=faixa16_35, dieta=vegetariano, preferencias_gastronomicas=custo_beneficio, preco=amigos]).
example(74, [faixa=faixa36_60, dieta=vegan, preferencias_gastronomicas=qualidade, preco=romantico]).
example(75, [faixa=faixa16_35, dieta=baixo_calorias, preferencias_gastronomicas=preco, preco=amigos]).
example(1, [faixa=faixa16_35, dieta=nenhuma_dieta, preferencias_gastronomicas=regional, preco=qualidade, contexto=romantico]).
example(2, [faixa=faixa16_35, dieta=nenhuma_dieta, preferencias_gastronomicas=regional, preco=qualidade, contexto=amigos]).
example(3, [faixa=faixa16_35, dieta=nenhuma_dieta, preferencias_gastronomicas=regional, preco=custo_beneficio, contexto=romantico]).
example(4, [faixa=faixa16_35, dieta=nenhuma_dieta, preferencias_gastronomicas=regional, preco=custo_beneficio, contexto=amigos]).
example(5, [faixa=faixa16_35, dieta=nenhuma_dieta, preferencias_gastronomicas=regional, preco=preco, contexto=romantico]).
example(6, [faixa=faixa16_35, dieta=nenhuma_dieta, preferencias_gastronomicas=regional, preco=preco, contexto=amigos]).
example(25, [faixa=faixa36_60, dieta=nenhuma_dieta, preferencias_gastronomicas=regional, preco=qualidade, contexto=romantico]).
example(26, [faixa=faixa36_60, dieta=nenhuma_dieta, preferencias_gastronomicas=regional, preco=qualidade, contexto=amigos]).
example(27, [faixa=faixa36_60, dieta=nenhuma_dieta, preferencias_gastronomicas=regional, preco=custo_beneficio, contexto=romantico]).
example(28, [faixa=faixa36_60, dieta=nenhuma_dieta, preferencias_gastronomicas=regional, preco=custo_beneficio, contexto=amigos]).
example(29, [faixa=faixa36_60, dieta=nenhuma_dieta, preferencias_gastronomicas=regional, preco=preco, contexto=romantico]).
example(30, [faixa=faixa36_60, dieta=nenhuma_dieta, preferencias_gastronomicas=regional, preco=preco, contexto=amigos]).
example(13, [faixa=faixa16_35, dieta=nenhuma_dieta, preferencias_gastronomicas=fast_food, preco=qualidade, contexto=romantico]).
example(14, [faixa=faixa16_35, dieta=nenhuma_dieta, preferencias_gastronomicas=fast_food, preco=qualidade, contexto=amigos]).
example(15, [faixa=faixa16_35, dieta=nenhuma_dieta, preferencias_gastronomicas=fast_food, preco=custo_beneficio, contexto=romantico]).
example(16, [faixa=faixa16_35, dieta=nenhuma_dieta, preferencias_gastronomicas=fast_food, preco=custo_beneficio, contexto=amigos]).
example(17, [faixa=faixa16_35, dieta=nenhuma_dieta, preferencias_gastronomicas=fast_food, preco=preco, contexto=romantico]).
example(18, [faixa=faixa16_35, dieta=nenhuma_dieta, preferencias_gastronomicas=fast_food, preco=preco, contexto=amigos]).
example(37, [faixa=faixa36_60, dieta=nenhuma_dieta, preferencias_gastronomicas=fast_food, preco=qualidade, contexto=romantico]).
example(38, [faixa=faixa36_60, dieta=nenhuma_dieta, preferencias_gastronomicas=fast_food, preco=qualidade, contexto=amigos]).
example(39, [faixa=faixa36_60, dieta=nenhuma_dieta, preferencias_gastronomicas=fast_food, preco=custo_beneficio, contexto=romantico]).
example(40, [faixa=faixa36_60, dieta=nenhuma_dieta, preferencias_gastronomicas=fast_food, preco=custo_beneficio, contexto=amigos]).
example(41, [faixa=faixa36_60, dieta=nenhuma_dieta, preferencias_gastronomicas=fast_food, preco=preco, contexto=romantico]).
example(42, [faixa=faixa36_60, dieta=nenhuma_dieta, preferencias_gastronomicas=fast_food, preco=preco, contexto=amigos]).
example(19, [faixa=faixa16_35, dieta=nenhuma_dieta, preferencias_gastronomicas=internacional, preco=qualidade, contexto=romantico]).
example(20, [faixa=faixa16_35, dieta=nenhuma_dieta, preferencias_gastronomicas=internacional, preco=qualidade, contexto=amigos]).
example(21, [faixa=faixa16_35, dieta=nenhuma_dieta, preferencias_gastronomicas=internacional, preco=custo_beneficio, contexto=romantico]).
example(22, [faixa=faixa16_35, dieta=nenhuma_dieta, preferencias_gastronomicas=internacional, preco=custo_beneficio, contexto=amigos]).
example(23, [faixa=faixa16_35, dieta=nenhuma_dieta, preferencias_gastronomicas=internacional, preco=preco, contexto=romantico]).
example(24, [faixa=faixa16_35, dieta=nenhuma_dieta, preferencias_gastronomicas=internacional, preco=preco, contexto=amigos]).
example(43, [faixa=faixa36_60, dieta=nenhuma_dieta, preferencias_gastronomicas=internacional, preco=qualidade, contexto=romantico]).
example(44, [faixa=faixa36_60, dieta=nenhuma_dieta, preferencias_gastronomicas=internacional, preco=qualidade, contexto=amigos]).
example(45, [faixa=faixa36_60, dieta=nenhuma_dieta, preferencias_gastronomicas=internacional, preco=custo_beneficio, contexto=romantico]).
example(46, [faixa=faixa36_60, dieta=nenhuma_dieta, preferencias_gastronomicas=internacional, preco=custo_beneficio, contexto=amigos]).
example(47, [faixa=faixa36_60, dieta=nenhuma_dieta, preferencias_gastronomicas=internacional, preco=preco, contexto=romantico]).
example(48, [faixa=faixa36_60, dieta=nenhuma_dieta, preferencias_gastronomicas=internacional, preco=preco, contexto=amigos]).
example(12, [faixa=faixa16_35, dieta=nenhuma_dieta, preferencias_gastronomicas=oriental, preco=preco, contexto=amigos]).
example(7, [faixa=faixa36_60, dieta=nenhuma_dieta, preferencias_gastronomicas=oriental, preco=qualidade, contexto=amigos]).

