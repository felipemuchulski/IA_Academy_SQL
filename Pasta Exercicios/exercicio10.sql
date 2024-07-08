-- Exercícios valores default



-- 1. Adicione valores default na tabela de produtos do pedido

-- a. Quantidade com o valor 1
ALTER TABLE pedido_produto ALTER COLUMN quantidade SET DEFAULT 1

-- b. Valor unitário com o valor 0

ALTER TABLE pedido_produto ALTER COLUMN valor_unitario SET DEFAULT 0

-- 2. Adicione valor default na tabela de produtos
-- a. Valor com o valor 0
ALTER TABLE produto ALTER COLUMN valor SET DEFAULT 0

