-- Exercícios de consulta simples
-- 1. Somente o nome de todos os vendedores em ordem alfabética
SELECT * FROM vendedor ORDER BY nome_vendedor ASC;

-- 2. Os produtos que o preço seja maior que 200,00 em ordem crescente 
SELECT * FROM produto WHERE valor > 200 ORDER BY valor ASC;

-- 3. O nome do produto, o preço e o preço reajustado em 10%, ordenado pelo nome do produto
SELECT nome_produto, valor, valor + (valor * 10) / 100 as Reajuste FROM produto;

-- 4. Os munícipios do Rio Grande do Sul.
SELECT nome_municipio FROM municipio WHERE id_uf = 6

-- 5. Os pedidos entre 10/04/2008 e 25/04/2008 ordenado pelo valor
SELECT * FROM pedido WHERE data_pedido BETWEEN '2008-04-10' AND '2008-04-25' ORDER BY valor ASC;

-- 6. Os pedidos que o valor esteja entre R$1.000,00 e R$1.500,00 
SELECT * FROM pedido WHERE valor BETWEEN 1000 AND 1500;

-- 7. OS pedidos que o valor não esteja entre R$ 100,00 e R$500,00
SELECT * FROM pedido WHERE valor NOT BETWEEN 100 AND 500;

-- 8. Os pedidos do vendedor André ordenado pelo valor em ordem decrescente;
SELECT * FROM pedido WHERE id_vendedor = 1 ORDER BY valor DESC;

-- 9. Os pedidos do cliente Felipe ordenado pelo valor em ordem crescente;
SELECT * FROM pedido WHERE id_cliente = 1 ORDER BY valor ASC;

-- 10. Os pedidos da cliente Jessica que foram feitos pelo vendedor André:
SELECT * FROM pedido WHERE id_cliente = 15 AND id_vendedor = 1;

-- 11. Os pedidos que foram transportados pela transportada União Transportes
SELECT * FROM pedido WHERE id_transportadora = 2;

-- 12. Os pedidos feitos pela vendedora Maria ou pela vendedora Aline.
SELECT * FROM pedido WHERE id_vendedor = 5 OR id_vendedor = 7;

-- 13. Os clientes que moram em União da Vitória ou Porto União.
SELECT * FROM cliente WHERE id_municipio = 1 or id_municipio = 2;

-- 14. Os clientes que não moram em União Vitoria e nem em Porto União
SELECT * FROM cliente WHERE id_municipio <> 1 and id_municipio <> 2;

-- 15. OS clientes que não informaram o logradouro
SELECT * FROM cliente WHERE logradouro IS 'NULL';

-- 16. Os clientes que moram em avenidas
SELECT * FROM cliente  WHERE logradouro LIKE 'AV%';

-- 17. Os vendedores que o nome começa com a letra S.
SELECT * FROM vendedor WHERE nome_vendedor LIKE 'S%';

-- 18. Os vendedores que o nome termina com a letra A
SELECT * FROM vendedor WHERE nome_vendedor LIKE '%a';

-- 19. OS vendedores que o nome não começa com a letra A
SELECT * FROM vendedor WHERE nome_vendedor NOT LIKE 'A%';

-- 20. Os fmunicipios que começam com a Letra P e são de Santa catarina
SELECT * FROM uf
SELECT * FROM municipio WHERE nome_municipio LIKE 'P%' AND id_uf = 1

-- 21 Os fornecedores que informaram o endereço
SELECT * FROM transportadora WHERE logradouro IS NOT NULL

-- 22 Os itens do pedido 01
SELECT * FROM pedido_produto WHERE id_pedido = 1;

-- 23. Os itens do pedido 06 ou do pedido 10
SELECT * FROM pedido_produto WHERE id_pedido = 6 or id_produto = 10;

