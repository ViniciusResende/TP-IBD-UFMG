SELECT 
	p.titulo_principal,
	p.ano_prod
FROM prod AS p
WHERE 
	p.tipo_prod = 'movie' 
	AND p.ano_prod = 1939