CREATE VIEW actors AS
SELECT
	pes.*,
	prod.titulo_principal,
	prod.ano_prod
FROM
	prod,
	partic AS par,
	pessoa AS pes,
	profissao AS prof
WHERE
	prod.id_prod = par.id_prod
	AND par.id_pessoa = pes.id_pessoa
	AND pes.id_pessoa = prof.id_pessoa
	AND (par.categoria = 'actor' OR par.categoria = 'actress')
	AND (prof.prof = 'actor' OR prof.prof = 'actress')