SELECT
	prod.titulo_principal,
	prod.ano_prod
FROM
	genero AS g,
	prod,
	partic AS par,
	pessoa AS pes
WHERE
	g.id_prod = prod.id_prod
	AND prod.id_prod = par.id_prod
	AND par.id_pessoa = pes.id_pessoa
	AND (g.genero = 'Action' OR g.genero = 'Adventure')
	AND (par.categoria = 'actor' OR par.categoria = 'actress')
	AND pes.nome = 'Bruce Willis'