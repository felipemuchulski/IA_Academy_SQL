-- Exercícios - comandos adicionais

-- 1 O nome do cliente e somente o mês de nascimento. Caso a data de nascimento não esteja preenchida mostrar a mensagem "Não informado"
select 
	nome,
	coalesce(EXTRACT(month from data_nascimento), 0)
FROM 
	cliente

-- 2 O nome do cliente e somente o nome do mês de nascimento (Janeiro, Fevereiro etc). Caso a data de nascimento não esteja preenchida, mostrar a mensagem 'Não informado'
SELECT 
	nome,
	case extract(month from data_nascimento)
	when 1 then 'Janeiro'
	when 2 then 'Fevereiro'
	when 3 then 'Março'
	when 4 then 'Abril'
	when 5 then 'Maio'
	when 6 then 'Junho'
	when 7 then 'Julho'
	when 8 then 'Agosto'
	when 9 then 'Setembro'
	when 10 then 'Outubro'
	when 11 then 'Novembro'
	when 12 then 'Novembro'
else 'Não informado'
	end as mes
FROM 
	cliente


-- 3. O nome do cliente e somente o ano de nascimento. Caso a data de nascimento não esteja preenchida mostrar a mensagem “Não informado”.
SELECT 
	nome,
	coalesce(EXTRACT(year from data_nascimento), 0)
FROM 
	cliente

-- 4. O caractere 5 até o caractere 10 de todos os municípios.
SELECT 
	nome_municipio, substring(nome_municipio from 5 for 5) 
FROM 
	municipio
-- 5. O nome de todos os municípios em letras maiúsculas.
SELECT
	nome_municipio,
	UPPER(nome_municipio)
FROM 
	municipio
-- 6. O nome do cliente e o gênero. Caso seja M mostrar “Masculino”, senão mostrar “Feminino”.
SELECT 
	nome,
	CASE genero
	when 'M' then 'Masculino'
	when 'F' then 'Feminino'
	else 'Outros'
	end genero
FROM 
	cliente	
 
-- 7. O nome do produto e o valor. Caso o valor seja maior do que R$ 500,00 mostrar a mensagem “Acima de 500”, caso contrário, mostrar a mensagem “Abaixo de 500”.
SELECT 
	nome_produto,
	valor,
	case 
	 when valor >= 500 then 'Acima ou igual 500'
	else 'Abaixo de 500'
	end valor
FROM 
	produto

