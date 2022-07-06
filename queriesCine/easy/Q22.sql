SELECT
	prod.tipo_prod, 
	gen.genero,
	COUNT (*) AS quant
FROM
	prod,
	genero AS gen
WHERE
	prod.id_prod = gen.id_prod
GROUP BY
	prod.tipo_prod, 
	gen.genero
ORDER BY 
	quant DESC