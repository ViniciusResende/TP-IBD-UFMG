SELECT
	AVG(prod.avaliacao) AS media
FROM
	prod,
	diretor AS dir,
	pessoa AS pes
WHERE
	prod.id_prod = dir.id_prod
	AND dir.id_pessoa = pes.id_pessoa
	AND pes.nome = 'Steven Spielberg'
ORDER BY
	media DESC
	