-- Exercicios Trigger
-- Crie uma tabela chamada PEDIDOS_APAGADOS
CREATE TABLE pedidos_apagados (
	id_apagado INTEGER NOT NULL,
	data_delete TIMESTAMP NOT NULL
) 

-- Função corrigida
CREATE OR REPLACE FUNCTION delete_log() RETURNS TRIGGER LANGUAGE PLPGSQL AS $$
BEGIN
    INSERT INTO pedidos_apagados(id_apagado, data_delete) VALUES (OLD.id_pedido, current_timestamp); -- Usando OLD.id_pedido
    RETURN OLD; -- Retornando OLD
END;
$$;

DROP TRIGGER log_pedido_trigger ON pedido

-- Criação do trigger
CREATE TRIGGER pedido_delete_trigger
AFTER DELETE ON pedido
FOR EACH ROW
EXECUTE FUNCTION delete_log();

DROP TABLE pedidos_apagados

-- Inserção do pedido (opcional, se você ainda precisar inserir o pedido)
INSERT INTO pedido (id_pedido, data_pedido, valor, id_cliente, id_transportadora, id_vendedor) 
VALUES (16, '2008-04-25', 200, 11, null, 5);

-- Exclusão do pedido
DELETE FROM pedido WHERE id_pedido = 16;

-- Selecionar para ver se o valor foi adicionado
SELECT * FROM pedidos_apagados


-- > Código da aula
CREATE TABLE pedidos_apagados (
	id_pedido  INTEGER NOT NULL,
	id_cliente INTEGER NOT NULL,
	id_transportadora INTEGER,
	id_vendedor INTEGER NOT NULL,
	data_pedido DATE NOT NULL,
	valor FLOAT not null,
	data_apagado DATE not null
)

CREATE OR REPLACE FUNCTION pedido_log() RETURNS TRIGGER LANGUAGE plpgsql as
$$
	begin
		INSERT INTO pedidos_apagados(id_pedido, id_cliente, id_transportadora, id_vendedor, data_pedido, valor, data_apagado)
	VALUES(old.id_pedido, old.id_cliente, old.id_transportadora, old.id_vendedor, old.data_pedido, old.valor, current_timestamp);
	return old;
	end;
$$;

CREATE OR REPLACE TRIGGER log_pedido_trigger BEFORE DELETE ON pedido FOR EACH ROW EXECUTE PROCEDURE pedido_log()

SELECT id_pedido FROM pedido WHERE id_pedido NOT IN (SELECT id_pedido  FROM pedido_produto)
DELETE FROM pedido_produto WHERE id_pedido = 15
	
DELETE FROM pedido WHERE id_pedido = 15

SELECT * FROM pedidos_apagados

