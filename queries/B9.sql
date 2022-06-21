SELECT
  rc.id_regiao,
  rc.con
FROM
  regiao_con AS rc
WHERE
  rc.id_regiao NOT IN (
    SELECT
      rc.id_regiao
    FROM
      regiao_con AS rc
      JOIN pessoa_regiao AS pr ON rc.id_regiao = pr.id_regiao
      JOIN pessoa AS p ON pr.id_pessoa = p.id_pessoa
      JOIN jogos_competidor AS jc ON p.id_pessoa = jc.id_pessoa
      JOIN competidor_evento AS ce ON jc.id_competidor = ce.id_competidor
      JOIN medalha as m ON ce.id_medalha = m.id_medalha
    WHERE
      m.id_medalha <> 4
  )
  ORDER BY
  	rc.con