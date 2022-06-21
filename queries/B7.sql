SELECT
  j.ano_jogos,
  COUNT(j.id_jogos)
FROM
  jogos AS j
  JOIN (
    SELECT
      jc.id_jogos
    FROM
      regiao_con as rc
      JOIN pessoa_regiao AS pr ON rc.id_regiao = pr.id_regiao
      JOIN pessoa as p ON pr.id_pessoa = p.id_pessoa
      JOIN jogos_competidor AS jc ON p.id_pessoa = jc.id_pessoa
      JOIN competidor_evento AS ce ON jc.id_competidor = ce.id_competidor
      JOIN medalha AS m ON ce.id_medalha = m.id_medalha
    WHERE
      m.id_medalha <> 4
      AND rc.nome_regiao = 'Brasil'
  ) as x ON x.id_jogos = j.id_jogos
  GROUP BY j.id_jogos
  ORDER BY j.ano_jogos