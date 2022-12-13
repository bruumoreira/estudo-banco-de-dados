
CREATE TABLE IF NOT EXISTS tb_funcionario (
	id_funcionario INT NOT null AUTO_INCREMENT,
	nome VARCHAR(45) NOT NULL UNIQUE,
	data_admissao DATE NOT NULL,
	ctps INT NOT NULL UNIQUE,
	salario DECIMAL(2) NOT NULL,
	tipo VARCHAR(45) NOT NULL,
	PRIMARY KEY (id_funcionario)
);

CREATE TABLE IF NOT EXISTS tb_sala (
  id_sala INT NOT null AUTO_INCREMENT,
  nome VARCHAR(45) NOT NULL,
  capacidade INT NOT NULL,
  PRIMARY KEY (id_sala),
  UNIQUE INDEX `NOME_UNIQUE` (nome)
);

CREATE TABLE IF NOT EXISTS tb_indicacoes (
	id_indicacoes INT NOT null AUTO_INCREMENT,
	nome VARCHAR(45) NOT NULL, 
	ano INT NOT null,
	PRIMARY KEY (id_indicacoes)
);

CREATE TABLE IF NOT EXISTS tb_diretor (
	id_diretor INT NOT null AUTO_INCREMENT,
	nome VARCHAR(45) NOT NULL,
	PRIMARY KEY (id_diretor)
);

CREATE TABLE IF NOT EXISTS tb_horario_funcionario (
	id_horario_funcionario INT NOT null AUTO_INCREMENT,
	inicio DATETIME NOT NULL,
	fim DATETIME NOT NULL,
	tb_funcionario_id_funcionario INT NOT null,
	PRIMARY KEY (id_horario_funcionario),
	FOREIGN KEY (tb_funcionario_id_funcionario) REFERENCES tb_funcionario (id_funcionario)
);

CREATE TABLE IF NOT EXISTS tb_filme (
	id_filme  INT NOT null AUTO_INCREMENT,
	nome VARCHAR(45) NOT NULL UNIQUE,
	idioma VARCHAR(45) NOT NULL,
	ano_lancamento DATE NOT NULL,
	sinopse VARCHAR(150) NOT NULL,
	cartaz TINYINT NOT NULL,
	genero VARCHAR(45),
	tb_indicacoes_id_indicacoes INT NOT null,
	tb_diretor_id_diretor INT NOT null,
	PRIMARY KEY (id_filme),
	FOREIGN KEY (tb_indicacoes_id_indicacoes) REFERENCES tb_indicacoes (id_indicacoes),
	FOREIGN KEY (tb_diretor_id_diretor) REFERENCES tb_diretor (id_diretor)
);

CREATE TABLE IF NOT EXISTS tb_sessao (
  id_sessao INT NOT null AUTO_INCREMENT,
  inicio DATETIME NOT NULL,
  fim DATETIME NOT NULL,
  tb_sala_id_sala INT NOT NULL,
  tb_filme_id_filme int not null, 
  PRIMARY KEY (id_sessao),
  FOREIGN KEY (tb_sala_id_sala) REFERENCES tb_sala (id_sala),
  FOREIGN KEY (tb_filme_id_filme) references tb_filme (id_filme)
);
