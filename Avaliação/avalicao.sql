-- Criar tabela editora
CREATE TABLE editora (
	id_editora SERIAL NOT NULL,
	nome VARCHAR(35) NOT NULL,
	
	CONSTRAINT pk_id_editora PRIMARY KEY (id_editora)
);

-- inserir dados
INSERT INTO editora(nome) VALUES('Bookman');
INSERT INTO editora(nome) VALUES('Edgard Blusher');
INSERT INTO editora(nome) VALUES('Nova Terra');
INSERT INTO editora(nome) VALUES('Brasport');

-- Criar uma tabela chamada categoria
CREATE TABLE categoria(
	id_categoria SERIAL NOT NULL,
	nome VARCHAR(35) NOT NULL,
	
	CONSTRAINT pk_id_categoria PRIMARY KEY (id_categoria)
);

-- inserir dados
INSERT INTO categoria(nome) VALUES('Banco de dados');
INSERT INTO categoria(nome) VALUES('HTML');
INSERT INTO categoria(nome) VALUES('Java');
INSERT INTO categoria(nome) VALUES('PHP');

-- Criar tabela autor
CREATE TABLE autor (
	id_autor SERIAL NOT NULL,
	nome VARCHAR (60) NOT NULL,
	
	CONSTRAINT pk_id_autor PRIMARY KEY (id_autor)
);

INSERT INTO autor(nome) VALUES('Waldemar Setzer');
INSERT INTO autor(nome) VALUES('John Watson');
INSERT INTO autor(nome) VALUES('Rui Rossi dos Santos');
INSERT INTO autor(nome) VALUES('Antonio Pereira de Resende');
INSERT INTO autor(nome) VALUES('Claudiney Calixto Lima');
INSERT INTO autor(nome) VALUES('Evandro Carlos Teruel');
INSERT INTO autor(nome) VALUES('Ian Graham');
INSERT INTO autor(nome) VALUES('Fabricio Xavier');
INSERT INTO autor(nome) VALUES('Pablo Dalloglio');

-- Criar tabela livro
CREATE TABLE livro (
	id_livro SERIAL NOT NULL, 
	id_editora INTEGER NOT NULL,
	id_categoria INTEGER NOT NULL,
	nome VARCHAR(265) NOT NULL,
	
	CONSTRAINT pk_id_livro PRIMARY KEY(id_livro),
	CONSTRAINT fk_id_editora FOREIGN KEY(id_editora) REFERENCES editora(id_editora),
	CONSTRAINT fk_id_categoria FOREIGN KEY(id_categoria) REFERENCES categoria(id_categoria)	
);




