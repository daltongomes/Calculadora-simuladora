-- Comando para criar o banco de dados
CREATE DATABASE calculadora_simuladora;

-- Utilizar o banco de dados
USE calculadora_simuladora;

-- Usuário Simulação
	-- Número da simulação
	-- Nome da pessoa
	-- Descrição da simulação
	-- Data da simulação
	CREATE TABLE usuario_simulacao (
	id_simulacao INT NOT NULL,
	nome_pessoa VARCHAR(100) NOT NULL,
	descricao VARCHAR(200),
	data_simulacao DATE NOT NULL
);





-- id_simulacao INT IDENTITY PRIMARY KEY
-- Simulação calculadora juros
	-- Número da simulação
	-- Valor Inicial
	-- Valor do aporte do mês
	-- Taxa de juros
	-- Quantidade de tempo
	CREATE TABLE simulacao_calculadora_juros(
		id_simulacao INT IDENTITY PRIMARY KEY, 
		valor_inicial DECIMAL(15,2) NOT NULL,
		valor_aporte_mensal DECIMAL(15,2) NOT NULL,
		taxa_juros DECIMAL(10,4) NOT NULL,
		quantidade_tempo INT NOT NULL
	);
-- SELECIONAR TABELAS
	SELECT * FROM usuario_simulacao;
-- Selecionar campos específicos
	SELECT nome_pessoa, data_simulacao FROM usuario_simulacao;
	SELECT * FROM simulacao_calculadora_juros; 

-- INSERIR DADOS NA TABELA 
	INSERT INTO usuario_simulacao VALUES(4,'Dalton Gomes','Investimentos',GETDATE());
-- Inserir dados passando a ordem das colunas                                                                                       AAAA-MM-DD          
	INSERT INTO usuario_simulacao (id_simulacao, nome_pessoa, descricao, data_simulacao) VALUES (,'Dalton Gomes','Investimentos', '2023-02-08');


	INSERT INTO simulacao_calculadora_juros VALUES(12000.00, 250.00, 16.0, 36);

-- ATUALIZAR UMA TABELA  
UPDATE usuario_simulacao SET data_simulacao = '2023-02-07' WHERE id_simulacao = 2;
-- ATUALIZANDO TABELA ONDE O REGISTRO FOR id_simulacao =4
UPDATE usuario_simulacao SET data_simulacao = '2023-02-08', descricao = 'Carro do sonho' WHERE id_simulacao = 4; 
-- ATUALIZANDO TABELA ONDE O REGISTRO FOR id_simulacao 1,2,3
UPDATE usuario_simulacao SET id_simulacao = 2 WHERE id_simulacao = 3;
-- ATUALIZANDO A TABELA TODA
UPDATE usuario_simulacao SET nome_pessoa = 'Dalton Gomes'
-- ATUALIZANDO TABELA ONDE O REGISTRO FOR id_simulacao 1,2
UPDATE usuario_simulacao SET nome_pessoa = 'Xerath' WHERE id_simulacao IN(1,2); 

-- DELETANDO A TABELA 
	DROP TABLE usuario_simulacao;
	DROP TABLE simulacao_calculadora_juros;
-- DELETAR REGISTRO DA TABELA
	DELETE FROM simulacao_calculadora_juros WHERE id_simulacao = 2; 
	DELETE FROM usuario_simulacao WHERE id_simulacao = 2;

-- Inserir novo registro
-- Atualizar a data de simulacao do registro
-- Selecionar apenas a data simulacao e nome da pessoa
-- Deletar o registro 


-- SELECIONAR TODAS AS COLUNAS DE TODAS AS TABELAS COM JOIN 
SELECT *, a.id_simulacao
	FROM usuario_simulacao AS a
	JOIN simulacao_calculadora_juros AS b -- JOIN é para juntar
	ON   a.id_simulacao = b.id_simulacao   -- ON é para dizer quais colunas se interligam 
	WHERE b.id_simulacao = 4;
-- SELECIONAR COLUNAS QUE EU QUERO COM JOIN 
SELECT b.id_simulacao
       ,a.nome_pessoa
	   ,a.descricao
	   ,a.data_simulacao
	   ,b.valor_inicial
	   ,b.valor_aporte_mensal
	   ,b.quantidade_tempo
	FROM usuario_simulacao AS a
	JOIN simulacao_calculadora_juros AS b -- JOIN é para juntar
	ON   a.id_simulacao = b.id_simulacao   -- ON é para dizer quais colunas se interligam 
	WHERE b.id_simulacao = 1;

-- RENOMEAR COLUNA / TABELA.COLUNA, NOVO NOME COLUNA, COLUNA.
	EXEC sp_rename 'simulacao_calculador_juros.id_simulação','id_simulacao','column';
-- RENOMEAR TABELA E NOVO NOME DA TABELA
	EXEC sp_rename 'simulacao_calculador_juros','simulacao_calculadora_juros';