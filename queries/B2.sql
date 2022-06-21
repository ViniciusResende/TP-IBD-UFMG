SELECT
  rc.con,
  rc.nome_regiao
FROM
  regiao_con AS rc
WHERE
  rc.id_regiao IN (
    SELECT
      id_regiao
    FROM
      (
        SELECT
          id_regiao,
          COUNT(id_regiao) as x
        FROM
          pessoa_regiao
        GROUP BY
          id_regiao
        ORDER BY
          X DESC
        LIMIT
          5
      )
  )  
