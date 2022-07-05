SELECT
	serie.titulo_principal,
	serie.ano_prod,
	serie.ano_fim
FROM
	prod AS serie
WHERE
	serie.tipo_prod = 'tvSeries'
	AND serie.avaliacao > 8.5
ORDER BY
	serie.avaliacao DESC