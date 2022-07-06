SELECT DISTINCT
	pes.nome
FROM
	prod,
	diretor AS d,
	autor AS a,
	partic AS par,
	pessoa AS pes
WHERE
	prod.id_prod = d.id_prod
	AND prod.id_prod = a.id_prod
	AND prod.id_prod = par.id_prod
	AND (par.categoria = 'actor' OR par.categoria = 'actress')
	AND d.id_pessoa = a.id_pessoa
	AND a.id_pessoa = par.id_pessoa
	AND d.id_pessoa = pes.id_pessoa
ORDER BY 
	pes.nome