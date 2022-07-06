SELECT
	ge.genero,
	COUNT(ge.id_prod) AS quant
FROM
	genero AS ge
GROUP BY
	ge.genero
HAVING
	COUNT(ge.id_prod) > 100000
ORDER BY
	quant DESC