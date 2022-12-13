
 /* 
ATIVIDADE: TEST2321
DESCRICAO: Script de DML do banco de cinema 
AUTOR: Bruna Stefani Moreira Torres Francisco
DATA: 20/08/2022
 */ 
 
 /* SALAS */
INSERT INTO tb_sala (nome, capacidade) values ('Sala 01', 200),('Sala 02', 300), ('Sala 03', 50);

 /* DIRETOR */
INSERT INTO tb_diretor (nome) values ('Stephen Chbosky'),('Chris Columbus'),('Andy Muschietti');

 /* OSCAR */
INSERT INTO tb_indicacoes (nome, ano)
VALUES('OSCAR', 2017), ('OSCAR', 2018), ('OSCAR', 2019);

 /* FILME */
INSERT INTO tb_filme
(nome, idioma, ano_lancamento, sinopse, cartaz, genero, tb_indicacoes_id_indicacoes, tb_diretor_id_diretor)
VALUES('Extraordinário', 'PT-BR', '2017-01-30', 'Teste teste teste', 1, 'Educativo', (SELECT id_indicacoes from tb_indicacoes where ano = 2017),(SELECT id_diretor from tb_diretor where nome = 'Stephen Chbosky'));
INSERT INTO tb_filme
(nome, idioma, ano_lancamento, sinopse, cartaz, genero, tb_indicacoes_id_indicacoes, tb_diretor_id_diretor)
VALUES('Harry Potter', 'EN', '2018-01-30', 'Teste teste teste 2', 0, 'Ação', (SELECT id_indicacoes from tb_indicacoes where ano = 2018), (SELECT id_diretor from tb_diretor where nome = 'Chris Columbus'));
INSERT INTO tb_filme
(nome, idioma, ano_lancamento, sinopse, cartaz, genero, tb_indicacoes_id_indicacoes, tb_diretor_id_diretor)
VALUES('It', 'PT-BR', '2019-01-30', 'Teste teste teste 3', 1, 'Suspense', (SELECT id_indicacoes from tb_indicacoes where ano = 2019), (SELECT id_diretor from tb_diretor where nome = 'Andy Muschietti'));

 /* ******************** FIM ******************** */