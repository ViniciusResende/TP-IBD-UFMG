SELECT
	prod.titulo_principal,
	prod.ano_prod
FROM
	prod,
	partic AS par,
	pessoa AS pes
WHERE
	prod.id_prod = par.id_prod
	AND par.id_pessoa = pes.id_pessoa
	AND pes.nome = 'Dan Aykroyd'
	AND prod.avaliacao >= 7
ORDER BY 
	prod.avaliacao DESC