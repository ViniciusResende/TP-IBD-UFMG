SELECT
  rc.con,
  rc.nome_regiao,
  ar.quant_atletas
FROM
  regiao_con AS rc
  JOIN (
    SELECT
      id_regiao,
      COUNT(id_regiao) AS quant_atletas
    FROM
      pessoa_regiao
    GROUP BY
      id_regiao
    ORDER BY
      quant_atletas DESC
    LIMIT
      5
  ) AS ar ON rc.id_regiao = ar.id_regiao