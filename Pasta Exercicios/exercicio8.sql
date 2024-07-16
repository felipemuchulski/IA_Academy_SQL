--Exercícios views

-- 1. O nome, a profissão, a nacionalidade, o complemento, o município, a unidade de federação, o bairro, o CPF,o RG, a data de nascimento, o gênero (mostrar “Masculino” ou “Feminino”), o logradouro, o número e as observações dos clientes.

CREATE VIEW cliente_dados as
SELECT 
	cln.nome AS cliente,
	prf.nome AS profissao,
	ncn.nome AS nacionalidade,
	mnc.nome_municipio AS municipio,
	uf.nome_uf AS uf,
	brr.nome AS bairro,
	cln.cpf AS cpf,
	cln.rg AS rg,
	cln.data_nascimento AS data,
	CASE cln.genero 
	WHEN 'M' THEN 'Masculino'
	WHEN 'F' THEN 'Feminino'
	ELSE 'Não informado'
	end as genero,
	cln.logradouro AS logradouro,
	cln.numero,
	cln.observacoes AS obs
FROM 
	cliente AS cln
LEFT OUTER JOIN
	profissao AS prf ON cln.id_profissao = prf.id_profissao
LEFT OUTER JOIN 
	nacionalidade AS ncn ON cln.id_nacionalidade = ncn.id_nacionalidade
LEFT OUTER JOIN
	municipio AS mnc ON cln.id_municipio = mnc.id_municipio
LEFT OUTER JOIN
	uf ON mnc.id_uf = uf.id_uf
LEFT OUTER JOIN
	bairro AS brr ON cln.id_bairro = brr.id_bairro

SELECT * FROM cliente_dados

-- 2. O nome do município e o nome e a sigla da unidade da federação.
CREATE VIEW municipio_uf AS
SELECT
	mnc.nome_municipio AS municipio,
	uf.nome_uf AS federacao,
	uf.sigla
FROM 
	municipio AS mnc
LEFT OUTER JOIN
	uf as uf on mnc.id_uf = uf.id_uf

DROP VIEW municipio_uf

-- 3. O nome do produto, o valor e o nome do fornecedor dos produtos.
CREATE VIEW produto_fornecedor AS 
SELECT 
	prt.nome_produto AS produto,
    prt.valor AS valor,
    frc.nome_fornecedor
FROM 
	produto AS prt
LEFT OUTER JOIN
	fornecedor AS frc ON prt.id_fornecedor = frc.id_fornecedor

DROP VIEW produto_fornecedor

-- 4. O nome da transportadora, o logradouro, o número, o nome da unidade de federação e a sigla da unidade de federação das transportadoras.
CREATE VIEW transportadora_uf AS
SELECT 
	trp.nome_transportadora AS transportadora,
	trp.logradouro,
	uf.nome_uf AS federecao,
	(select sigla from uf WHERE mnc.id_uf = uf.id_uf)
FROM 
	transportadora trp
LEFT OUTER JOIN
	municipio as mnc on trp.id_municipio = trp.id_municipio
LEFT OUTER JOIN
	uf on mnc.id_uf = uf.id_uf
	
DROP VIEW transportadora_uf
-- 5. A data do pedido, o valor, o nome da transportadora, o nome do cliente e o nome do vendedor dos pedidos.
CREATE VIEW data_vendedor AS
	SELECT 
	pdd.data_pedido AS data,
	pdd.valor,
	trn.nome_transportadora AS transportadora,
	cln.nome AS cliente,
	vnd.nome_vendedor AS vendedor
FROM 
	pedido AS pdd
LEFT OUTER JOIN 
	transportadora AS trn ON pdd.id_transportadora = trn.id_transportadora
LEFT OUTER JOIN
	cliente AS cln ON pdd.id_cliente = cln.id_cliente
LEFT OUTER JOIN 
	vendedor AS vnd On pdd.id_vendedor = vnd.id_vendedor

-- 6. O nome do produto, a quantidade, o valor unitário e o valor total dos produtos do pedido.
CREATE VIEW info_produto AS
	SELECT 
	prd.nome_produto AS nome,
	pdp.quantidade,
	pdp.valor_unitario
FROM 
	pedido_produto AS pdp
LEFT OUTER JOIN 
	produto AS prd ON pdp.id_produto = prd.id_produto
