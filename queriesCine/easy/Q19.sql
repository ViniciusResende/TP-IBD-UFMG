SELECT
	prod.ano_prod,
	COUNT(*) AS quant
FROM
	prod,
	genero AS ge
WHERE
	prod.id_prod = ge.id_prod
	AND prod.tipo_prod = 'movie'
	AND ge.genero = 'War'
	AND prod.ano_prod BETWEEN 1980 AND 1989
GROUP BY
	prod.ano_prod
ORDER BY
	quant DESC