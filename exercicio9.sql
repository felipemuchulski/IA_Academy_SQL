-- Exercícios sequences – auto incremento



-- 1. Criar sequências para todas as outras tabelas da base de dados

-- a. Cliente
SELECT max(id_cliente) FROM cliente

CREATE SEQUENCE cliente_id_seq MINVALUE 18;

ALTER TABLE cliente ALTER id_cliente SET DEFAULT nextval('cliente_id_seq');

ALTER SEQUENCE cliente_id_seq OWNED BY cliente.id_cliente

SELECT * FROM cliente order by id_cliente ASC

-- b. Complemento
SELECT MAX(id_complemento) FROM complemento

CREATE SEQUENCE complemento_id_seq MINVALUE 3

ALTER TABLE complemento ALTER id_complemento SET DEFAULT nextval('complemento_id_seq');

ALTER SEQUENCE complemento_id_seq OWNED BY complemento.id_complemento

-- c. Fornecedor

SELECT MAX(id_fornecedor) FROM fornecedor

CREATE SEQUENCE fornecedor_id_seq MINVALUE 4

ALTER TABLE	fornecedor ALTER id_fornecedor SET DEFAULT nextval('fornecedor_id_seq')

ALTER SEQUENCE fornecedor_id_seq OWNED BY fornecedor.id_fornecedor

-- d. Município

SELECT MAX(id_municipio) FROM municipio

CREATE SEQUENCE municipio_id_seq MINVALUE 11

ALTER TABLE municipio ALTER id_municipio SET DEFAULT nextval('municipio_id_seq')

ALTER SEQUENCE municipio_id_seq OWNED BY municipio.id_municipio

-- e. Nacionalidade
SELECT MAX(id_nacionalidade) FROM nacionalidade

CREATE SEQUENCE nacionalidade_id_seq MINVALUE 5

ALTER TABLE nacionalidade ALTER id_nacionalidade SET DEFAULT nextval('nacionalidade_id_seq');

ALTER SEQUENCE nacionalidade_id_seq OWNED BY nacionalidade.id_nacionalidade;

-- f. Pedido

SELECT MAX(id_pedido) FROM pedido

CREATE SEQUENCE pedido_id_seq MINVALUE 16

ALTER TABLE pedido ALTER id_pedido SET DEFAULT nextval('pedido_id_seq');

ALTER SEQUENCE pedido_id_seq OWNED BY pedido.id_pedido

-- g. Pedido produto (verificar se é necessário)

SELECT MAX(id_pedido) FROM pedido_produto

CREATE SEQUENCE pdp_id_seq MINVALUE 16

ALTER TABLE pedido_produto ALTER id_pedido SET DEFAULT nextval('pdp_id_seq');

ALTER SEQUENCE pdp_id_seq OWNED BY pedido_produto.id_pedido
	
-- h. Profissão
SELECT MAX(id_profissao) FROM profissao

CREATE SEQUENCE profissao_id_seq MINVALUE 7

ALTER TABLE profissao ALTER id_profissao SET DEFAULT nextval('profissao_id_seq');

ALTER SEQUENCE profissao_id_seq OWNED BY profissao.id_profissao

-- i. Transportadora
SELECT MAX(id_transportadora) FROM transportadora

CREATE SEQUENCE transp_id_seq MINVALUE 3

ALTER TABLE transportadora ALTER id_transportadora SET DEFAULT nextval('transp_id_seq');

ALTER SEQUENCE transp_id_seq OWNED BY transportadora.id_transportadora

-- j. UF
SELECT MAX(id_uf) FROM uf
 
CREATE SEQUENCE uf_id_seq MINVALUE 7

ALTER TABLE uf ALTER id_uf SET DEFAULT nextval('uf_id_seq')

ALTER SEQUENCE uf_id_seq OWNED BY uf.id_uf

-- k. Vendedor
SELECT MAX(id_vendedor) FROM vendedor

CREATE SEQUENCE vend_id_seq MINVALUE 9

ALTER TABLE vendedor ALTER id_vendedor SET DEFAULT nextval('vend_id_seq')

ALTER SEQUENCE vend_id_seq OWNED BY vendedor.id_vendedor