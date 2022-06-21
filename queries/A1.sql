SELECT nome_completo
FROM
  pessoa as p
  JOIN pessoa_regiao AS pr ON p.id_pessoa = pr.id_pessoa
  JOIN regiao_con AS rc ON pr.id_regiao = rc.id_regiao
WHERE
  nome_regiao = 'Equipe olímpica de refugiados'