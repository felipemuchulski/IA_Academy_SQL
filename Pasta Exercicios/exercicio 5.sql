-- Exercicios Relacionamentos com Join
-- 1 O nome do cliente, a profissão, a nacionalidadem o logradouro, o número, o complemento, o bairro, o municipio, e a unidade de federação
SELECT 
	cln.nome AS nome_cliente,
	prf.nome AS profissao,
    ncn.nome AS nacionalidade, 
	cln.logradouro AS logradouro,
	cln.numero AS numero,
	cnp.nome AS complemento,
	bro.nome AS bairro,
	mnc.nome_municipio AS municipio,
	uf.nome_uf AS uf
FROM 
	cliente AS cln
LEFT OUTER JOIN
	profissao as prf on cln.id_profissao = prf.id_profissao
LEFT OUTER JOIN 
	nacionalidade as ncn on cln.id_nacionalidade = ncn.id_nacionalidade
LEFT OUTER JOIN 
	complemento as cnp on cln.id_complemento = cnp.id_complemento
LEFT OUTER JOIN
	bairro AS bro on cln.id_bairro = bro.id_bairro
LEFT OUTER JOIN 
	municipio AS mnc on cln.id_municipio = mnc.id_municipio
LEFT OUTER JOIN 
	uf as uf on mnc.id_uf = uf.id_uf

-- 2 O nome do produto, o valor, e o nome do fornecedor
SELECT
	pdt.nome_produto AS nome_produto,
	pdt.valor AS valor,
	fnc.nome_fornecedor AS fornecedor
FROM produto as pdt
LEFT OUTER JOIN
	fornecedor AS fnc on pdt.id_fornecedor = fnc.id_fornecedor

-- 3 O nome da transportadora e municipio
SELECT 
	trs.nome_transportadora as transportadora,
	mnc.nome_municipio as municipio
	FROM transportadora AS trs
LEFT OUTER JOIN
	municipio AS mnc ON trs.id_municipio = trs.id_municipio

-- 4 A data do pedido, o valor, o nome do cliente, o nome da transportadora, e o nome do vendedor
SELECT 
	pid.data_pedido AS data,
	pid.valor AS valor,
	cln.nome AS cliente,
	trs.nome_transportadora AS transportadora,
	ved.nome_vendedor AS vendedor
FROM 
	pedido as pid
LEFT OUTER JOIN
	cliente AS cln on pid.id_cliente = cln.id_cliente
LEFT OUTER JOIN 
	transportadora AS trs ON pid.id_transportadora = trs.id_transportadora
LEFT OUTER JOIN
	vendedor AS ved on pid.id_vendedor = ved.id_vendedor

-- 5 O nome do produto, a quantidade, e o valor unitario dos produtos do pedido
SELECT 
	pdt.nome_produto AS produto,
	ped.quantidade AS quantidade,
	ped.valor_unitario AS valor	
FROM 
	pedido_produto AS ped
LEFT OUTER JOIN 
 	produto AS pdt ON ped.id_produto = pdt.id_produto

-- 6 O nome dos clientes e a data do pedido de todos os clientes (ordenado pelo nome do cliente);
SELECT 
	cln.nome AS cliente,
	pid.data_pedido AS data	
FROM cliente AS cln
INNER JOIN
	pedido AS pid ON pid.id_cliente = cln.id_cliente

-- 7 O nome dos clientes e a data do pedido de todos os clientes, independente se tenham feito o pedido
SELECT 
	cln.nome AS cliente,
	pid.data_pedido AS data	
FROM cliente AS cln
LEFT OUTER JOIN
	pedido AS pid ON pid.id_cliente = cln.id_cliente

-- 8 O nome da cidade e a quantide de clientes que moram naquela cidade.
SELECT 
	mnc.nome_municipio,
	count(cln.id_cliente)
FROM 
	cliente as cln
LEFT OUTER JOIN
	municipio AS mnc on cln.id_municipio = mnc.id_municipio
GROUP BY
	mnc.nome_municipio

-- 9 O nome do fornecedor e a quantidade de produtos de cada fornecedor
SELECT 
	frn.nome_fornecedor AS fornecedor,
	count(pdd.id_produto)
FROM
	produto AS pdd
LEFT OUTER JOIN 
	fornecedor as frn on pdd.id_fornecedor = frn.id_fornecedor
GROUP BY
frn.nome_fornecedor

-- 10 O nome do cliente e o somatorio do valor do pedido (agrupado por cliente);
SELECT 
    cln.nome AS cliente,
	sum(pdd.valor) AS valor
FROM 
	pedido AS pdd
LEFT OUTER JOIN
	cliente as cln on pdd.id_cliente = cln.id_cliente
GROUP BY
cln.nome ORDER BY cln.nome ASC

-- 11 O nome do vendedor e o somatório do valor do pedido (agrupado por vendedor)
SELECT 
	vnd.nome_vendedor AS vendedor,
	SUM(pdd.valor)
FROM
	pedido AS pdd
LEFT OUTER JOIN 
	vendedor AS vnd ON pdd.id_vendedor = vnd.id_vendedor
GROUP BY
vnd.nome_vendedor ORDER BY vnd.nome_vendedor ASC

-- 12 O nome da transportadora e o somátorio do valor do pedido (agrupado por transportadora)
SELECT 
	trn.nome_transportadora AS transportadora,
	sum(pdd.valor)
FROM
	pedido AS pdd
INNER JOIN
	transportadora AS trn ON pdd.id_transportadora = trn.id_transportadora
GROUP BY 
trn.nome_transportadora

-- 13 O nome do cliente e a quantidade de pedidos de cada um (agrupado por cliente)
SELECT 
	cln.nome AS cliente,
	count(pdd.id_pedido) AS total
FROM 
	pedido AS pdd
LEFT OUTER JOIN 
	cliente AS cln ON pdd.id_cliente = cln.id_cliente
GROUP BY
cln.nome


-- 14 O nome do produto e a quantidade vendida (agrupado por produto)
SELECT 
	pdt.nome_produto as produto,
	count(pdd.id_produto)
FROM 
	pedido_produto AS pdd
LEFT OUTER JOIN
	produto AS pdt on pdd.id_produto = pdt.id_produto
GROUP BY
pdt.nome_produto

-- 15 A data do pedido e o somátorio do valor dos produtos do pedido (agrupado pela data);
SELECT 
	pdd.data_pedido AS data,
	sum(pdp.valor_unitario) AS total
FROM 
	pedido_produto as pdp
LEFT OUTER JOIN 
	pedido as pdd on pdp.id_pedido = pdd.id_pedido
GROUP BY 
	pdd.data_pedido

-- 16 A data do pedido e a quantidade de produtos do pedido (agrupado pela data do pedido)
SELECT 
	pdd.data_pedido AS data,
	count(pdp.quantidade) AS quantidade
FROM 
	pedido_produto AS pdp
LEFT OUTER JOIN
	pedido as pdd on pdp.id_pedido = pdd.id_pedido
GROUP BY
pdd.data_pedido
