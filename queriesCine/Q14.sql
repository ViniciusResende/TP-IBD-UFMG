SELECT
	prod.titulo_principal,
	prod.ano_prod
FROM
	prod,
	conhecido_por AS cp,
	pessoa AS pes
WHERE
	prod.id_prod = cp.id_prod
	AND cp.id_pessoa = pes.id_pessoa
	AND pes.nome = 'Dan Aykroyd'
	AND prod.avaliacao >= 7
ORDER BY 
	prod.avaliacao DESC