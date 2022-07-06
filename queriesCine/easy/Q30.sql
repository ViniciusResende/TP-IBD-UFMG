SELECT
	prod.titulo_principal,
	prod.ano_prod
FROM
	prod,
	autor AS aut
WHERE
	prod.id_prod = aut.id_prod
GROUP BY
	prod.id_prod
ORDER BY 
	COUNT(*) DESC
LIMIT 1