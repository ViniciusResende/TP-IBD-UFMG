SELECT
	COUNT(par.id_pessoa) AS quant_pessoa
FROM
	prod,
	partic AS par
WHERE
	prod.id_prod = par.id_prod
	AND prod.titulo_principal = 'Cosmos'