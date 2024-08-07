-- Exercicios
-- Crie um novo papel chamado "atendente"
CREATE ROLE atendente;

-- Defina somente permissões para o novo papel poder selecionar e incluis novos pedidos (table pedido, table pedido_produto). O restante deve estar bloqueado
GRANT SELECT, INSERT ON pedido, pedido_produto TO atendente WITH grant option;

-- Crie um novo usuário associado ao novo papel
CREATE ROLE teste LOGIN PASSWORD 'teste' IN ROLE atendente
-- Realize testes para veirifcar se as permissões foram aplicadas corretamente.
SELECT * FROM pedido

SELECT * FROM cliente -- erro ao pesquisar



