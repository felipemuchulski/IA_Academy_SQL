-- Exercicios procedure
-- Crie um stored procedure que receba como parâmetro o ID do produto e o percentual de aumento, e reajuste o preço somente deste produto de acordo com 
-- o valor passado como parâmetro
CREATE OR REPLACE PROCEDURE reajusta_pedido(idp INTEGER, percentual FLOAT) LANGUAGE SQL AS 
$$
  UPDATE produto SET valor = valor + ((valor * percentual) / 100) WHERE id_produto = idp;
$$;

-- Crie uma stored procedure que receba como parâmetro o ID do produto e exclua da base de dados somente o produto com o ID correspondente
CREATE OR REPLACE PROCEDURE deleta_registro(idp INTEGER) LANGUAGE SQL AS
$$
	DELETE FROM CASCADE produto WHERE id_produto = idp;
$$;