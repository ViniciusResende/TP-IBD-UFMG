SELECT
	ge.genero,
	SUM(prod.num_votos) AS quant
FROM
	prod,
	genero AS ge
WHERE
	prod.id_prod = ge.id_prod
	AND prod.tipo_prod = 'movie'
GROUP BY
	ge.genero
ORDER BY
	quant DESC