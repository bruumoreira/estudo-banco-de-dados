
 /* 
ATIVIDADE: TEST2321
DESCRICAO: Script de DML do banco de cinema 
AUTOR: Bruna Stefani Moreira Torres Francisco
DATA: 30/08/2022
 */ 
 
 /* SALAS */
INSERT INTO tb_sala (nome, capacidade) VALUES('Sala 04', 150), ('Sala 05', 80) , ('Sala 06', 120);

 /* DIRETOR */
INSERT INTO tb_diretor (nome) VALUES ('Dan Trachtenberg'), ('Ruben Fleischer'),('Aaron Nee');

 /* OSCAR */
INSERT INTO tb_indicacoes (nome, ano)
VALUES('OSCAR', 2022);

 /* FILME */
INSERT INTO tb_filme
(nome, idioma, ano_lancamento, sinopse, cartaz, genero, tb_indicacoes_id_indicacoes, tb_diretor_id_diretor)
VALUES('O Predador: Primeira Presa', 'EN', '2022-01-01', 'Teste 123', 1, 'Ação', (SELECT id_indicacoes from tb_indicacoes where ano = 2022),(SELECT id_diretor from tb_diretor where nome = 'Dan Trachtenberg'));

INSERT INTO tb_filme
(nome, idioma, ano_lancamento, sinopse, cartaz, genero, tb_indicacoes_id_indicacoes, tb_diretor_id_diretor)
VALUES('Uncharted', 'EN', '2022-01-01', 'Teste 321', 1, 'Aventura', (SELECT id_indicacoes from tb_indicacoes where ano = 2022),(SELECT id_diretor from tb_diretor where nome = 'Ruben Fleischer'));

INSERT INTO tb_filme
(nome, idioma, ano_lancamento, sinopse, cartaz, genero, tb_indicacoes_id_indicacoes, tb_diretor_id_diretor)
VALUES('A Cidade Perdida', 'PT-BR', '2022-01-01', 'Teste 456', 1, 'Romance', (SELECT id_indicacoes from tb_indicacoes where ano = 2022),(SELECT id_diretor from tb_diretor where nome = 'Aaron Nee'));

/* SESSÃO */
INSERT INTO tb_sessao (inicio, fim, tb_sala_id_sala, tb_filme_id_filme) 
VALUES('2022-01-02 18:00', '2022-01-02 20:30', (SELECT id_sala from tb_sala where nome = 'Sala 01'), (SELECT id_filme from tb_filme where nome like 'Minha%'));

INSERT INTO tb_sessao (inicio, fim, tb_sala_id_sala, tb_filme_id_filme)
VALUES('2022-01-02 18:00', '2022-01-02 20:30', (SELECT id_sala from tb_sala where nome = 'Sala 02'), (SELECT id_filme from tb_filme where nome like 'Harry%'));

INSERT INTO tb_sessao (inicio, fim, tb_sala_id_sala, tb_filme_id_filme)
VALUES('2022-01-03 20:00', '2022-01-03 22:30', (SELECT id_sala from tb_sala where nome = 'Sala 03'), (SELECT id_filme from tb_filme where nome like 'Extra%'));

INSERT INTO tb_sessao (inicio, fim, tb_sala_id_sala, tb_filme_id_filme)
VALUES('2022-01-04 16:00', '2022-01-04 18:30', (SELECT id_sala from tb_sala where nome = 'Sala 04'), (SELECT id_filme from tb_filme where nome like 'It%'));

INSERT INTO tb_sessao (inicio, fim, tb_sala_id_sala, tb_filme_id_filme)
VALUES('2022-01-06 19:00', '2022-01-06 21:45', (SELECT id_sala from tb_sala where nome = 'Sala 05'), (SELECT id_filme from tb_filme where nome like '%Predador%'));

INSERT INTO tb_sessao (inicio, fim, tb_sala_id_sala, tb_filme_id_filme)
VALUES('2022-01-06 19:00', '2022-01-06 21:45', (SELECT id_sala from tb_sala where nome = 'Sala 06'), (SELECT id_filme from tb_filme where nome like 'Uncharted%'));

INSERT INTO tb_sessao (inicio, fim, tb_sala_id_sala, tb_filme_id_filme)
VALUES('2022-01-02 19:00', '2022-01-02 21:45', (SELECT id_sala from tb_sala where nome = 'Sala 01'), (SELECT id_filme from tb_filme where nome like 'Harry%'));

INSERT INTO tb_sessao (inicio, fim, tb_sala_id_sala, tb_filme_id_filme)
VALUES('2022-01-01 19:00', '2022-01-01 21:45', (SELECT id_sala from tb_sala where nome = 'Sala 02'), (SELECT id_filme from tb_filme where nome like 'It%'));

INSERT INTO tb_sessao (inicio, fim, tb_sala_id_sala, tb_filme_id_filme)
VALUES('2022-01-03 18:00', '2022-01-03 20:45', (SELECT id_sala from tb_sala where nome = 'Sala 04'), (SELECT id_filme from tb_filme where nome like 'Uncharted%'));

INSERT INTO tb_sessao (inicio, fim, tb_sala_id_sala, tb_filme_id_filme)
VALUES('2022-01-03 18:00', '2022-01-03 20:45', (SELECT id_sala from tb_sala where nome = 'Sala 05'), (SELECT id_filme from tb_filme where nome like 'Harry%'));
 /* ******************** FIM ******************** */