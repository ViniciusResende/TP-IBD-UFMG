SELECT
	prod.titulo_principal,
	prod.ano_prod
FROM
	prod,
	partic AS par
WHERE
	prod.id_prod = par.id_prod
GROUP BY
	prod.id_prod
ORDER BY 
	COUNT(*) DESC
LIMIT 1
