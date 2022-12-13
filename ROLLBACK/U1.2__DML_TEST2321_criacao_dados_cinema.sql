 /* 
ATIVIDADE: TEST2321
DESCRICAO: ROLLBACK do Script de DML do banco de cinema 
AUTOR: Bruna Stefani Moreira Torres Francisco
DATA: 30/08/2022
 */ 

/* SESSÃO */
DELETE FROM tb_sessao WHERE inicio BETWEEN '2022-01-01' AND '2022-01-06 23:59:59';

 /* FILME */
DELETE FROM tb_filme WHERE nome IN ('O Predador: Primeira Presa', 'Uncharted', 'A Cidade Perdida');

 /* SALAS */
DELETE FROM tb_sala WHERE nome IN ('Sala 04', 'Sala 05', 'Sala 06');

 /* DIRETOR */
DELETE FROM tb_diretor WHERE nome IN ('Dan Trachtenberg','Ruben Fleischer','Aaron Nee');

 /* OSCAR */
DELETE FROM tb_indicacoes WHERE nome = 'OSCAR' AND ano IN ('2022');

 /* ******************** FIM ******************** */