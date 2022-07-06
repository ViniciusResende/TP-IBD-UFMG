SELECT
  pes.nome
FROM
  prod,
  partic AS par,
  pessoa AS pes
WHERE
	prod.id_prod = par.id_prod
	AND par.id_pessoa = pes.id_pessoa
	AND pes.id_pessoa NOT IN (
    SELECT
      par.id_pessoa
    FROM
      prod,
      partic AS par
    WHERE
      prod.id_prod = par.id_prod
      AND prod.tipo_prod = 'tvSeries'
  )
  AND prod.avaliacao > 8.5
  AND prod.tipo_prod = 'movie'
  AND prod.ano_prod BETWEEN 1980 AND 1989
ORDER BY
  pes.ano_nasc DESC