SELECT
	pa.titulo_alt,
	prod.titulo_principal
FROM
	prod,
	prod_alt as pa
WHERE
	prod.id_prod = pa.id_prod
	AND pa.idioma = 'pt'
	AND prod.ano_prod >= 1980
	AND prod.tipo_prod = 'movie'