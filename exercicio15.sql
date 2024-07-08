-- Exercicio alterar as informações de todas as tabelas para os dóminios.

-- tabela bairro_auditoria
SELECT * FROM bairro_auditoria
ALTER TABLE bairro_auditoria ALTER COLUMN data_criacao TYPE data_hora;

-- tabela cliente
SELECT * FROM cliente

ALTER TABLE cliente ALTER COLUMN nome TYPE nome_medio -- necessita dropar a view cliente_profissao e cliente_dados

DROP VIEW cliente_profissao
DROP VIEW cliente_dados