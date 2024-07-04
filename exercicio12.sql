-- EXERCICIOS

-- Crie uma função que receba como parâmetro o ID do pedido e retorne o valor total deste pedido
-- CREATE OR REPLACE serve para alterarmos valores dentro da função e não parâmetros
CREATE OR REPLACE FUNCTION get_valor_pedido(idp INTEGER) RETURNS VARCHAR(20) LANGUAGE plpgsql AS
$$
BEGIN
	RETURN (SELECT formata_moeda(pdd.valor) FROM pedido AS pdd WHERE pdd.id_pedido = idp);
END;
$$;

SELECT get_nome_by_id(id_cliente), get_valor_pedido(id_pedido) FROM pedido

-- Crie uma função chamada "maior", que quando executada retorne o pedido com o maior valor
CREATE OR REPLACE FUNCTION get_maior_pedido() RETURNS INTEGER LANGUAGE plpgsql AS
$$
BEGIN
	RETURN (SELECT id_pedido FROM pedido WHERE valor = (SELECT max(valor) FROM pedido)); 
END;
$$;

SELECT get_maior_pedido()
SELECT * FROM pedido 