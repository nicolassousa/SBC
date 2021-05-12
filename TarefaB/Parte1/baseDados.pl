%lucro(cliente, valor)
lucro(restaurante, 0).
lucro(cliente1, 5).
lucro(cliente2, 6).
lucro(cliente3, 7).
lucro(cliente4, 5).
lucro(cliente5, 7).
lucro(cliente6, 8).
lucro(cliente7, 7).

%percurso(Origem, Destino, duracaoEmMin)
percurso(restaurante, cliente1, 5).
percurso(restaurante, cliente4, 7).
percurso(cliente1, cliente4, 5).
percurso(cliente1, cliente2, 5).
percurso(cliente1, cliente5, 5).
percurso(cliente4, cliente2, 2).
percurso(cliente4, cliente3, 4).
percurso(cliente2, cliente5, 2).
percurso(cliente2, cliente3, 3).
percurso(cliente3, cliente5, 5).
percurso(cliente3, cliente6, 2).
percurso(cliente5, cliente6, 2).
percurso(cliente3, cliente7, 2).
percurso(cliente4, cliente7, 2).