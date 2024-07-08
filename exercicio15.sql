-- Exercicio alterar as informações de todas as tabelas para os dóminios.

-- tabela bairro_auditoria
SELECT * FROM bairro_auditoria
ALTER TABLE bairro_auditoria ALTER COLUMN data_criacao TYPE data_hora;

-- tabela cliente
SELECT * FROM cliente

ALTER TABLE cliente ALTER COLUMN nome TYPE nome_medio -- necessita dropar a view cliente_profissao e cliente_dados

DROP VIEW cliente_profissao;
DROP VIEW cliente_dados;

-- CRIAR NOVOS DOMINIOS PARA CLIENTE
CREATE DOMAIN documento AS varchar(15);
CREATE DOMAIN tipo AS char(1);
CREATE DOMAIN texto as text;

ALTER TABLE cliente ALTER COLUMN cpf TYPE documento;
ALTER TABLE cliente ALTER COLUMN rg TYPE documento;
ALTER TABLE cliente ALTER COLUMN data_nascimento TYPE data_hora;
ALTER TABLE cliente ALTER COLUMN genero TYPE tipo;
ALTER TABLE cliente ALTER COLUMN logradouro TYPE nome_medio;
ALTER TABLE cliente ALTER COLUMN numero TYPE codigo;
ALTER TABLE cliente ALTER COLUMN observacoes TYPE texto;
ALTER TABLE cliente ALTER COLUMN id_profissao TYPE id_medio;
ALTER TABLE cliente ALTER COLUMN id_nacionalidade TYPE id_medio;
ALTER TABLE cliente ALTER COLUMN id_bairro TYPE id_medio;
ALTER TABLE cliente ALTER COLUMN id_municipio TYPE id_medio;
ALTER TABLE cliente ALTER COLUMN id_complemento TYPE id_medio;

-- alterar tabela complemento 
ALTER TABLE complemento ALTER COLUMN nome TYPE nome_medio;

-- Alterar table fornecedor
ALTER TABLE fornecedor ALTER COLUMN nome_fornecedor TYPE nome_medio;

-- Alterar tabela municipio
ALTER TABLE municipio ALTER COLUMN nome_municipio TYPE nome_medio;
ALTER TABLE municipio ALTER COLUMN id_uf TYPE id_medio;

-- Alterar tabela nacionalidade
ALTER TABLE nacionalidade ALTER COLUMN nome TYPE nome_medio;

-- Alterar tabela de pedido
ALTER TABLE pedido ALTER COLUMN id_pedido TYPE id_longo;
ALTER TABLE pedido ALTER COLUMN id_cliente TYPE id_medio;
ALTER TABLE pedido ALTER COLUMN id_transportadora TYPE id_medio;
ALTER TABLE pedido ALTER COLUMN id_vendedor TYPE id_medio;
ALTER TABLE pedido ALTER COLUMN data_pedido TYPE data;
ALTER TABLE pedido ALTER COLUMN valor TYPE moeda;

-- Alterar pedido_produto
ALTER TABLE pedido_produto ALTER COLUMN id_pedido TYPE id_longo;
ALTER TABLE pedido_produto ALTER COLUMN id_produto TYPE id_medio;
ALTER TABLE pedido_produto ALTER COLUMN quantidade TYPE quantidade;
ALTER TABLE pedido_produto ALTER COLUMN valor_unitario TYPE moeda;

CREATE DOMAIN quantidade AS smallint;

-- Alterar tabela pedidos_apagados
ALTER TABLE pedidos_apagados ALTER COLUMN id_pedido TYPE id_longo;
ALTER TABLE pedidos_apagados ALTER COLUMN id_cliente TYPE id_medio;
ALTER TABLE pedidos_apagados ALTER COLUMN id_transportadora TYPE id_medio;
ALTER TABLE pedidos_apagados ALTER COLUMN id_vendedor TYPE id_medio;
ALTER TABLE pedidos_apagados ALTER COLUMN data_pedido TYPE data;
ALTER TABLE pedidos_apagados ALTER COLUMN valor TYPE moeda;

-- Alterar produto
ALTER TABLE produto ALTER COLUMN id_fornecedor TYPE id_medio;
ALTER TABLE produto ALTER COLUMN nome_produto TYPE nome_medio;
ALTER TABLE produto ALTER COLUMN valor TYPE moeda;


-- Alterar tabela de profissao 
ALTER TABLE profissao ALTER COLUMN nome TYPE nome_medio;

-- Alterar tabela transportadora
ALTER TABLE transportadora ALTER COLUMN id_municipio TYPE id_medio;
ALTER TABLE transportadora ALTER COLUMN nome_transportadora TYPE nome_medio;
ALTER TABLE transportadora ALTER COLUMN logradouro TYPE nome_medio;
ALTER TABLE transportadora ALTER COLUMN numero TYPE nome_curto;

-- Alterar tabela de uf
ALTER TABLE uf ALTER COLUMN nome_uf TYPE nome_medio;
ALTER TABLE uf ALTER COLUMN sigla TYPE sigla;

-- Alterar tabela vendedor
ALTER TABLE vendedor ALTER COLUMN nome_vendedor TYPE nome_medio;
