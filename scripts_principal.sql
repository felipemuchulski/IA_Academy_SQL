CREATE TABLE cliente (
	id_cliente INTEGER NOT NULL,
	nome VARCHAR(50) NOT NULL,
	cpf CHAR(11),
	rg VARCHAR(15),
	data_nascimento DATE,
	genero CHAR(1),
	profissao VARCHAR(30),
	nacionalidade VARCHAR(30),
	logradouro VARCHAR(30),
	numero VARCHAR(10),
	complemento VARCHAR(30),
	bairro VARCHAR(30),
	municipio VARCHAR(30),
	uf VARCHAR(30),
	observacoes TEXT,
	
	-- primary key
	CONSTRAINT pk_cln_id_cliente PRIMARY KEY (id_cliente)
	
);

DROP TABLE cliente

-- inserir dados na tabela
INSERT INTO cliente (id_cliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento,bairro, municipio, uf)
VALUES (1, 'Felipe Muchulski', '03366008016', '3232323', '2002-12-02', 'M', 'Analista Operacional', 'Brasileiro', 'Rua Vittorio Tatto', '280', 'Casa', 'Ana Rech', 'Caxias do Sul', 'RS' );

INSERT INTO cliente (id_cliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento,bairro, municipio, uf)
VALUES (2, 'Clara Muchulski', '5434445560', '23232323', '2008-07-30', 'F', 'Estudante', 'Brasileiro', 'Rua Vittorio Tatto', '280', 'Casa', 'Ana Rech', 'Caxias do Sul', 'RS' );
		

		
-- Exercicio 1 - Insert de clientes, Seção 2:
INSERT INTO cliente (id_cliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento,bairro, municipio, uf)
VALUES (3, 'Carlos', '87732323227', '55463', '1967-10-01', 'M', 'Pedreiro', 'Brasileiro', 'Rua das Laranjeiras', '300', 'Apart.', 'Cto.', 'Canoinhas', 'SC' );

INSERT INTO cliente (id_cliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento,bairro, municipio, uf)
VALUES (4, 'Adriana', '12321222122', '98777', '1989-09-10', 'F', 'Jornalista', 'Brasileiro', 'Rua das Limas', '240', 'Casa', 'São Pedro', 'Porto Vitória', 'PR' );

INSERT INTO cliente (id_cliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento,bairro, municipio, uf)
VALUES (5, 'Amanda', '99982838828', '28328', '1991-03-04', 'F', 'Jorn.', 'Italiana', 'Av.Central', '100', NULL , 'São Pedro', 'General Carneiro', 'PR' );

INSERT INTO cliente (id_cliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento,bairro, municipio, uf)
VALUES (6, 'Ângelo', '99982838181', '12323', '2000-01-01', 'M', 'Professor', 'Brasileiro', 'Av. Beira Mar', '300', NULL , 'Ctr.', 'São Paulo', 'SP' );

INSERT INTO cliente (id_cliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento,bairro, municipio, uf)
VALUES (7, 'Anderson', NULL, NULL, NULL, 'M', 'Prof.', 'Italiano', 'Av. Brasil', '100', 'Apartamento' , 'Santa Rosa', 'Rio de Janeiro', 'SP' );

INSERT INTO cliente (id_cliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento,bairro, municipio, uf)
VALUES (8, 'Camila', '9998282828', NULL, '2001-10-10', 'F', 'Professora', 'Norte Americana', 'Rua Central', '4333', NULL , 'Centro', 'Uberlândia', 'MG' );

INSERT INTO cliente (id_cliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento,bairro, municipio, uf)
VALUES (9, 'Cristiano', NULL , NULL, NULL, 'M', 'Estudante', 'Alemã', 'Rua do Centro', '877', 'Casa' , 'Centro', 'Porto Alegre', 'RS');

INSERT INTO cliente (id_cliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento,bairro, municipio, uf)
VALUES (10, 'Fabricio', '8828282828', '32323', NULL, 'M', 'Estudante', 'Brasileiro', NULL, NULL, NULL , NULL, 'PU', 'SC');

INSERT INTO cliente (id_cliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento,bairro, municipio, uf)
VALUES (11, 'Fernanda', NULL , NULL, NULL, 'F', NULL, 'Brasileira', NULL, NULL, NULL , NULL, 'Porto União', 'SC');

INSERT INTO cliente (id_cliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento,bairro, municipio, uf)
VALUES (12, 'Gilmar', '88881818181', '888', '2000-02-10', 'M', 'Estud.', NULL, 'Rua das Laranjeiras', '200', NULL , 'C.Nova', 'Canoinhas', 'SC' );

INSERT INTO cliente (id_cliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento,bairro, municipio, uf)
VALUES (13, 'Diego', '1010191919', '111939', NULL, 'M', 'Professor', 'Alemão', 'Rua Central', '455', 'House' , 'Cidade N.', 'São Paulo', 'SP' );

INSERT INTO cliente (id_cliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento,bairro, municipio, uf)
VALUES (14, 'Jeferson', NULL, NULL, '1983-07-01', 'M', NULL, 'Brasileiro', NULL, NULL, NULL , NULL, 'União Vitória', 'PR' );

INSERT INTO cliente (id_cliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento,bairro, municipio, uf)
VALUES (15, 'Jessica', NULL, NULL, NULL, 'F', 'Estudante', NULL, NULL, NULL, NULL , NULL, 'União Vitória', 'PR' );

SELECT * FROM cliente;

-- Filtrando com apenas algumas informações.
SELECT nome, data_nascimento FROM cliente;

-- Alterando o nome da coluna com o comando AS
SELECT nome, data_nascimento AS "Data de Nascimento" FROM clientes;

-- Concatenar informações de consulta
SELECT 'CPF: ' || cpf || 'RG: ' || rg AS "CPF e RG " FROM cliente;

-- Limitando o numero de buscas 
SELECT nome, data_nascimento FROM cliente

-- Filtros para pegar informações como datas específicas
SELECT nome, data_nascimento FROM cliente WHERE data_nascimento > '2000-01-01';

-- Filtrar clientes que começem com uma letra específica
SELECT nome FROM cliente WHERE nome LIKE 'C%'

-- Filtrar clientes que tenham uma letra em específico 
SELECT nome FROM cliente WHERE nome LIKE '%c%';

-- Filtrar por um intervalo de datas
SELECT nome, data_nascimento FROM cliente WHERE data_nascimento BETWEEN '1999-01-01' AND '1998-01-01';
s
-- Filtrar somente clientes que estejam com registro nulos
SELECT nome, rg FROM cliente WHERE rg IS NULL

-- Ordenar por nome os clientes
SELECT nome FROM cliente ORDER BY nome ASC 

-- Ordenar por ordem decrescente 
SELECT nome FROM cliente ORDER BY nome DESC;

UPDATE cliente SET nome = 'Adriano', genero = 'M', numero = '241' WHERE id_cliente = 4
UPDATE cliente SET cpf = '45567890045' WHERE id_cliente = 1


--Criação e inserção de conteudo na tabela de profissao
CREATE TABLE profissao (
   id_profissao INTEGER NOT NULL, 
	nome VARCHAR(30) NOT NULL,
	
	CONSTRAINT pk_prf_id_profissao PRIMARY KEY (id_profissao),
	CONSTRAINT un_prf_nome UNIQUE (nome)	
);


INSERT INTO profissao (id_profissao, nome) VALUES (1, 'Estudante');
INSERT INTO profissao (id_profissao, nome) VALUES (2, 'Engenheiro');
INSERT INTO profissao (id_profissao, nome) VALUES (3, 'Pedreiro');
INSERT INTO profissao (id_profissao, nome) VALUES (4, 'Jornalista');
INSERT INTO profissao (id_profissao, nome) VALUES (5, 'Professor');
INSERT INTO profissao (id_profissao, nome) VALUES (6, 'Analista Operacional')

SELECT * FROM profissao

SELECT profissao FROM cliente

-- Criação e inserção na tabela de nacionalidade
CREATE TABLE nacionalidade (
   id_nacionalidade INTEGER NOT NULL,
	nome VARCHAR(30) NOT NULL,
	
	CONSTRAINT pk_ncn_id_nacionalidade PRIMARY KEY (id_nacionalidade),
	CONSTRAINT unc_ncn_nome UNIQUE (nome)
);

INSERT INTO nacionalidade (id_nacionalidade, nome) VALUES (1, 'Brasileira');
INSERT INTO nacionalidade (id_nacionalidade, nome) VALUES (2, 'Italiana');
INSERT INTO nacionalidade (id_nacionalidade, nome) VALUES (3, 'Norte-Americana');
INSERT INTO nacionalidade (id_nacionalidade, nome) VALUES (4, 'Alemã');

SELECT * FROM nacionalidade 

-- Criação e inserção na tabela complemento
CREATE TABLE complemento (
   id_complemento INTEGER NOT NULL,
	nome VARCHAR(30) NOT NULL,
	
	CONSTRAINT pk_cpl_id_complemento PRIMARY KEY (id_complemento),
	CONSTRAINT unc_cpl_nome UNIQUE (nome)
);

INSERT INTO complemento (id_complemento, nome) VALUES (1, 'Casa');
INSERT INTO complemento (id_complemento, nome) VALUES (2, 'Apartamento')

-- Criação e inserção na tabela bairro
CREATE TABLE bairro (
	id_bairro INTEGER NOT NULL,
	nome VARCHAR(30) NOT NULL,
	
	CONSTRAINT pk_brr_id_bairro PRIMARY KEY (id_bairro),
	CONSTRAINT unc_brr_nome UNIQUE (nome)
);


INSERT INTO bairro (id_bairro, nome) VALUES (1, 'Cidade Nova');
INSERT INTO bairro (id_bairro, nome) VALUES (2, 'Centro');
INSERT INTO bairro (id_bairro, nome) VALUES (3, 'São Pedro');
INSERT INTO bairro (id_bairro, nome) VALUES (4, 'Santa Rosa');
INSERT INTO bairro (id_bairro, nome) VALUES (5, 'Ana Rech')

-- Cardinalidade
ALTER TABLE cliente RENAME COLUMN profissao to idprofissao;

ALTER TABLE cliente ALTER COLUMN idprofissao TYPE INTEGER;

-- Estudante - 2, 9, 10, 12, 15, 17
-- Pedreiro - 3
-- Jornalista - 5, 14
-- Professor - 6, 7 ,13
-- Analista Operacional - 1
-- null - 14
-- Engenheiro - 11

ALTER TABLE cliente DROP idprofissao
ALTER TABLE cliente ADD id_profissao INTEGER
ALTER TABLE cliente ADD CONSTRAINT fk_cln_idprofissao FOREIGN KEY (id_profissao) REFERENCES profissao(id_profissao)

UPDATE cliente SET id_profissao = 1 WHERE id_cliente IN (2, 9, 10, 12, 15, 17);
UPDATE cliente SET id_profissao = 2 WHERE id_cliente IN (11);
UPDATE cliente SET id_profissao = 3 WHERE id_cliente IN (3);
UPDATE cliente SET id_profissao = 4 WHERE id_cliente IN (5, 14);
UPDATE cliente SET id_profissao = 5 WHERE id_cliente IN (6, 7 ,13);
UPDATE cliente SET id_profissao = 6 WHERE id_cliente IN (1);

SELECT * FROM cliente

-- Vinculando nacionalidade:
-- norte americana - 8
-- Brasileiro - 4, 2 , 10, 17, 11, 3, 14, 6, 1
-- alema - 9, 13
-- italiana - 5, 7
-- null - 12, 15
	
ALTER TABLE cliente DROP nacionalidade
ALTER TABLE cliente ADD id_nacionalidade INTEGER;
ALTER TABLE cliente ADD CONSTRAINT fk_cln_idnacionalidade FOREIGN KEY (id_nacionalidade) REFERENCES nacionalidade (id_nacionalidade);

UPDATE cliente SET id_nacionalidade = 1 WHERE id_cliente IN (4, 2, 10, 17, 11, 3 ,14, 6, 1);
UPDATE cliente SET id_nacionalidade = 2 WHERE id_cliente IN (5, 7);
UPDATE cliente SET id_nacionalidade = 3 WHERE id_cliente IN (8);
UPDATE cliente SET id_nacionalidade = 4 WHERE id_cliente IN (9, 13)

-- Alterando complemento
ALTER TABLE cliente DROP complemento 
-- Casa - 4, 2, 1, 9, 13
-- apartamento - 17, 3, 7
-- null 12, 15, 10, 11, 14, 6 ,5 , 8

ALTER TABLE cliente ADD id_complemento INTEGER;
ALTER TABLE cliente ADD CONSTRAINT fk_cln_idcomplemento FOREIGN KEY (id_complemento) REFERENCES complemento (id_complemento);
UPDATE cliente SET id_complemento = 1 WHERE id_cliente IN (1, 2, 4, 9, 13);
UPDATE cliente SET id_complemento = 2 WHERE id_cliente IN (3, 7 ,17);

-- Alterando o bairro
ALTER TABLE cliente DROP bairro
-- Cidade Nova = 12, 13
-- Centro = 6, 8 , 9
-- São Pedro 5, 4 
-- Ana Rech 1 ,2
-- Santa Rosa 7 

ALTER TABLE cliente ADD id_bairro INTEGER;
ALTER TABLE cliente ADD CONSTRAINT fk_cln_idbairro FOREIGN KEY(id_bairro) REFERENCES bairro (id_bairro);
UPDATE cliente SET id_bairro = 1 WHERE id_cliente IN (12, 13);
UPDATE cliente SET id_bairro = 2 WHERE id_cliente IN (6, 8 , 9);
UPDATE cliente SET id_bairro = 3 WHERE id_cliente IN (5,4);
UPDATE cliente SET id_bairro = 4 WHERE id_cliente IN (7);
UPDATE cliente SET id_bairro = 5 WHERE id_cliente IN (1,2)

-- Criar table uf
CREATE TABLE uf (
	id_uf INTEGER NOT NULL,
	nome_uf VARCHAR(30) NOT NULL,
	sigla CHAR(2) NOT NULL,

	constraint pk_ufd_idunique PRIMARY KEY (id_uf),
	constraint un_ufd_nome UNIQUE (nome_uf),
	constraint un_ufd_sigla UNIQUE (sigla)
)

INSERT INTO uf (id_uf, nome_uf, sigla) VALUES (1, 'Santa Catarina', 'SC');
INSERT INTO uf (id_uf, nome_uf, sigla) VALUES (2, 'Parana', 'PR');
INSERT INTO uf (id_uf, nome_uf, sigla) VALUES (3, 'São Paulo', 'SP');
INSERT INTO uf (id_uf, nome_uf, sigla) VALUES (4, 'Minas Gerais', 'MG');
INSERT INTO uf (id_uf, nome_uf, sigla) VALUES (5, 'Rio de Janeiro', 'RJ');
INSERT INTO uf (id_uf, nome_uf, sigla) VALUES (6, 'Rio Grande do Sul', 'RS');

-- Criando tabela de municipio
CREATE TABLE municipio (
	id_municipio INTEGER NOT NULL,
	nome_municipio VARCHAR(30) NOT NULL,
	id_uf INTEGER NOT NULL,

	CONSTRAINT pk_mnc_idmunicipio PRIMARY KEY (id_municipio),
	CONSTRAINT fk_mnc_iduf FOREIGN KEY (id_uf) REFERENCES uf(id_uf)
);

INSERT INTO municipio (id_municipio, nome_municipio, id_uf) VALUES (1, 'Porto União', 1);
INSERT INTO municipio (id_municipio, nome_municipio, id_uf) VALUES (2, 'Canoinhas', 1);
INSERT INTO municipio (id_municipio, nome_municipio, id_uf) VALUES (3, 'Porto Vitória', 2);
INSERT INTO municipio (id_municipio, nome_municipio, id_uf) VALUES (4, 'General Carneiro', 2);
INSERT INTO municipio (id_municipio, nome_municipio, id_uf) VALUES (5, 'São Paulo', 3);
INSERT INTO municipio (id_municipio, nome_municipio, id_uf) VALUES (6, 'Rio de Janeiro', 5);
INSERT INTO municipio (id_municipio, nome_municipio, id_uf) VALUES (7, 'Uberlândia', 4);
INSERT INTO municipio (id_municipio, nome_municipio, id_uf) VALUES (8, 'Porto Alegre', 6);
INSERT INTO municipio (id_municipio, nome_municipio, id_uf) VALUES (9, 'Caxias do Sul', 6);
INSERT INTO municipio (id_municipio, nome_municipio, id_uf) VALUES (10, 'União da Vitória', 2); 

SELECT * FROM municipio
SELECT * FROM cliente
ALTER TABLE cliente DROP municipio;
ALTER TABLE cliente DROP uf
ALTER TABLE cliente ADD id_municipio INTEGER;
ALTER TABLE cliente ADD CONSTRAINT fk_cliente_idmunicipio FOREIGN KEY (id_municipio) REFERENCES municipio (id_municipio);

UPDATE cliente SET id_municipio = 1 WHERE id_cliente IN (10, 11);
UPDATE cliente SET id_municipio = 2 WHERE id_cliente IN (3, 12);
UPDATE cliente set id_municipio = 3 WHERE id_cliente IN (4);
UPDATE cliente SET id_municipio = 4 WHERE id_cliente IN (5);
UPDATE cliente SET id_municipio = 5 WHERE id_cliente IN (6,13);
UPDATE cliente SET id_municipio = 6 WHERE id_cliente IN (7);
UPDATE cliente SET id_municipio = 7 WHERE id_cliente IN (8);
UPDATE cliente SET id_municipio = 8 WHERE id_cliente IN (9);
UPDATE cliente SET id_municipio = 9 WHERE id_cliente IN (1,2);
UPDATE cliente SET id_municipio = 10 WHERE id_cliente IN (15);


	-- Criar tabela de fornecedor
CREATE TABLE fornecedor (
		id_fornecedor INTEGER NOT NULL PRIMARY KEY,
		nome_fornecedor VARCHAR(50) UNIQUE NOT NULL
	);

INSERT INTO fornecedor(id_fornecedor, nome_fornecedor) VALUES (1, 'Cap. Computadores');
INSERT INTO fornecedor(id_fornecedor, nome_fornecedor) VALUES (2, 'AA. Computadores');
INSERT INTO fornecedor(id_fornecedor, nome_fornecedor) VALUES (3, 'BB Máquinas');	

-- Criar tabela de Vendedor
	CREATE TABLE vendedor (
		id_vendedor INTEGER PRIMARY KEY NOT NULL,
		nome_vendedor VARCHAR(50) UNIQUE NOT NULL
	);

INSERT INTO vendedor(id_vendedor, nome_vendedor) VALUES (1, 'André');
INSERT INTO vendedor(id_vendedor, nome_vendedor) VALUES (2, 'Alisson');
INSERT INTO vendedor(id_vendedor, nome_vendedor) VALUES (3, 'José');
INSERT INTO vendedor(id_vendedor, nome_vendedor) VALUES (4, 'Ailton');
INSERT INTO vendedor(id_vendedor, nome_vendedor) VALUES (5, 'Maria');
INSERT INTO vendedor(id_vendedor, nome_vendedor) VALUES (6, 'Suelem');
INSERT INTO vendedor(id_vendedor, nome_vendedor) VALUES (7, 'Aline');
INSERT INTO vendedor(id_vendedor, nome_vendedor) VALUES (8, 'Silvana');

-- Criar tabela de Transportadora:
	CREATE TABLE transportadora (
		id_transportadora INTEGER PRIMARY KEY NOT NULL,
		id_municipio INTEGER ,
		nome_transportadora VARCHAR(50) UNIQUE NOT NULL,
		logradouro VARCHAR(50),
		numero VARCHAR(10),

		FOREIGN KEY (id_municipio) REFERENCES municipio(id_municipio)
	);

INSERT INTO transportadora (id_transportadora, id_municipio, nome_transportadora, logradouro, numero) VALUES (1, 10, 'BS.Transportes', 'Rua das Limas', '01' );
INSERT INTO transportadora (id_transportadora, id_municipio, nome_transportadora, logradouro, numero) VALUES (2, 5, 'União Transportes', null, null );

-- Criar tabela Produto
	CREATE TABLE produto (
		id_produto INTEGER PRIMARY KEY NOT NULL,
		id_fornecedor INTEGER NOT NULL,
		nome_produto VARCHAR(50) NOT NULL,
		valor FLOAT NOT NULL,

		FOREIGN KEY (id_fornecedor) REFERENCES fornecedor (id_fornecedor)
	);
		
INSERT INTO produto (id_produto, id_fornecedor, nome_produto, valor) VALUES (1, 1, 'Microcomputador', 800);
INSERT INTO produto (id_produto, id_fornecedor, nome_produto, valor) VALUES (2, 1, 'Monitor', 500);
INSERT INTO produto (id_produto, id_fornecedor, nome_produto, valor) VALUES (3, 2, 'Placa Mãe', 200);
INSERT INTO produto (id_produto, id_fornecedor, nome_produto, valor) VALUES (4, 2, 'HD', 150);
INSERT INTO produto (id_produto, id_fornecedor, nome_produto, valor) VALUES (5, 2, 'Placa de Vídeo', 200);
INSERT INTO produto (id_produto, id_fornecedor, nome_produto, valor) VALUES (6, 3, 'Memória Ram', 100);
INSERT INTO produto (id_produto, id_fornecedor, nome_produto, valor) VALUES (7, 1, 'Gabinete', 35);


-- Criar tabelas de pedidos
	CREATE TABLE pedido (
		id_pedido INTEGER PRIMARY KEY NOT NULL,
		id_cliente INTEGER NOT NULL,
		id_transportadora INTEGER,
		id_vendedor INTEGER NOT NULL,
		data_pedido DATE NOT NULL,
		valor FLOAT NOT NULL,

		FOREIGN KEY (id_cliente) REFERENCES cliente (id_cliente),
		FOREIGN KEY (id_transportadora) REFERENCES transportadora (id_transportadora),
		FOREIGN KEY (id_vendedor) REFERENCES vendedor (id_vendedor)
		);


-- Inserir os dados do pedido
INSERT INTO pedido (id_pedido, data_pedido, valor, id_cliente, id_transportadora, id_vendedor) VALUES (1, '2008-04-01', 1300, 1, 1, 1);
INSERT INTO pedido (id_pedido, data_pedido, valor, id_cliente, id_transportadora, id_vendedor) VALUES (2, '2008-04-01', 500, 2, 1, 1);
INSERT INTO pedido (id_pedido, data_pedido, valor, id_cliente, id_transportadora, id_vendedor) VALUES (3, '2008-04-02', 300, 11, 2, 5);
INSERT INTO pedido (id_pedido, data_pedido, valor, id_cliente, id_transportadora, id_vendedor) VALUES (4, '2008-04-05', 1000, 8, 1, 7);
INSERT INTO pedido (id_pedido, data_pedido, valor, id_cliente, id_transportadora, id_vendedor) VALUES (5, '2008-04-06', 200, 9, 2, 6);
INSERT INTO pedido (id_pedido, data_pedido, valor, id_cliente, id_transportadora, id_vendedor) VALUES (6, '2008-04-06', 1985, 10, 1, 6);
INSERT INTO pedido (id_pedido, data_pedido, valor, id_cliente, id_transportadora, id_vendedor) VALUES (7, '2008-04-06', 800, 3, 1, 7);
INSERT INTO pedido (id_pedido, data_pedido, valor, id_cliente, id_transportadora, id_vendedor) VALUES (8, '2008-04-06', 175, 3, null, 7);
INSERT INTO pedido (id_pedido, data_pedido, valor, id_cliente, id_transportadora, id_vendedor) VALUES (9, '2008-04-07', 1300, 12, null, 1);
INSERT INTO pedido (id_pedido, data_pedido, valor, id_cliente, id_transportadora, id_vendedor) VALUES (10, '2008-04-10', 200, 6, 1, 8);
INSERT INTO pedido (id_pedido, data_pedido, valor, id_cliente, id_transportadora, id_vendedor) VALUES (11, '2008-04-15', 300, 15, 2, 1);
INSERT INTO pedido (id_pedido, data_pedido, valor, id_cliente, id_transportadora, id_vendedor) VALUES (12, '2008-04-20', 500, 15, 2, 1);
INSERT INTO pedido (id_pedido, data_pedido, valor, id_cliente, id_transportadora, id_vendedor) VALUES (13, '2008-04-20', 350, 9, 1, 7);
INSERT INTO pedido (id_pedido, data_pedido, valor, id_cliente, id_transportadora, id_vendedor) VALUES (14, '2008-04-23', 300, 17, 1, 5);
INSERT INTO pedido (id_pedido, data_pedido, valor, id_cliente, id_transportadora, id_vendedor) VALUES (15, '2008-04-25', 200, 11, null, 5);

CREATE TABLE pedido_produto (
		id_pedido INTEGER NOT NULL,
		id_produto INTEGER  NOT NULL,
		quantidade INTEGER NOT NULL,
		valor_unitario FLOAT NOT NULL,

		PRIMARY KEY  (id_pedido, id_produto),
		FOREIGN KEY (id_pedido) REFERENCES pedido (id_pedido),
		FOREIGN KEY (id_produto) REFERENCES produto (id_produto)
	);

-- Inserir pedido_produto
INSERT INTO pedido_produto (id_pedido, id_produto, quantidade, valor_unitario) VALUES (1, 1, 1, 800);
INSERT INTO pedido_produto (id_pedido, id_produto, quantidade, valor_unitario) VALUES (1, 2, 1, 500);
INSERT INTO pedido_produto (id_pedido, id_produto, quantidade, valor_unitario) VALUES (2, 2, 1, 500);
INSERT INTO pedido_produto (id_pedido, id_produto, quantidade, valor_unitario) VALUES (3, 4, 2, 150);
INSERT INTO pedido_produto (id_pedido, id_produto, quantidade, valor_unitario) VALUES (4, 1, 1, 800);
INSERT INTO pedido_produto (id_pedido, id_produto, quantidade, valor_unitario) VALUES (4, 3, 1, 200);
INSERT INTO pedido_produto (id_pedido, id_produto, quantidade, valor_unitario) VALUES (5, 3, 1, 200);
INSERT INTO pedido_produto (id_pedido, id_produto, quantidade, valor_unitario) VALUES (6, 1, 2, 800);
INSERT INTO pedido_produto (id_pedido, id_produto, quantidade, valor_unitario) VALUES (6, 7, 1, 35);
INSERT INTO pedido_produto (id_pedido, id_produto, quantidade, valor_unitario) VALUES (6, 5, 1, 200);
INSERT INTO pedido_produto (id_pedido, id_produto, quantidade, valor_unitario) VALUES (6, 4, 1, 150);
INSERT INTO pedido_produto (id_pedido, id_produto, quantidade, valor_unitario) VALUES (7, 1, 1, 800);
INSERT INTO pedido_produto (id_pedido, id_produto, quantidade, valor_unitario) VALUES (8, 7, 5, 35);
INSERT INTO pedido_produto (id_pedido, id_produto, quantidade, valor_unitario) VALUES (9, 1, 1, 800);
INSERT INTO pedido_produto (id_pedido, id_produto, quantidade, valor_unitario) VALUES (9, 2, 1, 500);
INSERT INTO pedido_produto (id_pedido, id_produto, quantidade, valor_unitario) VALUES (10, 5, 1, 200);
INSERT INTO pedido_produto (id_pedido, id_produto, quantidade, valor_unitario) VALUES (11, 5, 1, 200);
INSERT INTO pedido_produto (id_pedido, id_produto, quantidade, valor_unitario) VALUES (11, 6, 1, 100);
INSERT INTO pedido_produto (id_pedido, id_produto, quantidade, valor_unitario) VALUES (12, 2, 1, 500);
INSERT INTO pedido_produto (id_pedido, id_produto, quantidade, valor_unitario) VALUES (13, 3, 1, 200);
INSERT INTO pedido_produto (id_pedido, id_produto, quantidade, valor_unitario) VALUES (14, 6, 3, 100);
INSERT INTO pedido_produto (id_pedido, id_produto, quantidade, valor_unitario) VALUES (15, 3, 1, 100);

SELECT * FROM municipio
SELECT * FROM cliente WHERE id_municipio = 1 or id_municipio = 2;

select * from cliente

-- Relacionamentos com Joins
	-- Exemplo com left outer join
SELECT 
	cln.nome AS cliente,
	prf.nome AS profissao	
FROM
	cliente AS cln
left outer join -- retorna a relação das duas tabelas, se não tiver correspondencia com a tabela da direita ele retorna null
	profissao AS prf on cln.id_profissao = prf.id_profissao

-- Exemplo com inner join
SELECT 
	cln.nome AS cliente,
	prf.nome AS profissao
FROM 
	cliente as cln
INNER JOIN -- Obriga que exista o relacionamento entre eles, alguns registros não serão retornados
	profissao AS prf on cln.id_profissao = prf.id_profissao

-- Right outer join
SELECT 
	cln.nome AS cliente,
	prf.nome AS profissao
FROM
	cliente AS cln
RIGHT OUTER JOIN
 	profissao as prf ON cln.id_profissao = prf.id_profissao

-- Comandos adicionais
SELECT * FROM pedido
	
SELECT 
	EXTRACT(day from data_pedido),
	EXTRACT(month from data_pedido),
	EXTRACT(year from data_pedido)
FROM 
	pedido


SELECT nome, substring(nome from 1 for 5) from cliente -- seleciona do caractere 1 ao 5
SELECT nome, substring(nome from 1 for 5), substring(nome,2) FROM cliente -- tira as duas primeiras e começa a partir da 3 letra

SELECT nome, upper(nome) from cliente -- deixa o nome maiusculo
SELECT nome, cpf, coalesce(cpf, 'Não informado') from cliente -- Adiciona uma mensagem nos campos null

SELECT 
	case sigla
		when 'PR' then 'Paraná'
		when 'SC' then 'Santa Catarina'
	else 'Outros'
	end as uf
FROM
	uf

-- Subconsultas

-- Selecionar a data do pedido e o valor onde o valor seja maior que a média dos valores de todos os pedidos
SELECT 
	data_pedido,
	valor
FROM 
	pedido
WHERE
	valor > select avg(valor) from pedido
 
-- Exemplo com count
SELECT 
	pdd.data_pedido,
	pdd.valor,
	(SELECT SUM(quantidade) FROM pedido_produto AS pdp WHERE pdp.id_pedido = pdd.id_pedido) AS total
FROM 
	pedido AS pdd


-- Exemplo com update
-- Exemplo alterar o preço dos pedidos 
UPDATE pedido set valor = valor + ((valor * 5) / 100)
WHERE valor > (select avg(valor) from pedido)

-- Views - são utilizadas para criar visões da tabela
-- Exemplo nome e profissão da pessoa
CREATE VIEW cliente_profissao as
SELECT 
	cln.nome AS cliente,
	prf.nome as profissao
FROM 
	cliente as cln
LEFT OUTER JOIN 
	profissao as prf on cln.id_profissao = prf.id_profissao

-- Para executar essa view rodar o seguinte comando:
SELECT * FROM cliente_profissao WHERE cliente = 'Felipe Andrades'

-- Para fazer alguma alteração na view, é fazer um drop, adicionar as alterações necessárias e criar novamente.
DROP VIEW cliente_profissao

CREATE VIEW cliente_profissao as
SELECT 
	cln.nome AS cliente,
	cln.cpf,
	prf.nome as profissao
FROM 
	cliente as cln
LEFT OUTER JOIN 
	profissao as prf on cln.id_profissao = prf.id_profissao
-- Foi adicionado o CPF

-- Exemplo de serial
CREATE TABLE exemplo (
	id_exemplo SERIAL NOT NULL,
	nome VARCHAR(50),

	constraint pk_exemplo_idexemplo PRIMARY KEY(id_exemplo)
);

INSERT INTO exemplo (nome) VALUES ('Exemplo 1');
INSERT INTO exemplo (nome) VALUES ('Exemplo 2');
INSERT INTO exemplo (nome) VALUES ('Exemplo 3');
INSERT INTO exemplo (nome) VALUES ('Exemplo 4');
INSERT INTO exemplo (nome) VALUES ('Exemplo 5');

SELECT * FROM exemplo

-- Alterar tabelas para serem sequenciais os id's
 -- Visualizar a tabela bairro
SELECT * FROM bairro

SELECT max(id_bairro) + 1 from bairro

-- Criando sequencia para sequencia
CREATE SEQUENCE bairro_id_seq minvalue 6

-- Vincular a sequencia na tabela de bairro
ALTER TABLE bairro alter id_bairro SET DEFAULT nextval('bairro_id_seq');
-- Alterar a sequencia
ALTER SEQUENCE bairro_id_seq OWNED BY bairro.id_bairro

SELECT * FROM bairro
INSERT INTO bairro (nome) VALUES('Teste')

-- Deletar registro de teste
DELETE FROM cliente WHERE id_cliente = 18

-- Campos default:
ALTER TABLE pedido ALTER column data_pedido SET DEFAULT current_date; -- se não for mencionado nenhuma data, coloca a data atual
ALTER TABLE pedido ALTER column valor SET DEFAULT 0;

-- Indices
CREATE INDEX idx_cln_nome ON cliente (nome); -- usado para acelar as pesquisas na base de dados
-- Quanto mais indices você adiciona, mais o banco de dados fica pesado



-- Tópicos especiais
 -- Funções / Stored Procedures (procedimentos armazenados) / Trigger / Dominios / Usuarios e permissoes / Transacoes / Backup e Restore
 
-- Funções:
SELECT valor, concat('R$', round(cast(valor as numeric), 2)) FROM pedido

-- Criada uma função para formatar o valor 
CREATE FUNCTION formata_moeda(valor float) RETURNS VARCHAR(20) LANGUAGE plpgsql as
$$
BEGIN
	RETURN concat('R$', round(cast(valor as numeric), 2));
END;
$$;

-- Ao chamar a função ela vai formatar automaticamente o valor
SELECT valor, formata_moeda(valor) FROM pedido

-- Fazer o mesmo para tabela de produto
SELECT valor, formata_moeda(valor) FROM produto

-- Fazer uma função que ira retornar o nome do cliente com base no id do mesmo
CREATE FUNCTION get_nome_by_id(idc INTEGER) RETURNS VARCHAR(50) LANGUAGE plpgsql AS
$$
DECLARE r VARCHAR(50);
BEGIN
	SELECT nome INTO r FROM cliente WHERE id_cliente = idc;
	RETURN r;
END;
$$;

SELECT data_pedido, valor, get_nome_by_id(id_cliente) FROM pedido

-- Stored Procedures
CREATE PROCEDURE insere_bairro(nome_bairro VARCHAR(30)) LANGUAGE SQL AS
$$
	INSERT INTO bairro(nome) VALUES(nome_bairro);
$$;
SELECT * FROM bairro
CALL insere_bairro('Serrano')
