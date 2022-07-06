SELECT
	pes.nome
FROM
	prod,
	partic AS par,
	profissao AS prof,
	pessoa AS pes
WHERE
	prod.id_prod = par.id_prod
	AND par.id_pessoa = prof.id_pessoa
	AND prof.id_pessoa = pes.id_pessoa
	AND (prof.prof = 'actor' OR prof.prof = 'actress')
GROUP BY
	pes.nome
ORDER BY 
	COUNT(*) DESC
LIMIT 1
