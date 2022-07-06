SELECT
	prod.titulo_principal,
	prod.ano_prod
FROM
	prod,
	episodio AS ep
WHERE
	prod.id_prod = ep.id_prod_principal
	AND (prod.tipo_prod = 'tvSeries' OR prod.tipo_prod = 'tvMiniSeries')
GROUP BY
	prod.id_prod
ORDER BY 
	COUNT(prod.id_prod) ASC
LIMIT 1