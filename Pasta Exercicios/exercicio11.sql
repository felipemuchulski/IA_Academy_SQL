-- Exercícios índices



-- 1. Adicione índices nas seguintes tabelas e campos

-- a. Pedido – data do pedido
CREATE INDEX idx_pdd_date ON pedido(data_pedido);

-- b. Produto – nome
CREATE INDEX idx_pdt_nome ON produto(nome_produto)

