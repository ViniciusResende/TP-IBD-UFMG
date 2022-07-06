SELECT
	prod.titulo_principal,
	prod.ano_prod
FROM
	prod,
	diretor AS dir
WHERE
	prod.id_prod = dir.id_prod
GROUP BY
	prod.id_prod
ORDER BY 
	COUNT(*) DESC
LIMIT 1