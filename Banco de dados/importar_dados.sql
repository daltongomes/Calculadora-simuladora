CREATE DATABASE teste_csv;

USE teste_csv;

CREATE TABLE usuarios(
	nome_usuario VARCHAR(200) NOT NULL,
	ativo BIT NOT NULL, 
	data_nascimento DATETIME NOT NULL,
);

BULK INSERT usuarios
FROM 'C:\Users\dalto\OneDrive\Documentos\SQL Server Management Studio\teste.csv'
WITH (FIELDTERMINATOR = ',', ROWTERMINATOR = '\n');

SELECT * FROM usuarios

-- BIT
-- 0 = FALSO OU NÃO
-- 1 = VERDADEIRO OU SIM