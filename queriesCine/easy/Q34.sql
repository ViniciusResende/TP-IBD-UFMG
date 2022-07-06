SELECT
	par.personagem
FROM
	partic AS par,
	pessoa AS pes
WHERE
	par.id_pessoa = pes.id_pessoa
	AND (par.categoria = 'actor' OR par.categoria = 'actress')
	AND par.personagem IS NOT NULL
GROUP BY
	par.personagem
ORDER BY
	COUNT(*) DESC
LIMIT 1