SELECT
	prod.ano_prod,
	(AVG(prod.ano_prod) - AVG(pes.ano_nasc)) AS age_avg
FROM
	prod,
	conhecido_por AS cp,
	profissao AS prof,
	pessoa AS pes
WHERE
	prod.id_prod = cp.id_prod
	AND cp.id_pessoa = prof.id_pessoa
	AND prof.id_pessoa = pes.id_pessoa
	AND (prof.prof = 'actor' OR prof.prof = 'actress')
GROUP BY
	prod.ano_prod
ORDER BY 
	prod.ano_prod
