-- Inserir os seguintes dados na tabela de clientes:
INSERT INTO cliente (id_cliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf) 
VALUES (16, 'Maicon', '12349596421', '1234', '1965-10-10', 'F', 'Empresário', NULL, NULL, NULL, NULL, NULL, 'Florianópolis', 'PR');

INSERT INTO cliente (id_cliente, nome, cpf, rg, data_nascimento, genero, profissao,  nacionalidade,logradouro, numero, complemento, bairro, municipio, uf)
VALUES (17, 'Getúlio', NULL, '4631', NULL, 'F', 'Estudante', 'Brasileira', 'Rua Central', '343', 'Apartamento', 'Centro', 'Curitiba' , 'SC');

INSERT INTO cliente (id_cliente, nome, cpf, rg, data_nascimento, genero, profissao, nacionalidade, logradouro, numero, complemento, bairro, municipio, uf)
VALUES (18, 'Sandra', NULL, NULL, NULL, 'M', 'Professor', 'Italiana', NULL, '12', 'Bloco A', NULL, NULL, NULL);

-- Alterar os dados do cliente Maicon
UPDATE cliente 
SET cpf = '44390569432', 
    genero = 'M', 
    nacionalidade = 'Brasileira', 
    uf = 'SC' 
WHERE id_cliente = 16;

-- Alterar os dados do cliente Getulio:
UPDATE cliente 
 SET data_nascimento = '1978/04/01',
 genero = 'M'
 WHERE id_cliente = 17
 
 
 -- Alterar os dados da cliente Sandra
 UPDATE cliente
 SET genero = 'F',
 profissao = 'Professora',
 numero = '123'
 WHERE id_cliente = 18
 
 -- Apagar o cliente Maicon e a Sandra
 DELETE FROM cliente WHERE id_cliente = 16 OR id_cliente = 18;
 
 SELECT * FROM cliente