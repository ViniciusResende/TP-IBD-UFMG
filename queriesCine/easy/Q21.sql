SELECT
	genero.genero,
	AVG(prod.avaliacao) AS media
FROM
	prod,
	genero
WHERE
	prod.id_prod = genero.id_prod
	AND prod.tipo_prod = 'movie'
GROUP BY
	genero.genero
ORDER BY
	media DESC