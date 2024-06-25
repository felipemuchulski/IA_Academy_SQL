-- Exercícios - subconsultas



-- 1. O nome dos clientes que moram na mesma cidade do Manoel. Não deve ser mostrado o Manoel.
SELECT 
	nome,
	id_municipio
FROM 
	cliente
WHERE
   id_municipio = (SELECT id_municipio FROM cliente where nome = 'Gilmar')
AND 
	id_cliente <> 12

-- 2. A data e o valor dos pedidos que o valor do pedido seja menor que a média de todos os pedidos.
select 
	data_pedido
	valor
FROM 
	pedido
WHERE
	 valor < (select avg(valor) from pedido)

-- 3. A data,o valor, o cliente e o vendedor dos pedidos que possuem 2 ou mais produtos.
SELECT 
	pdd.data_pedido,
	pdd.valor,
	cln.nome AS cliente,
	vnd.nome_vendedor
FROM 
	pedido AS pdd
LEFT OUTER JOIN
	cliente as cln on pdd.id_cliente = cln.id_cliente
LEFT OUTER JOIN 
	vendedor as vnd on pdd.id_vendedor = vnd.id_vendedor
WHERE 
	(select sum(quantidade) from pedido_produto AS pdp where pdp.id_pedido = pdd.id_pedido) >= 2



-- 4. O nome dos clientes que moram na mesma cidade da transportadora BSTransportes.
SELECT 
	cln.nome AS cliente,
	cln.id_municipio AS municipio
FROM 
	cliente as cln
WHERE
	id_municipio = (select id_municipio from transportadora where id_transportadora = 1)

-- 5. O nome do cliente e o município dos clientes que estão localizados no mesmo município de qualquer uma das transportadoras.

SELECT
	cln.nome as cliente,
	mnc.nome_municipio as municipio
FROM 
	cliente as cln
LEFT OUTER JOIN 
	municipio AS mnc on cln.id_municipio = mnc.id_municipio
WHERE 
	cln.id_municipio in (SELECT id_municipio FROM transportadora)

-- 6. Atualizar o valor do pedido em 5% para os pedidos que o somatório do valor total dos produtos daquele pedido seja maior que a média do valor total de todos os produtos de todos os pedidos.
update 
	pedido 
set 
	valor = valor + ((valor * 5) / 100)
WHERE 
	(select sum(valor_unitario) from pedido_produto as pdp WHERE pdp.id_pedido = pedido.id_pedido) > (SELECT avg(valor_unitario) from pedido_produto)


-- 7. O nome do cliente e a quantidade de pedidos feitos pelo cliente.
SELECT 
	cln.nome as cliente,
	(select count(id_pedido) from pedido as pdd where pdd.id_cliente = cln.id_cliente)
FROM 
	cliente as cln

-- 8. Para revisar, refaça o exercício anterior (número 07) utilizando group by e mostrando somente os clientes que fizeram pelo menos um pedido.

SELECT 
	cln.nome as cliente,
	count(pdd.id_pedido) as total
FROM 
	pedido as pdd
left outer join
	cliente as cln on pdd.id_cliente = cln.id_cliente
group by
	cln.nome

