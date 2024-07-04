-- Criar tabela editora
CREATE TABLE editora (
	id_editora SERIAL NOT NULL,
	nome VARCHAR(35) NOT NULL, -- faltou o nome unico
	
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

DROP TABLE categoria

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

DROP TABLE autor
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
DROP TABLE livro

-- Inserir os dados da tabela
INSERT INTO livro(id_editora, id_categoria, nome) VALUES(2, 1, 'Banco de dados - 1 edição');
INSERT INTO livro(id_editora, id_categoria, nome) VALUES(1, 1, 'Oracle Database 11G Administração');
INSERT INTO livro(id_editora, id_categoria, nome) VALUES(3, 3, 'Programação de computadores em Java ');
INSERT INTO livro(id_editora, id_categoria, nome) VALUES(4, 3, 'Programação Orientada a Aspectos em Java');
INSERT INTO livro(id_editora, id_categoria, nome) VALUES(4, 2, 'HTML 5');
INSERT INTO livro(id_editora, id_categoria, nome) VALUES(3, 2, 'XHTML Guia de referência para Desenvolvimento na Web');
INSERT INTO livro(id_editora, id_categoria, nome) VALUES(4, 1, 'PHP para desenvolvimento profissional');
INSERT INTO livro(id_editora, id_categoria, nome) VALUES(4, 2, 'PHP com Programação Orientada a Objetos');

-- Crie uma tabela chamada livro_autor de acordo com os dados abaixo:
CREATE TABLE livro_autor (
	id_livro INTEGER NOT NULL,
	id_autor INTEGER NOT NULL,

	CONSTRAINT pk_composta_ids PRIMARY KEY (id_livro, id_autor),
	FOREIGN KEY (id_livro) REFERENCES livro(id_livro),
	FOREIGN KEY (id_autor) REFERENCES autor(id_autor)
);

-- Inserir os dados na tabela
INSERT INTO livro_autor(id_livro, id_autor) VALUES (1, 1);
INSERT INTO livro_autor(id_livro, id_autor) VALUES (1, 8);
INSERT INTO livro_autor(id_livro, id_autor) VALUES (2, 2);
INSERT INTO livro_autor(id_livro, id_autor) VALUES (3, 3);
INSERT INTO livro_autor(id_livro, id_autor) VALUES (4, 4);
INSERT INTO livro_autor(id_livro, id_autor) VALUES (4, 5);
INSERT INTO livro_autor(id_livro, id_autor) VALUES (5, 6);
INSERT INTO livro_autor(id_livro, id_autor) VALUES (6, 7);
INSERT INTO livro_autor(id_livro, id_autor) VALUES (7, 8);
INSERT INTO livro_autor(id_livro, id_autor) VALUES (8, 9);


-- Criar tabela aluno 
CREATE TABLE aluno (
	id_aluno SERIAL NOT NULL,
	nome VARCHAR(150) NOT NULL,

	CONSTRAINT pk_id_aluno PRIMARY KEY(id_aluno)
);

-- Inserir dados
INSERT INTO aluno(nome) VALUES('Mario');
INSERT INTO aluno(nome) VALUES('João');
INSERT INTO aluno(nome) VALUES('Paulo');
INSERT INTO aluno(nome) VALUES('Pedro');
INSERT INTO aluno(nome) VALUES('Maria');

-- Criar tabela Emprestimo
CREATE TABLE emprestimo (
	id_emprestimo SERIAL NOT NULL,
	id_aluno INTEGER NOT NULL,
	data_emprestimo DATE NOT NULL DEFAULT CURRENT_DATE,
	data_devolucao DATE NOT NULL,
	valor DECIMAL NOT NULL,
	devolvido CHAR(1) NOT NULL,

	CONSTRAINT pk_id_emprestimo PRIMARY KEY(id_emprestimo),
	FOREIGN KEY (id_aluno) REFERENCES aluno(id_aluno)	
);

-- Inserir dados
INSERT INTO emprestimo(id_aluno, data_emprestimo, data_devolucao, valor, devolvido) VALUES(1,'2012-05-02', '2012-05-12', 10.00, 'S');
INSERT INTO emprestimo(id_aluno, data_emprestimo, data_devolucao, valor, devolvido) VALUES(1,'2012-04-23', '2012-05-03', 5.00, 'N');
INSERT INTO emprestimo(id_aluno, data_emprestimo, data_devolucao, valor, devolvido) VALUES(2,'2012-05-10', '2012-05-20', 12.00, 'N');
INSERT INTO emprestimo(id_aluno, data_emprestimo, data_devolucao, valor, devolvido) VALUES(3,'2012-05-10', '2012-05-20', 8.00, 'S');
INSERT INTO emprestimo(id_aluno, data_emprestimo, data_devolucao, valor, devolvido) VALUES(4,'2012-05-05', '2012-05-15', 15.00, 'N');
INSERT INTO emprestimo(id_aluno, data_emprestimo, data_devolucao, valor, devolvido) VALUES(4,'2012-05-07', '2012-05-17', 20.00, 'S');
INSERT INTO emprestimo(id_aluno, data_emprestimo, data_devolucao, valor, devolvido) VALUES(4,'2012-05-08', '2012-05-16', 5.00, 'S');

-- Criar uma tabela chamada emprestimo_livro
CREATE TABLE emprestimo_livro (
	id_emprestimo INTEGER NOT NULL,
	id_livro INTEGER NOT NULL,

	CONSTRAINT pk_emprestimo_livro PRIMARY KEY(id_emprestimo, id_livro),
	FOREIGN KEY (id_emprestimo) REFERENCES emprestimo(id_emprestimo),
	FOREIGN KEY (id_livro) REFERENCES livro(id_livro)
)

SELECT *FROM emprestimo

-- Inserir os dados 
INSERT INTO emprestimo_livro(id_emprestimo, id_livro) VALUES(1, 1);
INSERT INTO emprestimo_livro(id_emprestimo, id_livro) VALUES(2, 4);
INSERT INTO emprestimo_livro(id_emprestimo, id_livro) VALUES(2, 3);
INSERT INTO emprestimo_livro(id_emprestimo, id_livro) VALUES(3, 2);
INSERT INTO emprestimo_livro(id_emprestimo, id_livro) VALUES(3, 5);
INSERT INTO emprestimo_livro(id_emprestimo, id_livro) VALUES(5, 4);
INSERT INTO emprestimo_livro(id_emprestimo, id_livro) VALUES(6, 6);
INSERT INTO emprestimo_livro(id_emprestimo, id_livro) VALUES(6, 1);
INSERT INTO emprestimo_livro(id_emprestimo, id_livro) VALUES(7, 8);

-- Criar indices
-- Criar indice de emprestimo da tabela de emprestimo
CREATE INDEX idx_emp_emprestimo ON emprestimo(data_emprestimo);

-- Criar indice de devolução da tabela de emprestimo
CREATE INDEX idx_dev_emprestimo ON emprestimo(data_devolucao)


-- Consultas simples
 -- O nome dos autores em ordem alfabetica
SELECT nome FROM autor ORDER BY nome ASC;

 -- O nome dos alunos que começam com a letra P 
SELECT nome FROM autor WHERE nome LIKE 'P%'

 -- O nome dos livros da categoria Banco de dados ou JAVA
SELECT nome FROM livro WHERE id_categoria = 1 OR id_categoria = 3

 -- O nome dos livros da editora Bookman
SELECT nome FROM livro WHERE id_editora = 1

 -- Os emprestimos realizados entre 05/05/2012 e 10/05/2012
SELECT * FROM emprestimo WHERE data_emprestimo BETWEEN '2012-05-05' AND '2012-05-10';

 -- Os emprestimos que nao foram feitos entre 05/05/2012 
 SELECT * FROM emprestimo WHERE data_emprestimo NOT BETWEEN '2012-05-05' AND '2012-05-10';

 -- Os emprestimos que ja foram devolvidos
 SELECT * FROM emprestimo WHERE devolvido = 'S';


-- Consultas com agrupamento simples
 -- A quantidade de livros
 SELECT count(id_livro) FROM livro 
 
 -- O somatario do valor dos emprestimos
 SELECT sum(valor) FROM emprestimo
 
 -- O maior valor dos emprestimos
 SELECT MAX(valor) FROM emprestimo 
 
 -- O menor valor dos emprestimos
 SELECT MIN(valor) FROM emprestimo
 
 -- A media do valor dos emprestimos
  SELECT AVG(valor) FROM emprestimo
 
 -- O somatorio do valor do emprestimo que estao entre 05/05/2012 e 10/05/2012
 SELECT sum(valor) FROM emprestimo WHERE data_emprestimo BETWEEN '2012-05-05' AND '2012-05-10';
 
 -- A quantidade de emprestimos que estao entre 01/05/2012 e 10/05/2012
 SELECT count(id_emprestimo) FROM emprestimo WHERE data_emprestimo BETWEEN '2012-05-01' AND '2012-05-05';
 
-- Consultas com join
 -- O nome do livro, a categoria e a editora(livro) - fazer uma view
 CREATE VIEW complete_book AS
 	SELECT
		lvr.nome AS livro,
		ctg.nome AS categoria,
		edt.nome AS editora
	FROM 
		livro AS lvr
	LEFT OUTER JOIN 
		categoria AS ctg ON lvr.id_categoria = ctg.id_categoria
	LEFT OUTER JOIN 
		editora AS edt ON lvr.id_editora = edt.id_editora
		
  -- O nome do livro e o nome do autor(livro_autor) - fazer uma view
  CREATE VIEW autor_livro AS
   	SELECT 
		lvr.nome AS livro,
		aut.nome AS autor
	FROM
		livro_autor AS lva
	LEFT OUTER JOIN
		livro as lvr on lva.id_livro = lvr.id_livro
	LEFT OUTER JOIN
		autor as aut on lva.id_autor = aut.id_autor
		
	SELECT * FROM autor_livro
	
   -- O nome dos livros do autor ian graham
	SELECT 
    	lvr.nome AS livro,
    	aut.nome AS autor
	FROM 
    	livro_autor AS lva
	LEFT JOIN
    	livro AS lvr ON lva.id_livro = lvr.id_livro
	LEFT JOIN
    	autor AS aut ON lva.id_autor = aut.id_autor
	WHERE 
    	aut.nome = 'Ian Graham';

	-- O nome do aluno, a data do emprestimo e data de devolução(emprestimo)
	SELECT 
		aln.nome AS aluno,
		emp.data_emprestimo AS Data_Emprestimo,
		emp.data_devolucao AS Data_Devolução
	FROM 
		emprestimo AS emp
	LEFT OUTER JOIN 
		aluno as aln on emp.id_aluno = aln.id_aluno
	
	-- O nome de todos os livros que foram emprestados
	SELECT 
		distinct(lvr.nome) AS livro
	FROM 
		emprestimo_livro as epl
	LEFT OUTER JOIN
		livro as lvr on epl.id_livro = lvr.id_livro
	
	
	
	
-- Consulta com agrupamento + join
 -- O nome da editora e a quantidade de livros de cada editora
 SELECT
    edt.nome as editora,
  	count(id_livro) as quantidade
FROM 
	livro AS lvr
LEFT OUTER JOIN
	editora as edt on lvr.id_editora = edt.id_editora
GROUP BY
 	edt.nome
	
-- O nome da categoria e a quantidade de livros de cada categoria
SELECT 
	ctg.nome AS categoria,
	count(id_livro) AS quantidade
FROM 
	livro as lvr
LEFT OUTER JOIN 
	categoria AS ctg on lvr.id_categoria = ctg.id_categoria
GROUP BY
 	ctg.nome

-- O nome do autor e a quantidade de livros de cada autor (livro autor)
SELECT 
	atr.nome AS autor,
	count(lvr.id_livro) AS quantidade
FROM 
	livro_autor AS lva
LEFT OUTER JOIN
	autor AS atr on lva.id_autor = atr.id_autor
LEFT OUTER JOIN 
	livro AS lvr on lva.id_livro = lvr.id_livro
GROUP BY
	atr.nome
	
--  O nome do aluno e o somatorio do valor total dos emprestimos de cada aluno
SELECT 
	aln.nome AS aluno,
	sum(emp.valor) AS valor_total
FROM 
	emprestimo AS emp
LEFT OUTER JOIN
	aluno AS aln ON emp.id_aluno = aln.id_aluno
GROUP BY
	aln.nome
	
-- 
	
	
	
	
	
	
	