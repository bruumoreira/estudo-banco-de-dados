 /* 
ATIVIDADE: TEST2321
DESCRICAO: ROLLBACK do Script de DML do banco de cinema 
AUTOR: Bruna Stefani Moreira Torres Francisco
DATA: 20/08/2022
 */ 

 /* FILME */
DELETE FROM tb_filme WHERE nome IN ('Extraordinário', 'Harry Potter', 'It');
 /* SALAS */
DELETE FROM tb_sala WHERE nome IN ('Sala 01', 'Sala 02', 'Sala 03');
 /* DIRETOR */
DELETE FROM tb_diretor WHERE nome IN ('Stephen Chbosky','Chris Columbus','Andy Muschietti');
 /* OSCAR */
DELETE FROM tb_indicacoes WHERE nome = 'OSCAR' AND ano IN ('2017','2018','2019');



 /* ******************** FIM ******************** */