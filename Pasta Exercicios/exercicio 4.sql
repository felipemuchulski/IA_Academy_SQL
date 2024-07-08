-- 1. A média dos valores de vendas dos vendedores que venderam mais que 200 reais
SELECT id_vendedor, AVG(valor) FROM pedido GROUP BY id_vendedor HAVING AVG(valor) > 200

-- 2. Os vendedores que venderam mais que 1500,00
SELECT id_vendedor, SUM(valor) FROM pedido GROUP BY id_vendedor HAVING SUM(valor) > 1500

-- 3. O somatório das vendas de cada vendedor
SELECT id_vendedor, SUM(valor) FROM pedido GROUP BY id_vendedor

-- 4. A quantidade de municipios
SELECT COUNT(id_municipio) AS quantidade FROM municipio

-- 5. A quantidade de municipios que são do Paraná ou de Santa Catarina
SELECT COUNT(id_municipio) FROM municipio WHERE id_uf = 1 or id_uf = 2

-- 6. A quantidade de municipios por estados
SELECT id_uf, COUNT(id_municipio) FROM municipio GROUP BY id_uf

-- 7 A quantidade de clientes que informaram o logradouro
SELECT count(id_cliente) FROM cliente WHERE logradouro IS NOT NULL

--  8. A quantidade de cliente por municipio
SELECT id_municipio, count(id_cliente) from cliente group by id_municipio

-- 9. A quantidade de fornecedores
SELECT count(id_fornecedor) FROM fornecedor

-- 10 quantidade de produto por fornecedor
SELECT id_fornecedor, count(id_produto) from produto group by id_fornecedor

-- 11 A média de preços dos produtos de todos os produtos
SELECT id_fornecedor, AVG(valor) FROM produto WHERE id_fornecedor = 1 GROUP BY id_fornecedor

-- 12 O somatorio dos preços de todos os produtos
SELECT sum(valor) from produto

-- 13 O nome do produto e o preço somente do produto mais caro
SELECT nome_produto, valor FROM produto ORDER BY valor DESC limit 1

-- 14 O nome do produto e o preço somente do produto mais barato
SELECT nome_produto, valor FROM produto ORDER BY valor ASC limit 1

-- 15 A media de preço de todos os produtos
SELECT  AVG(valor) FROM produto 

-- 16 Quantidade de transportadora
SELECT count(id_transportadora) FROM transportadora 

-- 17 A média do valor de todos os pedidos
SELECT avg(valor) FROM pedido

-- 18. O somatório do valor do pedido agrupado por vendedor
SELECT id_cliente, sum(valor) from pedido group by id_cliente

-- 19 O somatório do valor pedido agrupado por vendedor
SELECT id_vendedor, sum(valor) FROM pedido group by id_vendedor

-- 20 O somatorio do valor do pedido agrupado por transportadora
SELECT id_transportadora, sum(valor) from pedido group by id_transportadora

-- 21 O somatorio do valor do pedido agrupado pela data
SELECT data_pedido, sum(valor) FROM pedido group by data_pedido 

-- 22 O somatório do valor do pedido agrupado por cliente, vendedor e transportadora
SELECT id_cliente,id_vendedor, id_transportadora, sum(valor) FROM pedido GROUP BY id_cliente, id_vendedor, id_transportadora

-- 23 O somatório do valor do pedido que esteja entre 01/04/2008 e 10/12/2009 e que se maior do que 200
SELECT sum(valor) FROM pedido WHERE data_pedido BETWEEN '2008-04-01' AND '2009-12-10' and valor > 200

-- 24 A media do valor do pedido do vendedor Andre
SELECT AVG(valor) FROM 	pedido WHERE id_vendedor = 1

-- 25 A media do valor do pedido da cliente Jéssica
SELECT AVG(valor)FROM pedido WHERE id_cliente = 15

-- 26 A quantidade de pedidos transportados pela transportadora BS. Transportes
SELECT count(id_pedido) FROM pedido WHERE id_transportadora = 1
	
-- 27 A quantidade de pedidos agrupados por vendedor
SELECT id_vendedor, COUNT(id_pedido) from pedido group by id_vendedor

-- 28 A quantidade de pedidos agrupados por cliente
SELECT id_cliente, count (id_pedido) FROM pedido GROUP BY id_cliente

-- 29 A quantidade de pedidos entre 15/04/2008 e 25/04/2008
SELECT count(id_pedido) from pedido where data_pedido between '2008-04-15' and '2008-04-25';

-- 30 A quantidade de pedidos que o valor seja maior que 1.000
SELECT count(id_pedido) FROM pedido WHERE valor > 1000

-- 31 A quantidade de microcomputadorees vendida
SELECT sum(quantidade) FROM pedido_produto WHERE id_produto = 1

-- 32 A quantidade de produtos vendida agrupado por produto.
SELECT id_produto, SUM(quantidade) FROM pedido_produto GROUP BY id_produto

-- 33 O somatório do valor dos produtos dos pedidos, agrupado por pedido:
SELECT * FROM pedido_produto
SELECT id_pedido, sum(valor_unitario) FROM pedido_produto group by id_pedido

--34 A quantidade de produtos agrupados por pedido
SELECT id_pedido, sum(quantidade) FROM pedido_produto group by id_pedido

-- 35 O somatório do valor total de todos os produtos do pedido
SELECT  sum(valor_unitario) FROM pedido_produto 

-- 36 A média dos produtos do pedido 6
SELECT avg(valor_unitario) FROM pedido_produto WHERE id_pedido = 6

-- 37 O valor do maior produto do pedido
SELECT max(valor_unitario) FROM pedido_produto

-- 38 O valor do menor produto do pedido
SELECT MIN(valor_unitario) FROM pedido_produto

-- 39 O somatório da quantidade de produtos por pedido
SELECT id_pedido, sum(quantidade) FROM pedido_produto GROUP BY id_pedido order by id_pedido asc

-- 40 O somatório da quantidadee de todos os produtos do pedido
SELECT 	sum(valor_unitario) FROM pedido_produto 