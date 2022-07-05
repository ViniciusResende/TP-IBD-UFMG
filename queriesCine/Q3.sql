SELECT 
	m.titulo_principal,
	m.ano_prod,
	m.tempo_minutos
FROM 
	prod AS m,
	partic AS par,
	pessoa AS pes
WHERE
	m.id_prod = par.id_prod
	AND par.id_pessoa = pes.id_pessoa
	AND m.tipo_prod = 'movie'
	AND pes.nome = 'Tom Hanks'
	AND m.ano_prod BETWEEN 1990 AND 1999