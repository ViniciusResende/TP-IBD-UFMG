SELECT
	prod.titulo_principal,
	prod.tempo_minutos
FROM
	prod
WHERE
	prod.tipo_prod = 'movie'
	AND prod.tempo_minutos IS NOT NULL
ORDER BY
	prod.tempo_minutos DESC
LIMIT 1