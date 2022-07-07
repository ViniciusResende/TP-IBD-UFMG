-- Insere uma nova pessoa
INSERT INTO 
	pessoa (nome, ano_nasc, ano_morte, id_pessoa)
VALUES 
	('O tahl do Vinicin', 2003, NULL, 'tb3012390')
	
-- Encontrar o ID de um filme famoso
SELECT 
	id_prod,
	titulo_principal
FROM 
	prod
WHERE
	titulo_principal LIKE '%Back to the Future%'
	
-- Inserir a participação dos dois IDs no filme procurado
INSERT INTO 
	partic
VALUES 
	('tt0096874', 'tb3012390', 11, 'actor', 'actor', 'Carrão Tech Brabo')
	
-- Visualizar o resultado    
SELECT 
	*
FROM
	prod,
	partic AS par,
	pessoa AS pes
WHERE 
	prod.id_prod = par.id_prod
	AND par.id_pessoa = pes.id_pessoa
	AND pes.nome = 'O tahl do Vinicin'