SELECT
	AVG(prod.avaliacao) AS media
FROM
	prod,
	partic AS par,
	pessoa AS pes
WHERE
	prod.id_prod = par.id_prod
	AND par.id_pessoa = pes.id_pessoa
	AND pes.nome = 'Steven Spielberg'
ORDER BY
	media DESC
	