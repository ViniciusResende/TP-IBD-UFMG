-- SELECT
--   DISTINCT nome_cidade
-- FROM
--   cidade AS c
--   JOIN jogos_cidade AS jc ON c.id_cidade = jc.id_cidade
-- WHERE
--   c.id_cidade IN (
--     SELECT
--       id_cidade
--     FROM
--       (
--         SELECT
--           id_cidade,
--           COUNT(id_cidade) AS games_hosted
--         FROM
--           jogos_cidade
--         GROUP BY
--           id_cidade
--         HAVING
--           games_hosted > 1
--       )
--   )
SELECT
  nome_cidade,
  nome_pais
FROM
  cidade AS c
WHERE
  c.id_cidade IN (
    SELECT
      id_cidade
    FROM
      (
        SELECT
          id_cidade,
          COUNT(id_cidade) AS games_hosted
        FROM
          jogos_cidade
        GROUP BY
          id_cidade
      )
    WHERE
      games_hosted > 1
  )