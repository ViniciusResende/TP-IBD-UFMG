CREATE VIEW directors AS
SELECT
	prod.id_prod,
	prod.titulo_principal,
	prod.ano_prod,
	pes.nome
FROM
	prod,
	diretor AS d,
	pessoa AS pes
WHERE
	prod.id_prod = d.id_prod
	AND d.id_pessoa = pes.id_pessoa 